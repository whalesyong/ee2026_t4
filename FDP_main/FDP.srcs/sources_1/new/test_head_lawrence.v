`timescale 1ns / 1ps

module Top_Lawrence_Test (    
    input clk,
    input btnU, btnD, btnC, btnL, btnR,
    input [15:0] sw,
    output [7:0]JB,
    output [15:0] led,
    output [7:0] seg,
    output [3:0] an, 
    inout PS2Clk, PS2Data
);

    wire [15:0] pixel_colour;


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
    
    wire clk7seg; 
    flexible_clock clk_mod_7seg(
        .CLOCK(clk),
        .divider(125000), 
        .SLOW_CLOCK(clk7seg)
    );

    wire clk_25m;
    flexible_clock clk_mod25m(
        .CLOCK(clk),
        .divider(2), 
        .SLOW_CLOCK(clk_25m)
     );
    
    wire [12:0] pixel_index;
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
    
    
    mouse_direction mouse_dir_inst(
        .clk(clk), 
        .mouse_x(mouse_xpos), 
        .mouse_y(mouse_ypos), 
        // .x_dir(x_dir_user), 
        // .y_dir(y_dir_user),
        .flag(mouse_flag)

    );
  
    // inst user_worm and enemy_worm
    wire [479:0] user_snake_x; // Declare user_snake_x as a 10-bit vector
    wire [479:0] user_snake_y; // Declare user_snake_y as a 10-bit vector
    

    reg signed [12:0] new_x_vel;
    reg signed [12:0] new_y_vel;

    flexible_snake user_snake(
        .slow_clk(clk400hz), 
        .rst(0),
        .x_dir(new_x_vel), 
        .y_dir(new_y_vel), 
        .xpos(snake_xpos), 
        .ypos(snake_ypos), 
        .directionEnable(1),
        .food_eaten(0),
        .x_worm_flat(user_snake_x), 
        .y_worm_flat(user_snake_y), 
        .new_size(new_size)
        // ,.new_x_vel(new_x_vel), 
        // .new_y_vel(new_y_vel), 
        // .vel_changed()
    );

    assign led = pixel_colour; // test if pixel is white


    // manually control direction with button
    always @(*) begin
        if(btnU) begin
            new_x_vel = 0;
            new_y_vel = 2;
        end

        else if (btnL) begin
            new_x_vel = -2;
            new_y_vel = 0;
        end

        else if  (btnR) begin
            new_x_vel = 2;
            new_y_vel = 0;
        end

        else if (btnD) begin
            new_x_vel = 0;
            new_y_vel = -2;
        end

        else begin
            new_x_vel = 0;
            new_y_vel = 0;
        end

    end

    render_oled render_oled_inst (
        .clk(clk),
        // .clk6p25m(clk6p25m),
        .pixel_index(pixel_index),
        .user_worm_x_flat(snake_new_xpos), // flattened x-coordinates of user worm
        .user_worm_y_flat(snake_new_ypos), // flattened y-coordinates of user worm
        .enemy_worm_x_flat(0), // flattened x-coordinates of enemy worm (not used)
        .enemy_worm_y_flat(0), // flattened y-coordinates of enemy worm (not used)
        .food_x_flat(0), // flattened x-coordinates of food (not used)
        .food_y_flat(0), // flattened y-coordinates of food (not used)
        .camera_offset_x(0), // camera x-offset (not used)
        .camera_offset_y(0), // camera y-offset (not used)

        // output
        .pixel_colour(pixel_colour) // output pixel color
    );

    ss_display ss_displ_inst (
        .clk(clk7seg), 
        .seg(seg),
        .an(an),
        .num(pixel_colour)
    );

endmodule

