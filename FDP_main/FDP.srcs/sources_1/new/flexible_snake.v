`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.03.2025 21:04:13
// Design Name: 
// Module Name: flexible_snake
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module flexible_snake(
    input slow_clk, 
    input rst,
    input signed [12:0] x_dir, y_dir, 
    input directionEnable,
    input food_eaten,
    output reg [479:0] x_worm, y_worm,  // Flattened snake position data
    output reg [7:0] new_size
);
    localparam MAX_LENGTH = 48;  // Number of segments in the snake

    reg [9:0] worm_x [0:MAX_LENGTH-1];  // X positions
    reg [9:0] worm_y [0:MAX_LENGTH-1];  // Y positions
    integer i;

    reg [7:0] current_size = 4;
    
    always @(posedge slow_clk or posedge rst) begin
        if (rst) begin
            // Reset snake
            for (i = 0; i < MAX_LENGTH; i = i + 1) begin
                worm_x[i] <= 0;
                worm_y[i] <= 0;
            end
            x_worm <= 0;
            y_worm <= 0;
            new_size <= 4;  // Minimum snake size
        end else begin
            // Shift body (Move each segment to the next one's position)
            for (i = 0; i < current_size - 1; i = i + 1) begin
                worm_x[i] <= worm_x[i+1];
                worm_y[i] <= worm_y[i+1];
            end
            
            // Move head if direction is enabled
            if (directionEnable) begin
                worm_x[current_size - 1] <= worm_x[current_size - 1] + x_dir;
                worm_y[current_size - 1] <= worm_y[current_size - 1] + y_dir;
            end

            // **Flatten worm_x and worm_y into 480-bit registers**
            x_worm = 0;
            y_worm = 0;
            for (i = 0; i < MAX_LENGTH; i = i + 1) begin
                x_worm = {x_worm[469:0], worm_x[i]};  // Append new value
                y_worm = {y_worm[469:0], worm_y[i]};
            end

            // Handle food consumption
            if (food_eaten && current_size < MAX_LENGTH) begin
                new_size <= current_size + 1;
            end else begin
                new_size <= current_size;
            end
        end
    end
endmodule

