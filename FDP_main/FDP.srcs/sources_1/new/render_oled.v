`timescale 1ns / 1ps

module render_oled(
    input clk, // 100 MHz
    input clk6p25m, // 6.25 MHz
    input [12:0]pixel_index,
    input [479:0] user_worm_x_flat, // flattened from [9:0] to [479:0]
    input [479:0] user_worm_y_flat,
    input [479:0] enemy_worm_x_flat,
    input [479:0] enemy_worm_y_flat,
    input [479:0] food_x_flat,
    input [479:0] food_y_flat,
    input [8:0] camera_offset_x, // 500 x 500 world
    input [8:0] camera_offset_y,
    output reg [15:0] pixel_colour
    );

    localparam WHITE = 16'b11111_111111_11111;
    localparam ORANGE = 16'b11111_101101_00000;
    localparam BLUE = 16'b00000_000000_11111;
    localparam GREEN = 16'b00000_111111_00000;
    localparam RED = 16'b11111_000000_00000;
    localparam PURPLE = 16'b11111_000000_11110;    
    localparam BLACK = 16'b00000_000000_00000;
    localparam CENTER_X = 48;
    localparam CENTER_Y = 32;

    // declare register caches for the pixel colour
    reg [15:0] pixel_colour_cache [61443:0];
    reg [5:0] loop_idx = 0; // 6 bits for 0-47
    reg [ 12:0 ] counter; // count until 6143
    reg in_user_worm;
    reg in_enemy_worm;
    reg in_food;


    // pack flattened inputs into 2d registers
    wire [9:0] user_worm_x [0:47];
    wire [9:0] user_worm_y [0:47];
    wire [9:0] enemy_worm_x [0:47];
    wire [9:0] enemy_worm_y [0:47];
    wire [9:0] food_x [0:47];
    wire [9:0] food_y [0:47];

    genvar i;
    generate
        for (i = 0; i < 48; i = i + 1) begin : pack_user_worm_x
            assign user_worm_x[i] = user_worm_x_flat[i * 10 +: 10];
            assign user_worm_y[i] = user_worm_y_flat[i * 10 +: 10];
            assign enemy_worm_x[i] = enemy_worm_x_flat[i * 10 +: 10];
            assign enemy_worm_y[i] = enemy_worm_y_flat[i * 10 +: 10];
            assign food_x[i] = food_x_flat[i * 10 +: 10];
            assign food_y[i] = food_y_flat[i * 10 +: 10];
        end
    endgenerate


    wire [9:0]pixel_idx_x = pixel_index % 96;
    wire [9:0]pixel_idx_y = pixel_index / 96;
    
    // map counter x, y to 500x500 world
    wire [9:0]counter_x = (counter % 96) + camera_offset_x;
    wire [9:0]counter_y = (counter / 96) + camera_offset_y;

    initial begin
        counter = 0;

        // intialise pixel colour cache
        // for (i = 0; i < 61443; i = i + 1) begin
        //     pixel_colour_cache[i] = BLACK;
        // end
    end

    
    // continuously update cache
    always @ (posedge clk ) begin
       
        // Default outputs (will be overridden if a match is found)
        in_user_worm = 0;
        in_enemy_worm = 0;
        in_food = 0;

        // Check current index
        if ( counter_x >= user_worm_x[loop_idx] && counter_x <= user_worm_x[loop_idx] + 4 && 
            counter_y >= user_worm_y[loop_idx] && counter_y <= user_worm_y[loop_idx] + 4) begin
            in_user_worm = 1;
        end

        if ( counter_x >= enemy_worm_x[loop_idx] && counter_x <= enemy_worm_x[loop_idx] + 4 && 
            counter_y >= enemy_worm_y[loop_idx] && counter_y <= enemy_worm_y[loop_idx] + 4) begin
            in_enemy_worm = 1;
        end

        if ( counter_x >= food_x[loop_idx] && counter_x <= food_x[loop_idx] + 4 && 
            counter_y >= food_y[loop_idx] && counter_y <= food_y[loop_idx] + 4) begin
            in_food = 1;
        end

        // Update index for next cycle (wrap around after 47)
        loop_idx <= (loop_idx >= 7'd47) ? 7'd0 : (loop_idx + 1);
        
                
        // Check pixel in order of priority: 
        // 1. sq boundary
        // 2. user worm body
        // 3. enemy worm body
        // 4. food
        // 5. background

        // check boundary
        if (counter_x  <= 2 || counter_x >= 498 || counter_y <= 2 || counter_y >= 498) begin
            pixel_colour_cache[counter] <= WHITE;
        end
        // check user worm
        else if (in_user_worm) begin
            pixel_colour_cache[counter] <= BLUE;
        end
        // check enemy worm
        else if (in_enemy_worm) begin
            pixel_colour_cache[counter] <= RED;
        end
        // check food
        else if (in_food) begin
            pixel_colour_cache[counter] <= PURPLE;
        end
        // place background
        else begin
            pixel_colour_cache[counter] <= BLACK;
        end

        // update counter
        counter <= (counter >= 6143) ? 0 : (counter + 1); 

    end

    // read pixel data from cache
    always @ (posedge clk6p25m ) begin
        pixel_colour <= pixel_colour_cache[pixel_index];
    end


endmodule
