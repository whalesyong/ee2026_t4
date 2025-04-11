`timescale 1ns / 1ps

module Top_Student (    input clk,
                        input btnU, btnD, btnC, btnL, btnR,
                        input [15:0] sw,
                        output [7:0]JB,
                        output reg [15:0] led,
                        output [7:0] seg,
                        output [3:0] an, 
                        inout PS2Clk, PS2Data
                    );

    // constant parameters
    parameter MAX_VEL = 5;
    localparam 
        SCREEN_WIDTH  = 499,
        SCREEN_HEIGHT = 499,
        BOUNDARY_OFFSET = 10; // Offset for food placement
    
    // variavles for OLED display
    wire [15:0] pixel_colour; // if rendering in top, set as reg, if in render_oled, set as wire
    wire [15:0] menu_colour; 
    wire [15:0] world_colour; 
    wire [12:0] pixel_index;
    wire frame_beg;
    wire [7:0] pixel_x;   
    wire [7:0] pixel_y;
    PixelToXY converter_mod (
        .pixel_index(pixel_index),
        .x(pixel_x),
        .y(pixel_y)
     );

    //variables for mouse ctrl 
    wire [11:0] mouse_xpos;
    wire [11:0] mouse_ypos;
    wire [3:0] mouse_zpos;
    wire new_event;
    wire left;
    wire right;
    wire middle;
    

    //variables for snake 
    reg signed [12:0]x_dir = 0; 
    reg signed [12:0]y_dir = 0;
    wire signed [12:0] x_dir_wire;
    wire signed [12:0] y_dir_wire;
    reg signed [12:0] normalized_x_dir;
    reg signed [12:0] normalized_y_dir;
    reg [12:0] max_val;
    reg [12:0] abs_x;
    reg [12:0] abs_y;
    reg [8:0] snake_xpos = 30;
    reg [8:0] snake_ypos = 30;
    wire [479:0] user_snake_xpos; 
    wire [479:0] user_snake_ypos;
    wire signed [12:0] snake_new_x_vel;
    wire signed [12:0] snake_new_y_vel;
    wire vel_changed;
    wire [7:0] user_size;
    wire [9:0] debugx, debugy;


    // * FOR DEBUGGING 
    reg signed [12:0] x_vel_debug = 0;
    reg signed [12:0] y_vel_debug=0;

    wire clk6p25m;
    flexible_clock clk_mod_6p25m(
        .CLOCK(clk),
        .divider(8), 
        .SLOW_CLOCK(clk6p25m)
    );

    wire clk400hz; 
    flexible_clock clk_mod_400hz(
        .CLOCK(clk),
        .divider(125000), 
        .SLOW_CLOCK(clk400hz)
    );
    wire clk100hz;
    flexible_clock clk_mod_100hz(
        .CLOCK(clk),
        .divider(500000),
        .SLOW_CLOCK(clk100hz)
    );

    wire clk_25m;
    flexible_clock clk_mod25m(
        .CLOCK(clk),
        .divider(2), 
        .SLOW_CLOCK(clk_25m)
     ); 

    wire clk_1hz; 
    flexible_clock clk_mod1hz(
        .CLOCK(clk),
        .divider(50000000), 
        .SLOW_CLOCK(clk_1hz)
     );

    Oled_Display display_mod (  
        .clk(clk6p25m),
        .reset(0), 
        .frame_begin(frame_beg),
        // .sending_pixels(1),
        // .sample_pixel(1),
        .pixel_index(pixel_index), // output
        .pixel_data(pixel_colour),   
        .cs(JB[0]),
        .sdin(JB[1]),
        .sclk(JB[3]),
        .d_cn(JB[4]),
        .resn(JB[5]), 
        .vccen(JB[6]),
        .pmoden(JB[7])
        );

    MouseCtl mouse (    
        .clk(clk), .rst(0), .value(0), .setx(0), .sety(0), .setmax_x(0), .setmax_y(0), .ps2_clk(PS2Clk), .ps2_data(PS2Data), 
        // outputs
        .xpos(mouse_xpos), .ypos(mouse_ypos), .zpos(mouse_zpos),
        .left(left), .middle(middle), .right(right), .new_event(new_event)
        );
    
    /*
    mouse_direction mouse_dir_mod(
        .clk(clk), 
        .mouse_x(mouse_xpos), 
        .mouse_y(mouse_ypos), 
        .x_dir(x_dir_wire), 
        .y_dir(y_dir_wire)
    );*/

    always @ * begin 
        x_dir = x_dir_wire;
        y_dir = y_dir_wire;
    end
    
    wire directionEnable = (sw[15]) ? ((btnL | btnR | btnU | btnD | btnC)? 1: 0) : 1;
    wire food_eaten;

    // inst user_worm and enemy_worm
    flexible_snake user_snake(
        .slow_clk(clk400hz), 
        .rst(0),
        .x_dir(x_vel_debug), 
        .y_dir(y_vel_debug), 
     //   .xpos(snake_xpos), 
        //.ypos(snake_ypos), 
        .directionEnable(directionEnable),
        .food_eaten(food_eaten),
        .x_worm_flat(user_snake_xpos), 
        .y_worm_flat(user_snake_ypos), 
        .size(user_size),
        .new_x_vel(snake_new_x_vel), 
        .new_y_vel(snake_new_y_vel), 
        .vel_changed(vel_changed),
        .debugx(),
        .debugy()
    );

    //define enemy snake and its variables 
    wire [7:0] enemy_size;
    reg signed [12:0] enemy_x_vel;
    reg signed [12:0] enemy_y_vel;
    reg [8:0] enemy_xpos = 30;
    reg [8:0] enemy_ypos = 30;
    wire [479:0] enemy_snake_x_flat; 
    wire [479:0] enemy_snake_y_flat;
    wire signed [12:0] enemy_new_x_vel;
    wire signed [12:0] enemy_new_y_vel;

    always @ (posedge clk_1hz) begin 

        
        if (enemy_xpos < 10 || enemy_xpos > 490) begin
            enemy_x_vel <= -enemy_x_vel;
        end
        if (enemy_ypos < 10 || enemy_ypos > 490) begin
            enemy_y_vel <= -enemy_y_vel;
        end

        // update enemy snake position based on velocity
        enemy_xpos <= enemy_xpos + enemy_x_vel;
        enemy_ypos <= enemy_ypos + enemy_y_vel;
    end
/*
    flexible_snake enemy_snake_1 (
        .slow_clk(clk400hz), 
        .rst(0),
        .x_dir(x_vel_debug),//set enemy snake vel to user's for now  
        .y_dir(y_vel_debug), 
        //.xpos(enemy_xpos), 
        //.ypos(enemy_ypos), 
        .directionEnable(directionEnable),
        .food_eaten(0),
        .x_worm_flat(enemy_snake_x_flat), 
        .y_worm_flat(enemy_snake_y_flat), 
        .size(enemy_size),
        .new_x_vel(enemy_new_x_vel),
        .new_y_vel(enemy_new_y_vel), 
        .vel_changed(), // not used for now
        .debugx(),
        .debugy()
    );
  */  
    wire [9:0] user_worm_x [0:47];
    wire [9:0] user_worm_y [0:47];
    
    
    genvar n;
    generate
        for (n = 0; n < 48; n = n + 1) begin : pack_user_worm_x
            assign user_worm_x[n] = user_snake_xpos[ 10*n + 9 : 10 * n ];
            assign user_worm_y[n] = user_snake_ypos[ 10*n + 9 : 10 * n ];
        end
    endgenerate


    // show the enemy head on the LEDs
    reg [9:0] enemy_head_x;
    reg [9:0] enemy_head_y;



    
    // update velocity
    // normalization logic for mouse direction input to flexi_snake
    always @(*) begin
        // calculate absolute values 
        abs_x = (x_dir < 0) ? -x_dir : x_dir;
        abs_y = (y_dir < 0) ? -y_dir : y_dir;
        // calculate max value
        max_val = (abs_x > abs_y) ? abs_x : abs_y;
        // normalize values
        if (max_val == 0) begin
            normalized_x_dir = 0;
            normalized_y_dir = 0;
        end
        else begin
            // TODO: a little unsure about this division here
            normalized_x_dir = (x_dir * MAX_VEL) / max_val;
            normalized_y_dir = (y_dir * MAX_VEL) / max_val;
        end

    end
        // use mouse input for user_worm
        // use AI for enemy_worm

    // update position of worms

    // update display

    //TODO: for now, render the snake on the screen and in Top_student
    // rendering should be abstracted into a separate module 


    // for debugging 
    always @ (posedge clk400hz) begin 
        // X velocity control
        if (btnL && x_vel_debug > -MAX_VEL) 
            x_vel_debug <= x_vel_debug - 1;
        else if (btnR && x_vel_debug < MAX_VEL) 
            x_vel_debug <= x_vel_debug + 1;
        else if (!btnL && !btnR && x_vel_debug != 0)  // Deceleration
            x_vel_debug <= (x_vel_debug > 0) ? x_vel_debug - 1 : x_vel_debug + 1;

        // Y velocity control
        if (btnU && y_vel_debug > -MAX_VEL) 
            y_vel_debug <= y_vel_debug - 1;
        else if (btnD && y_vel_debug < MAX_VEL)
            y_vel_debug <= y_vel_debug + 1;
        else if (!btnU && !btnD && y_vel_debug != 0)  // Deceleration
            y_vel_debug <= (y_vel_debug > 0) ? y_vel_debug - 1 : y_vel_debug + 1;
        
        if (btnC) begin
            x_vel_debug <= 1;
            y_vel_debug <= 1;
        end

    end


// CAMERA & FOOD wires

    wire[479:0] food_x_flat;
    wire[479:0] food_y_flat;
    // Head coordinates for snakes
    wire [9:0] user_head_x = user_worm_x[user_size-1];  // Extend from 9-bit to 10-bit
    wire [9:0] user_head_y = user_worm_y[user_size-1];
    wire [9:0] enemy_head_x0 = 10'd30;  // Placeholder for now
    wire [9:0] enemy_head_y0 = 10'd30;
    wire [9:0] enemy_head_x1 = 10'd30;
    wire [9:0] enemy_head_y1 = 10'd30;
    wire [9:0] enemy_head_x2 = 10'd30;
    wire [9:0] enemy_head_y2 = 10'd30;

    wire [47:0] user_collisions;
    food_and_camera food_mod (
        .clk(clk100hz),
        .reset(btnC), // or use a proper reset
        .userwormheadx(user_head_x),
        .userwormheady(user_head_y),
        .enemywormheadx0(enemy_head_x0),
        .enemywormheady0(enemy_head_y0),
        .enemywormheadx1(enemy_head_x1),
        .enemywormheady1(enemy_head_y1),
        .enemywormheadx2(enemy_head_x2),
        .enemywormheady2(enemy_head_y2),
        .food_eaten(food_eaten),
        .food_x_flat(food_x_flat), // Flattened food x-coordinates
        .food_y_flat(food_y_flat), // Flattened food y-coordinates
        .user_collisions(user_collisions) 
    );
    

    always @ (*) begin 
        if (sw[14]) 
            led = user_collisions[15:0];
        else begin 
            led[7:0] = user_worm_x[user_size-1][7:0];
            led[15:8] = user_worm_y[user_size-1][7:0];
        end   
    end  



    // Inst render_oled
    render_oled render_oled_inst (
        .clk(clk),
        // .clk6p25m(clk6p25m),
        .pixel_index(pixel_index),
        .user_worm_x_flat(user_snake_xpos), // flattened x-coordinates of user worm
        .user_worm_y_flat(user_snake_ypos), // flattened y-coordinates of user worm
        .user_size(user_size), // size of user worm
        .enemy_worm_x_flat(enemy_snake_x_flat), // flattened x-coordinates of enemy worm (not used)
        .enemy_worm_y_flat(enemy_snake_y_flat), // flattened y-coordinates of enemy worm (not used)
        .enemy_size(enemy_size), // size of enemy worm (not used)
        .food_x_flat(food_x_flat), // flattened x-coordinates of food (not used)
        .food_y_flat(food_y_flat), // flattened y-coordinates of food (not used)
        // output
        .pixel_colour(pixel_colour), // output pixel color,
        .debugx(),
        .debugy()
    );


/*
    // inst menu screen
    menu_screen menu_screen_inst (
        .clk(clk),
        .pixel_index(pixel_index),
        .oled_data(menu_colour)
    ); */

   // assign pixel_colour = menu_colour; // display menu for now,  commented out to not show the menu 

    // debug block for rendering in top
/*
    always @ (posedge clk_25m) begin

        if (pixel_x == debugx + 4 && pixel_y == debugy +4) begin
            pixel_colour <= 16'b11111_111111_11111;
        end
        if (pixel_x > debugx && pixel_x < debugx + 4 && pixel_y > debugy  && pixel_y < debugy + 4) begin
            pixel_colour <= 16'h1111; 
        end
        else begin
            pixel_colour <= 16'b00000_000000_00000;
        end
    end*/
endmodule


module flexible_clock(input CLOCK,input [31:0] divider,output reg SLOW_CLOCK = 0);

    reg [31:0] COUNT = 32'b0000;
    always @ (posedge CLOCK)
    begin
    COUNT <= ( COUNT == divider) ? 0 : COUNT + 1;
    SLOW_CLOCK <= (COUNT == 32'b0000)? ~SLOW_CLOCK : SLOW_CLOCK;
    end
    
endmodule