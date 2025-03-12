`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.03.2025 12:39:43
// Design Name: 
// Module Name: seven_seg
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


module seven_seg(   input clk,
                    output reg [7:0] seg,
                    output reg [3:0] an
    );

    custom_timer seven_seg_clk(clk, 32'h0000_249f, clk_slow); // 3 ms period

    reg [1:0] idx;

    initial begin
        idx = 0;
    end

    always @(posedge clk_slow) begin

                // 7 sig bit format: [dp]gfedcba 
                // active LOW 
        case(idx)
            0: begin               // show 4
                seg <= 8'b1001_1001;
                an <= 4'b1110;
            end
            1: begin                // show 0
                seg <= 8'b1100_0000;
                an <= 4'b1101;
            end
            2: begin
                seg <= 8'b0010_0100;  // show 2.
                an <= 4'b1011;
            end

            3: begin
                seg <= 8'b1001_0010;  // show 5
                an <= 4'b0111;
            end
        endcase

        idx = idx + 1;

    end
        
        
endmodule
