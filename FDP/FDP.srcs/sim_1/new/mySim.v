`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.03.2025 01:27:53
// Design Name: 
// Module Name: mySim
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


module mySim();
    
    // inputs
    reg CLOCK; 
    reg btnL;
    reg btnC;
    reg btnD;
    reg [12:0]pixel_index;

    // outputs 
    wire [15:0] colour_out;
    
    task_A dut(
        .clk(CLOCK),
        .btnU(btnL),
        .btnD(btnD),
        .btnC(btnC),
        .pixel_index(pixel_index),
        .pixel_colour_out(colour_out)
    );
    
    initial begin 
        CLOCK = 0;
        pixel_index = 0;
        btnL = 0;
        btnC = 0;
        btnD = 0;
    end
    
    always begin 
        #10 CLOCK = ~CLOCK;
        pixel_index = pixel_index + 1;
    end
endmodule
