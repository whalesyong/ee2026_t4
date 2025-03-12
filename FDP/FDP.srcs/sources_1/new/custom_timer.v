`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.02.2025 22:29:57
// Design Name: 
// Module Name: custom_timer
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


module custom_timer(
    input CLOCK,
    input [31:0]TICKS,
    output reg SLOW_CLOCK
    );
    
    reg[31:0] COUNT;
    reg SLOW_CLOCK;
    
    initial begin 
        COUNT = 32'h00000000;
        SLOW_CLOCK = 0;
     end
     
    always @(posedge CLOCK) begin
        if (COUNT >= TICKS - 1) begin
                    COUNT <= 32'h00000000;  // Reset COUNT
                    SLOW_CLOCK = ~SLOW_CLOCK;  // Toggle SLOW_CLOCK
                end else begin
                    COUNT <= COUNT + 1;  // Increment COUNT
                end
    end
endmodule
