`timescale 1ns / 1ps

module render_oled(
    input clk, // 100 MHz
    input clk6p25m, // 6.25 MHz
    input [12:0]pixel_index,
    input [9:0] user_worm_x [0:47],
    input [9:0] user_worm_y [0:47],
    input [9:0] enemy_worm_x [0:47],
    input [9:0] enemy_worm_y [0:47],
    input [9:0] food_x [0:47],
    input [9:0] food_y [0:47],
    input [8:0] camera_offset_x, // 500 x 500 world
    input [8:0] camera_offset_y,
    output [15:0] pixel_colour
    );

    // declare register caches for the pixel colour
    reg [15:0] pixel_colour_cache [61443:0];
    
    reg [ 9:0 ] counter; // count until 6143


    wire [9:0]pixel_idx_x = pixel_index % 96;
    wire [9:0]pixel_idx_y = pixel_index / 96;
    
    // map counter x, y to 500x500 world
    wire [9:0]counter_x = (counter % 96) + camera_offset_x;
    wire [9:0]counter_y = (counter / 96) + camera_offset_y;

    inital begin
        counter = 0;
        // TODO: initialise pixel colour cache

    end

    
    // continuously update cache
    always @ (posedge clk ) begin 
        
                
        // TODO: render in order of priority: 
        // 1. sq boundary
        // 2. user worm body
        // 3. enemy worm body
        // 4. food
        // 5. background
        


    end

    // read pixel data from cache
    always @ (posedge clk6p25m ) begin
        pixel_colour <= pixel_colour_cache[pixel_index];
    end











endmodule
