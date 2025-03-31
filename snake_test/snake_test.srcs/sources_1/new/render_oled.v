`timescale 1ns / 1ps
module render_oled(
    input clk,
    input clk6p25m,
    input mode,  // 0: menu, 1: game
    // Note: pixel_index is assumed to be driven externally by the OLED driver.
    input [12:0] pixel_index,
    input [479:0] user_worm_x_flat,
    input [479:0] user_worm_y_flat,
    input [479:0] enemy_worm_x_flat,
    input [479:0] enemy_worm_y_flat,
    input [479:0] food_x_flat,
    input [479:0] food_y_flat,
    input [9:0] camera_offset_x,
    input [9:0] camera_offset_y,
    output reg [15:0] pixel_colour
);

    // Define colors
    localparam [15:0] BLACK   = 16'b00000_000000_00000;
    localparam [15:0] WHITE   = 16'b11111_111111_11111;
    localparam [15:0] BLUE    = 16'b00000_000000_11111;
    localparam [15:0] RED     = 16'b11111_000000_00000;
    localparam [15:0] PURPLE  = 16'b11111_000000_11110;
    localparam [15:0] MENU_BG = 16'b00100_101101_00100; // pastel greenish

    // Unflatten arrays into 48-element arrays
    wire [9:0] user_worm_x [0:47];
    wire [9:0] user_worm_y [0:47];
    wire [9:0] enemy_worm_x[0:47];
    wire [9:0] enemy_worm_y[0:47];
    wire [9:0] food_x[0:47];
    wire [9:0] food_y[0:47];

    genvar i;
    generate
      for(i = 0; i < 48; i = i + 1) begin
         assign user_worm_x[i]  = user_worm_x_flat[i*10 +: 10];
         assign user_worm_y[i]  = user_worm_y_flat[i*10 +: 10];
         assign enemy_worm_x[i] = enemy_worm_x_flat[i*10 +: 10];
         assign enemy_worm_y[i] = enemy_worm_y_flat[i*10 +: 10];
         assign food_x[i]       = food_x_flat[i*10 +: 10];
         assign food_y[i]       = food_y_flat[i*10 +: 10];
      end
    endgenerate

    // Pixel cache for 6144 pixels (96 x 64)
    reg [15:0] pixel_cache [0:6143];
    integer j;
    initial begin
      for(j = 0; j < 6144; j = j + 1)
         pixel_cache[j] = BLACK;
    end

    // Pixel scanning counter
    reg [12:0] counter;
    // We'll compute adjusted coordinates internally
    reg [9:0] px, py;
    // Loop variable and flag for detection (declared outside always block)
    integer idx;
    reg found;

    always @(posedge clk) begin
        // Compute adjusted coordinates using camera offset
        px = (counter % 96) + camera_offset_x;
        py = (counter / 96) + camera_offset_y;

        if (mode == 1'b0) begin
            // MENU mode: use MENU_BG and a centered white rectangle
            if(((counter % 96) >= 30) && ((counter % 96) < 66) &&
               ((counter / 96) >= 20) && ((counter / 96) < 44))
                pixel_cache[counter] <= WHITE;
            else
                pixel_cache[counter] <= MENU_BG;
        end else begin
            // GAME mode:
            if(px < 2 || px >= 94 || py < 2 || py >= 62) begin
                pixel_cache[counter] <= WHITE;
            end else begin
                found = 0;
                // Check user snake segments (each 5x5)
                for(idx = 0; idx < 48; idx = idx + 1) begin
                    if(!found &&
                       (px >= user_worm_x[idx]) && (px < user_worm_x[idx] + 5) &&
                       (py >= user_worm_y[idx]) && (py < user_worm_y[idx] + 5)) begin
                        pixel_cache[counter] <= BLUE;
                        found = 1;
                    end
                end
                // Check enemy snake segments if not found
                if(!found) begin
                  for(idx = 0; idx < 48; idx = idx + 1) begin
                    if(!found &&
                       (px >= enemy_worm_x[idx]) && (px < enemy_worm_x[idx] + 5) &&
                       (py >= enemy_worm_y[idx]) && (py < enemy_worm_y[idx] + 5)) begin
                        pixel_cache[counter] <= RED;
                        found = 1;
                    end
                  end
                end
                // Check food for first 8 items if still not found
                if(!found) begin
                  for(idx = 0; idx < 8; idx = idx + 1) begin
                    if(!found &&
                       (px >= food_x[idx]) && (px < food_x[idx] + 5) &&
                       (py >= food_y[idx]) && (py < food_y[idx] + 5)) begin
                        pixel_cache[counter] <= PURPLE;
                        found = 1;
                    end
                  end
                end
                if(!found)
                    pixel_cache[counter] <= BLACK;
            end
        end

        if(counter == 6143)
            counter <= 0;
        else
            counter <= counter + 1;
    end

    // Output the pixel color using the externally provided pixel_index
    always @(posedge clk6p25m) begin
        pixel_colour <= pixel_cache[pixel_index];
    end

endmodule
