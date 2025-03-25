`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.03.2025 21:35:11
// Design Name: 
// Module Name: pixel_converter
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

module PixelToXY (
    input  wire [15:0] pixel_index, // 16-bit pixel index
    output reg  [7:0] x,            // X coordinate (0 to 95)
    output reg  [7:0] y             // Y coordinate (0 to 63)
);
    localparam SCREEN_WIDTH = 96;
    
    always @(*) begin
        y = pixel_index / SCREEN_WIDTH; 
        x = pixel_index % SCREEN_WIDTH; 
    end
endmodule
