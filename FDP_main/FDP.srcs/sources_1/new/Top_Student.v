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
    parameter MAX_VEL = 10;

    
    // variables for OLED display
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
    reg [8:0] snake_xpos;
    reg [8:0] snake_ypos;
    wire [8:0] snake_new_xpos; 
    wire [8:0] snake_new_ypos;
    wire signed [12:0] snake_new_x_vel;
    wire signed [12:0] snake_new_y_vel;
    wire vel_changed;


    wire clk6p25m;
    flexible_clock clk_mod_6p25m(
        .CLOCK(clk),
        .divider(8), 
        .SLOW_CLOCK(clk6p25m)
    );

    wire clk400hz; 
    flexible_clock clk_mod_400hz(
        .CLOCK(clk6p25m),
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
    
    
    mouse_direction mouse_dir_mod(
        .clk(clk), 
        .mouse_x(mouse_xpos), 
        .mouse_y(mouse_ypos), 
        .x_dir(x_dir_wire), 
        .y_dir(y_dir_wire),
        .flag(mouse_event_flag) // set to 1 when direction is updated
    );
    always @ * begin 
        x_dir = x_dir_wire;
        y_dir = y_dir_wire;
    end
    
    
    // inst user_worm and enemy_worm
    flexible_snake user_snake(
        .slow_clk(clk400hz), 
        .x_vel(normalized_x_dir), 
        .y_vel(normalized_y_dir), 
        .xpos(snake_xpos), 
        .ypos(snake_ypos), 
        .new_xpos(snake_new_xpos), 
        .new_ypos(snake_new_ypos), 
        .new_x_vel(snake_new_x_vel), 
        .new_y_vel(snake_new_y_vel), 
        .vel_changed(vel_changed)
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
    render_oled oled_renderer(
        .pixel_index(pixel_index),
        .user_worm_x(0),// TOOD: add user worm x position
        .user_worm_y(0), // TODOL add user worm y position
        .enemy_worm_x(0), // TODO: add enemy worm x position
        .enemy_worm_y(0), // TODO: add enemy worm y position
        .food_x(0), // TODO: add food x position
        .food_y(0), // TODO: add food y position
        .pixel_colour(pixel_colour)
    );

    //TODO: for now, render the snake on the screen and in Top_student
    // rendering should be abstracted into a separate module 

    always @ (posedge clk_25m) begin 
        snake_xpos <= snake_new_xpos; 
        snake_ypos <= snake_new_ypos;

        if (pixel_x > snake_xpos && pixel_x <= snake_xpos+4 && pixel_y > snake_ypos && pixel_y <= snake_ypos+4) begin
            pixel_colour <= 16'b11111_111111_11111; 
        end
        else begin
            pixel_colour <= 16'b00000_000000_00000;
        end
    end
endmodule


module flexible_clock(input CLOCK,input [31:0] divider,output reg SLOW_CLOCK = 0);

    reg [31:0] COUNT = 32'b0000;
    always @ (posedge CLOCK)
    begin
    COUNT <= ( COUNT == divider) ? 0 : COUNT + 1;
    SLOW_CLOCK <= (COUNT == 32'b0000)? ~SLOW_CLOCK : SLOW_CLOCK;
    end
    
endmodule