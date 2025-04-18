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
    parameter MAX_VEL = 3;
    
    // variavles for OLED display
    reg [15:0] pixel_colour;
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
    reg [9:0] snake_xpos = 30;
    reg [9:0] snake_ypos = 30;
    wire [479:0] snake_new_xpos; 
    wire [479:0] snake_new_ypos;
    wire signed [12:0] snake_new_x_vel;
    wire signed [12:0] snake_new_y_vel;
    wire vel_changed;
    wire [7:0] new_size;

    wire directionEnable;


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

    wire clk_25m;
    flexible_clock clk_mod25m(
        .CLOCK(clk),
        .divider(2), 
        .SLOW_CLOCK(clk_25m)
     );
    
    

    Oled_Display display_mod (  .clk(clk6p25m),
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

    MouseCtl mouse (    .clk(clk), .rst(0), .value(0), .setx(0), .sety(0), .setmax_x(0), .setmax_y(0), .ps2_clk(PS2Clk), .ps2_data(PS2Data), 
                        // outputs
                        .xpos(mouse_xpos), .ypos(mouse_ypos), .zpos(mouse_zpos),
                        .left(left), .middle(middle), .right(right), .new_event(new_event));
    
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
    
  
    // CAMERA & FOOD wires
    wire [9:0] cam_offset_x;
    wire [9:0] cam_offset_y;
    wire [3:0] reg_food_eaten;
    wire [15:0] reg_food_location_0, reg_food_location_1, reg_food_location_2, reg_food_location_3;
    wire [15:0] reg_food_location_4, reg_food_location_5, reg_food_location_6, reg_food_location_7;
    // Head coordinates for snakes
    wire [9:0] user_head_x = {1'b0, snake_xpos};  // Extend from 9-bit to 10-bit
    wire [9:0] user_head_y = {1'b0, snake_ypos};
    wire [9:0] enemy_head_x0 = 10'd30;  // Placeholder for now
    wire [9:0] enemy_head_y0 = 10'd30;
    wire [9:0] enemy_head_x1 = 10'd30;
    wire [9:0] enemy_head_y1 = 10'd30;
    wire [9:0] enemy_head_x2 = 10'd30;
    wire [9:0] enemy_head_y2 = 10'd30;

    food_and_camera food_mod (
    .clk(clk),
    .reset(0), // or use a proper reset
    .userwormheadx(user_head_x),
    .userwormheady(user_head_y),
    .enemywormheadx0(enemy_head_x0),
    .enemywormheady0(enemy_head_y0),
    .enemywormheadx1(enemy_head_x1),
    .enemywormheady1(enemy_head_y1),
    .enemywormheadx2(enemy_head_x2),
    .enemywormheady2(enemy_head_y2),
    .cam_offset_x(cam_offset_x),
    .cam_offset_y(cam_offset_y),
    .reg_food_eaten(reg_food_eaten),
    .reg_food_location_0(reg_food_location_0),
    .reg_food_location_1(reg_food_location_1),
    .reg_food_location_2(reg_food_location_2),
    .reg_food_location_3(reg_food_location_3),
    .reg_food_location_4(reg_food_location_4),
    .reg_food_location_5(reg_food_location_5),
    .reg_food_location_6(reg_food_location_6),
    .reg_food_location_7(reg_food_location_7)
    );
  
    // inst user_worm and enemy_worm
    flexible_snake user_snake(
        .slow_clk(clk400hz), 
        .rst(0),
        .x_dir(x_vel_debug), 
        .y_dir(y_vel_debug), 
        .xpos(snake_xpos), 
        .ypos(snake_ypos), 
        .directionEnable(directionEnable),
        .food_eaten(0),
        .x_worm_flat(snake_new_xpos), 
        .y_worm_flat(snake_new_ypos), 
        .new_size(new_size),
        .new_x_vel(snake_new_x_vel), 
        .new_y_vel(snake_new_y_vel), 
        .vel_changed(vel_changed)
    );
    
    wire btnU_stable, btnD_stable, btnL_stable, btnR_stable;
    switch_debouncing deb_mod(
        .btnU(btnU), 
        .btnD(btnD),
        .btnL(btnL), 
        .btnR(btnR),
        .clk(clk6p25m),
        .btnU_stable(btnU_stable),
        .btnD_stable(btnD_stable),
        .btnL_stable(btnL_stable),
        .btnR_stable(btnR_stable)  
    );
    
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

    // TODO: for now, render the snake on the screen and in Top_student
    // rendering should be abstracted into a separate module 
   
    //maximum length of worm is 48 pixels.
       reg [9:0] worm_x_array [0:47];
       reg [9:0] worm_y_array [0:47];
       integer i;
           
       always @(*) begin
           for (i = 0; i < 48; i = i + 1) begin
               worm_x_array[i] = snake_new_xpos[i*10 +: 10]; // LSB >> MSB 
               worm_y_array[i] = snake_new_ypos[i*10 +: 10];
           end
       end
       
    reg [9:0] debug_body_xpos;   
    reg [9:0] debug_body_ypos;   

    always @ (posedge clk_25m) begin 
        //for debugging 
        led[15:12]<= new_size;
        led[11:0] <= {snake_xpos[5:0], snake_ypos[5:0]};

        //update head and body positions
        snake_xpos <= worm_x_array[new_size - 1];
        snake_ypos <= worm_y_array[new_size - 1];
        
        // Render snake head and body
        if ((pixel_x >= snake_xpos && pixel_x < snake_xpos + 1) && 
            (pixel_y >= snake_ypos && pixel_y < snake_ypos + 1)) begin
            pixel_colour <= 16'b11111_111111_11111; // White for head (1x1 pixels)
        end
        else begin
            pixel_colour <= 16'b00000_000000_00000; // Black background
            
            // Check each body segment
            for (i = 0; i < new_size - 1; i = i + 1) begin
                if ((pixel_x >= worm_x_array[i] && pixel_x < worm_x_array[i] + 1) && 
                    (pixel_y >= worm_y_array[i] && pixel_y < worm_y_array[i] + 1)) begin
                    pixel_colour <= 16'b00000_111111_00000; // Green for body (1x1 pixels)
                end
            end
        end
    end


    // for debugging 
    always @ (posedge clk400hz) begin 
        // X velocity control
        if (btnL&& x_vel_debug > -MAX_VEL) 
            x_vel_debug <= x_vel_debug - 1;
        else if (btnR&& x_vel_debug < MAX_VEL) 
            x_vel_debug <= x_vel_debug + 1;
        else if (!btnL && !btnR&& x_vel_debug != 0)  // Deceleration
            x_vel_debug <= (x_vel_debug > 0) ? x_vel_debug - 1 : x_vel_debug + 1;

        // Y velocity control
        if (btnU&& y_vel_debug > -MAX_VEL) 
            y_vel_debug <= y_vel_debug - 1;
        else if (btnD&& y_vel_debug < MAX_VEL)
            y_vel_debug <= y_vel_debug + 1;
        else if (!btnU&& !btnD && y_vel_debug != 0)  // Deceleration
            y_vel_debug <= (y_vel_debug > 0) ? y_vel_debug - 1 : y_vel_debug + 1;
        end
        
    //assign directionEnable = (btnL_stable | btnU_stable | btnD_stable | btnR_stable ) ? 1 : 0;
    
    assign directionEnable = sw[15] ? 1: (btnL | btnU | btnD | btnR ) ? 1 : 0 ;
endmodule


module flexible_clock(input CLOCK,input [31:0] divider,output reg SLOW_CLOCK = 0);

    reg [31:0] COUNT = 32'b0000;
    always @ (posedge CLOCK)
    begin
    COUNT <= ( COUNT == divider) ? 0 : COUNT + 1;
    SLOW_CLOCK <= (COUNT == 32'b0000)? ~SLOW_CLOCK : SLOW_CLOCK;
    end
    
endmodule


module switch_debouncing(
    
    input btnU, btnR, btnD, btnL, clk, 
    output reg btnR_stable, btnL_stable, btnD_stable, btnU_stable
);

reg btnR_sync_0, btnR_sync_1, btnR_prev ;
reg btnL_sync_0, btnL_sync_1, btnL_prev ;
reg btnD_sync_0, btnD_sync_1, btnD_prev ;
reg btnU_sync_0, btnU_sync_1, btnU_prev ;

always @ (posedge clk) begin
   // Button debouncing
   btnR_sync_0 <= btnR;
   btnR_sync_1 <= btnR_sync_0;
   if (btnR_sync_1 && !btnR_prev) begin
       btnR_stable <= 1;
   end else begin
       btnR_stable <= 0;
   end
   btnR_prev <= btnR_sync_1;
   
   btnL_sync_0 <= btnL;
   btnL_sync_1 <= btnL_sync_0;
   if (btnL_sync_1 && !btnL_prev) begin
       btnL_stable <= 1;
   end else begin
       btnL_stable <= 0;
   end
   btnL_prev <= btnL_sync_1;
   
   btnD_sync_0 <= btnD;
   btnD_sync_1 <= btnD_sync_0;
   if (btnD_sync_1 && !btnD_prev) begin
       btnD_stable <= 1;
   end else begin
       btnD_stable <= 0;
   end
   btnD_prev <= btnD_sync_1;
   
   btnU_sync_0 <= btnU;
   btnU_sync_1 <= btnU_sync_0;
   if (btnU_sync_1 && !btnU_prev) begin
       btnU_stable <= 1;
   end else begin
       btnU_stable <= 0;
   end
   btnU_prev <= btnU_sync_1;
   
   end
endmodule
