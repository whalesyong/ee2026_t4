`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.03.2025 15:37:13
// Design Name: 
// Module Name: group_4_display
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


module group_4_display(
    input clk, //62.5 MHz
    input [12:0] pixel_index,
    output reg [15:0] pixel_colour_out
    );

    parameter WHITE = 16'b11111_111111_11111;
    parameter ORANGE = 16'b11111_101101_00000;
    parameter BLUE = 16'b00000_000000_11111;
    parameter GREEN = 16'b00000_111111_00000;
    parameter RED = 16'b11111_000000_00000;
    parameter PURPLE = 16'b11111_000000_11110;    
    parameter BLACK = 16'b00000_000000_00000;
    parameter CENTER_X = 48;
    parameter CENTER_Y = 32;
    
    wire [15:0] x;           // resolution: 96x64 
    wire [15:0] y;

    assign x = pixel_index % 96;
    assign y = pixel_index / 96;


    always @(posedge clk) begin

        // draw 04 on screen
        if ( x > 25 && x < 42 && y > 19 && y < 39 ) begin   // inside of "0"
            pixel_colour_out = BLACK;
        end
        else if ( x > 57 && y > 14 && x < 76 && y < 30) begin // inner top half of "4"
            pixel_colour_out = BLACK; 
        end
        else if ( x > 52 && y > 34 && x < 76 && y < 45) begin // inner bottom half of "4"
            pixel_colour_out = BLACK; 
        end
        else if ( x > 47 && y > 13 && x < 53 && y < 45) begin // gap between "0" and "4"
            pixel_colour_out = BLACK; 
        end
        else if ( x > 20 && y > 14 && x < 80 && y < 45) begin // fill spaces
            pixel_colour_out = WHITE; 
        end
        else begin 
            pixel_colour_out = BLACK;
        end

    end

endmodule
