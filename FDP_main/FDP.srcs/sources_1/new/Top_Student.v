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
    
    // variables for OLED display
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
//    reg signed [12:0] normalized_x_dir;
//    reg signed [12:0] normalized_y_dir;
    reg [12:0] max_val;
    reg [12:0] abs_x;
    reg [12:0] abs_y;
    reg [8:0] user_xpos = 30;
    reg [8:0] user_ypos = 30;
    wire [479:0] user_snake_xpos; 
    wire [479:0] user_snake_ypos;
    wire signed [12:0] user_new_x_vel;
    wire signed [12:0] user_new_y_vel;
    reg [8:0] enemy_xpos = 50;
    reg [8:0] enemy_ypos = 50;
    wire [479:0] enemy_snake_xpos; 
    wire [479:0] enemy_snake_ypos;
    wire signed [12:0] enemy_new_x_vel;
    wire signed [12:0] enemy_new_y_vel;
    wire [7:0] user_size;
    wire [7:0] enemy_size;
    wire vel_changed;
    wire [9:0] debugx, debugy;
    reg game_over;


    // * FOR DEBUGGING 
    reg signed [12:0] x_vel_debug = 0;
    reg signed [12:0] y_vel_debug = 0;

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

    wire clk_25m;
    flexible_clock clk_mod25m(
        .CLOCK(clk),
        .divider(2), 
        .SLOW_CLOCK(clk_25m)
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
    
    wire mouseEnable;
    
    mouse_direction mouse_dir_mod(
        .clk(clk), 
        .mouse_x(mouse_xpos), 
        .mouse_y(mouse_ypos),
        .x_dir(x_dir_wire), 
        .y_dir(y_dir_wire),
        .flag(mouseEnable)
    );

    always @ * begin 
        x_dir = x_dir_wire;
        y_dir = y_dir_wire;
    end
    
    wire directionEnable = (sw[15]) ? ((btnL | btnR | btnU | btnD | btnC)? 1: 0) : 1;
    
    // inst user_worm and enemy_worm
    flexible_snake user_snake(
        .slow_clk(clk400hz), 
        .rst(sw[14]),
        .x_dir(x_dir), 
        .y_dir(y_dir), 
        .xpos(user_xpos), 
        .ypos(user_ypos), 
        .directionEnable(mouseEnable),
        .difficulty(difficulty),
        .food_eaten(0),
        .x_worm_flat(user_snake_xpos), 
        .y_worm_flat(user_snake_ypos), 
        .size(user_size),
        .new_x_vel(user_new_x_vel), 
        .new_y_vel(user_new_y_vel),
        .vel_changed(vel_changed),
        .debugx(),
        .debugy()
    );
    
    flexible_snake enemy_snake(
        .slow_clk(clk400hz), 
        .rst(btnC),
        .x_dir(x_vel_debug), 
        .y_dir(y_vel_debug),
        .xpos(enemy_xpos), 
        .ypos(enemy_ypos), 
        .directionEnable(directionEnable),
        .food_eaten(0),
        .x_worm_flat(enemy_snake_xpos), 
        .y_worm_flat(enemy_snake_ypos), 
        .size(enemy_size),
        .new_x_vel(enemy_new_x_vel), 
        .new_y_vel(enemy_new_y_vel),
        .vel_changed(vel_changed),
        .debugx(),
        .debugy()
    );

    // enemy worm position
    always @(*) begin
        led[15] = mouseEnable;

        led [9:5] = x_dir_wire; // for debugging

        led [4:0]  = y_dir_wire; // for debugging
    end
    
//     update velocity
//     normalization logic for mouse direction input to flexi_snake
//    always @(*) begin
//        // calculate absolute values 
//        abs_x = (x_dir < 0) ? -x_dir : x_dir;
//        abs_y = (y_dir < 0) ? -y_dir : y_dir;
//        // calculate max value
//        max_val = (abs_x > abs_y) ? abs_x : abs_y;
//        // normalize values
//        if (max_val == 0) begin
//            normalized_x_dir = 0;
//            normalized_y_dir = 0;
//        end
//        else begin
//            // TODO: a little unsure about this division here
//            normalized_x_dir = (x_dir * MAX_VEL) / max_val;
//            normalized_y_dir = (y_dir * MAX_VEL) / max_val;
//        end

//    end
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
//    wire [3:0] reg_food_eaten;
//    // Head coordinates for snakes
//    wire [9:0] enemy_head_x0 = 10'd30;  // Placeholder for now
//    wire [9:0] enemy_head_y0 = 10'd30;
//    wire [9:0] enemy_head_x1 = 10'd30;
//    wire [9:0] enemy_head_y1 = 10'd30;
//    wire [9:0] enemy_head_x2 = 10'd30;
//    wire [9:0] enemy_head_y2 = 10'd30;

//    food_and_camera food_mod (
//        .clk(clk),
//        .reset(0), // or use a proper reset
//        .enemywormheadx0(enemy_head_x0),
//        .enemywormheady0(enemy_head_y0),
//        .enemywormheadx1(enemy_head_x1),
//        .enemywormheady1(enemy_head_y1),
//        .enemywormheadx2(enemy_head_x2),
//        .enemywormheady2(enemy_head_y2),
//        .reg_food_eaten(reg_food_eaten)
//    );



    // Inst render_oled
    render_oled render_oled_inst (
        .clk(clk),
        // .clk6p25m(clk6p25m),
        .pixel_index(pixel_index),
        .user_worm_x_flat(user_snake_xpos), // flattened x-coordinates of user worm
        .user_worm_y_flat(user_snake_ypos), // flattened y-coordinates of user worm
        .user_size(user_size), // size of user worm
        .enemy_worm_x_flat(enemy_snake_xpos), // flattened x-coordinates of enemy worm 
        .enemy_worm_y_flat(enemy_snake_ypos), // flattened y-coordinates of enemy worm
        .enemy_size(enemy_size), // size of enemy worm
        .food_x_flat(0), // flattened x-coordinates of food (not used)
        .food_y_flat(0), // flattened y-coordinates of food (not used)

        // output
        .pixel_colour(world_colour), // output pixel color
        .debugx(),
        .debugy()
    );

    // inst menu screen
    menu_screen menu_screen_inst (
        .clk(clk),
        .state(state), 
        .pixel_index(pixel_index),
        .oled_data(menu_colour)
    );

    assign pixel_colour = ( state == GAME ) ? world_colour : menu_colour; 

    
    /*      -------------------
            FSM FOR MENU SCREEN 
            -------------------    */


    // FSM for menu screen
    parameter   START                   = 2'b00, 
                CHOOSE_DIFFICULTY_NORMAL= 2'b01,
                CHOOSE_DIFFICULTY_HARD  = 2'b10,
                GAME                    = 2'b11;
      
    reg [1:0] state = START;
    reg [1:0] nextstate = START;
    reg difficulty; // 0 for normal, 1 for hard

    always @ ( * ) begin
        case (state)
            START:  nextstate = (btnR_debounced) ? CHOOSE_DIFFICULTY_NORMAL: START;

            CHOOSE_DIFFICULTY_NORMAL:   begin
                if (btnD_debounced) 
                    nextstate = CHOOSE_DIFFICULTY_HARD;
                else if (btnC) 
                    nextstate = GAME; 
                else 
                    nextstate = CHOOSE_DIFFICULTY_NORMAL;
                difficulty = 0; 
            end

            CHOOSE_DIFFICULTY_HARD: begin
                if (btnU_debounced) 
                    nextstate = CHOOSE_DIFFICULTY_NORMAL;
                else if (btnC) 
                    nextstate = GAME; 
                else 
                    nextstate = CHOOSE_DIFFICULTY_HARD;
                difficulty = 1; 

            end

            GAME:   nextstate = GAME; // TODO: Game over logic

        endcase
    end

    always @ (posedge clk or posedge sw[13]) begin
        if (sw[13])  // reset
            state <= START;
         
        else
            state <= nextstate;
    end

    // debounce all buttons
    debounce debounce_btnC ( clk, btnC, btnC_debounced );
    debounce debounce_btnU ( clk, btnU, btnU_debounced );
    debounce debounce_btnD ( clk, btnD, btnD_debounced );
    debounce debounce_btnL ( clk, btnL, btnL_debounced );
    debounce debounce_btnR ( clk, btnR, btnR_debounced );



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