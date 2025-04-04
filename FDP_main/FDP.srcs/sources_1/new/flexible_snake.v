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
    input [8:0] xpos, ypos,
    input directionEnable,
    input food_eaten,
    output reg [479:0] x_worm_flat, y_worm_flat,  // Flattened snake position data
    output reg [7:0] new_size, 
    output reg signed [12:0] new_x_vel = 0, new_y_vel = 0, 
    output reg vel_changed = 0
);
    localparam MAX_LENGTH = 48;  // Number of segments in the snake
    
    // variables for interfacing with basic_snake
    wire [8:0] new_xpos_wire, new_ypos_wire; 
    wire signed [12:0] new_x_vel_wire, new_y_vel_wire;
    wire vel_changed_wire;

    
    // inst basic snake module 
    basic_snake snake_mod(
        .slow_clk(slow_clk), 
        .x_vel(x_dir), 
        .y_vel(y_dir), 
        .xpos(xpos), 
        .ypos(ypos), 
        .new_xpos(new_xpos_wire), 
        .new_ypos(new_ypos_wire), 
        .new_x_vel(new_x_vel_wire), 
        .new_y_vel(new_y_vel_wire), 
        .vel_changed(vel_changed_wire)
    );
    
    reg [9:0] worm_x_arr [0:MAX_LENGTH-1];  // X positions
    reg [9:0] worm_y_arr [0:MAX_LENGTH-1];  // Y positions
    integer i;

    reg [7:0] current_size = 4;
    
    always @(posedge slow_clk or posedge rst) begin
        if (rst) begin
            // Reset snake
            for (i = 0; i < MAX_LENGTH; i = i + 1) begin
                worm_x_arr[i] <= 0;
                worm_y_arr[i] <= 0;
            end
            x_worm_flat <= 0;
            y_worm_flat <= 0;
            current_size <= 4;  // Reset to initial size
            new_size <= 4;
        end else begin
            new_x_vel <= new_x_vel_wire;
            new_y_vel <= new_y_vel_wire;
            vel_changed <= vel_changed_wire;
            // Shift body (Move each segment to the next one's position)
            for (i = 0; i < current_size - 1; i = i + 1) begin
                worm_x_arr[i] <= worm_x_arr[i+1];
                worm_y_arr[i] <= worm_y_arr[i+1];
            end
            
            // Move head using basic_snake outputs
            if (directionEnable) begin
                worm_x_arr[current_size - 1] <= new_xpos_wire;
                worm_y_arr[current_size - 1] <= new_ypos_wire;
            end

            // Flatten worm_x_arr and worm_y_arr into 480-bit registers
            x_worm_flat = 0;
            y_worm_flat = 0;
            for (i = 0; i < MAX_LENGTH; i = i + 1) begin
                x_worm_flat = {x_worm_flat[479-10:0], worm_x_arr[i]};  // Append 10-bit segment
                y_worm_flat = {y_worm_flat[479-10:0], worm_y_arr[i]};
            end

            // Handle food consumption
            if (food_eaten && current_size < MAX_LENGTH) begin
                current_size <= current_size + 1;
                new_size <= current_size + 1;
            end else begin
                new_size <= current_size;
            end
        end
    end
endmodule

