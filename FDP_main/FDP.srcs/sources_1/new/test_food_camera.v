`timescale 1ns / 1ps

module food_and_camera (
    input clk,
    input reset,
    input [9:0] userwormheadx,
    input [9:0] userwormheady,
    input [9:0] enemywormheadx0,
    input [9:0] enemywormheady0,
    input [9:0] enemywormheadx1,
    input [9:0] enemywormheady1,
    input [9:0] enemywormheadx2,
    input [9:0] enemywormheady2,
    output reg [9:0] cam_offset_x,
    output reg [9:0] cam_offset_y,
    output reg [3:0] reg_food_eaten,
    output reg [15:0] reg_food_location_0,
    output reg [15:0] reg_food_location_1,
    output reg [15:0] reg_food_location_2,
    output reg [15:0] reg_food_location_3,
    output reg [15:0] reg_food_location_4,
    output reg [15:0] reg_food_location_5,
    output reg [15:0] reg_food_location_6,
    output reg [15:0] reg_food_location_7
);

    parameter SCREEN_WIDTH  = 96;
    parameter SCREEN_HEIGHT = 64;

    reg [15:0] rng_seed = 16'hACE1;
    reg [9:0] food_x [0:7];
    reg [9:0] food_y [0:7];
    reg [1:0] food_type [0:7];

    integer i;

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            rng_seed <= 16'hBEEF;
            reg_food_eaten <= 4'b0000;
            for (i = 0; i < 8; i = i + 1) begin
                food_x[i] <= 10 + i*8;
                food_y[i] <= 20 + i*4;
                food_type[i] <= i % 3;
            end
        end else begin
            reg_food_eaten <= 4'b0000;

            for (i = 0; i < 8; i = i + 1) begin
                // Check if any head overlaps food
                if ((userwormheadx == food_x[i]) && (userwormheady == food_y[i])) begin
                    reg_food_eaten[0] <= 1;
                end
                else if ((enemywormheadx0 == food_x[i]) && (enemywormheady0 == food_y[i])) begin
                    reg_food_eaten[1] <= 1;
                end
                else if ((enemywormheadx1 == food_x[i]) && (enemywormheady1 == food_y[i])) begin
                    reg_food_eaten[2] <= 1;
                end
                else if ((enemywormheadx2 == food_x[i]) && (enemywormheady2 == food_y[i])) begin
                    reg_food_eaten[3] <= 1;
                end

                // If anyone ate food, reassign that food's position
                if (reg_food_eaten != 0) begin
                    rng_seed <= {rng_seed[14:0], rng_seed[15] ^ rng_seed[13]};
                    food_x[i] <= 10 + (rng_seed[7:0] % 80);
                    food_y[i] <= 10 + (rng_seed[6:0] % 40);
                    food_type[i] <= rng_seed[10:9];
                end
            end

            // Pack food locations into 16-bit values
            reg_food_location_0 <= {food_type[0], food_x[0], food_y[0]};
            reg_food_location_1 <= {food_type[1], food_x[1], food_y[1]};
            reg_food_location_2 <= {food_type[2], food_x[2], food_y[2]};
            reg_food_location_3 <= {food_type[3], food_x[3], food_y[3]};
            reg_food_location_4 <= {food_type[4], food_x[4], food_y[4]};
            reg_food_location_5 <= {food_type[5], food_x[5], food_y[5]};
            reg_food_location_6 <= {food_type[6], food_x[6], food_y[6]};
            reg_food_location_7 <= {food_type[7], food_x[7], food_y[7]};

            // Simple camera panning (follow user snake)
            cam_offset_x <= (userwormheadx > SCREEN_WIDTH / 2) ? (userwormheadx - SCREEN_WIDTH / 2) : 0;
            cam_offset_y <= (userwormheady > SCREEN_HEIGHT / 2) ? (userwormheady - SCREEN_HEIGHT / 2) : 0;
        end
    end

endmodule

/* 
==========================================================================================
  NOTE: Connect food_and_camera module to render_oled in Top_Student.v
==========================================================================================

To pass food location outputs to render_oled (which expects flattened arrays), you can:

1. Extract X and Y from each 16-bit reg_food_location_N like this:
     - X = reg_food_location_N[13:5]
     - Y = reg_food_location_N[4:0]

2. Zero-extend each to 10 bits (if needed):
     - food_x_flat[i*10 +: 10] = {1'b0, reg_food_location_N[13:5]};
     - food_y_flat[i*10 +: 10] = {5'b00000, reg_food_location_N[4:0]};

3. Assign first 8 entries to food_x_flat[0:79] and food_y_flat[0:79]
     - The rest of the 48 total entries in the flat arrays can be filled with 0.

4. Pass the resulting 480-bit buses into render_oled like this:
     render_oled (
         .food_x_flat(food_x_flat),
         .food_y_flat(food_y_flat),
         ...
     );

Optional: You can also decode food_type using reg_food_location_N[15:14]
           if you want different colors for different food types.
*/
