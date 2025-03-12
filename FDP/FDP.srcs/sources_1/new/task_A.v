`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.03.2025 19:08:21
// Design Name: 
// Module Name: task_A
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


module task_A(
    input clk, //62.5 MHz
    input btnU, btnD, btnC, taskEnable,
    input [12:0] pixel_index,
    output [15:0] pixel_colour_out
    );

    assign led = btnEnable; // temp

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
    wire [15:0] r_i_sq;
    wire [15:0] r_o_sq;
    wire [15:0] distance_sq;
    reg [31:0] count_debounce;
    reg ringEnable;
    reg btnEnable;
    reg btnHeldDown;

    reg [15:0] pixel_colour;
    reg [15:0] diameter;
    assign pixel_colour_out = pixel_colour;
    assign x = pixel_index % 96;
    assign y = pixel_index / 96;
    assign r_o_sq = (diameter / 2) * (diameter / 2);
    assign r_i_sq = (diameter / 2 - 5 ) * (diameter / 2 - 5);
    assign distance_sq = (x - CENTER_X) * (x - CENTER_X) + (y - CENTER_Y) * (y - CENTER_Y);

    initial begin
        btnEnable = 1;
        btnHeldDown = 0;
        count_debounce = 0;
        diameter = 30;
        pixel_colour = BLACK;
        ringEnable = 0;
    end

    always @(posedge clk) begin

        if (taskEnable == 0) begin // reset values when not in use
            diameter = 30;
            btnEnable = 1;
            ringEnable = 0;
        end

        if (btnC == 1) begin
            ringEnable = 1;
        end

        if (btnHeldDown == 0) begin // btn not held down

            // debounce
            if (btnEnable == 1) begin
                if (btnU == 1 && diameter < 50) begin
                    diameter = diameter + 5;
                    btnEnable = 0;
                end
                else if (btnD == 1 && diameter > 10) begin
                    diameter = diameter - 5;
                    btnEnable = 0;
                end
            end

            else begin
                count_debounce = count_debounce + 1;
                if (count_debounce >= 6250000 / 5) begin
                    count_debounce = 0;
                    btnEnable = 1;
                end
            end

        end

        btnHeldDown = btnU | btnD | btnC;

        // draw graphics
        // black rectangle around border
        if (x < 3 || x > 92 || y < 3 || y > 60) begin
            pixel_colour = BLACK;
        end

        // red rectangle
        else if (x < 6 || x > 89 || y <6 || y > 57) begin
            pixel_colour = RED;
        end

        // green circle 
        else if (ringEnable && distance_sq <= r_o_sq && distance_sq >= r_i_sq) begin
            pixel_colour = GREEN;
        end

        else begin
            pixel_colour = BLACK;
        end

    end

endmodule
