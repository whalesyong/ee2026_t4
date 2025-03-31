`timescale 1ns / 1ps
module mouse_direction(
    input clk,                 // 100 MHz clock
    input [11:0] mouse_x,
    input [11:0] mouse_y,
    output reg signed [12:0] x_dir,
    output reg signed [12:0] y_dir,
    output reg flag
);
    parameter ANGLE_DECELERATION = 3;
    reg [11:0] mouse_x_prev;
    reg [11:0] mouse_y_prev;
    reg signed [12:0] mouse_x_delta_raw;
    reg signed [12:0] mouse_y_delta_raw;
    reg signed [12:0] mouse_x_delta_proc;
    reg signed [12:0] mouse_y_delta_proc;
    reg [1:0] quadrant;
    wire clk6p25m;
    flexible_clock clk6p25_mod (clk, 32'd8, clk6p25m);
    wire clk10hz;
    flexible_clock clk10hz_mod (clk, 32'd10000000, clk10hz);
    initial begin
        x_dir = 0;
        y_dir = 0;
    end
    always @(posedge clk6p25m) begin
        mouse_x_delta_raw <= mouse_x - mouse_x_prev;
        mouse_y_delta_raw <= mouse_y - mouse_y_prev;
        mouse_x_prev <= mouse_x;
        mouse_y_prev <= mouse_y;
    end
    always @(posedge clk10hz) begin
        mouse_x_delta_proc = mouse_x_delta_raw;
        mouse_y_delta_proc = mouse_y_delta_raw;
        if(mouse_x_delta_proc != 0 || mouse_y_delta_proc != 0)
            flag <= 1;
        else
            flag <= 0;
        if(mouse_x_delta_proc > 0 && mouse_y_delta_proc > 0)
            quadrant <= 2'b00;
        else if(mouse_x_delta_proc < 0 && mouse_y_delta_proc > 0)
            quadrant <= 2'b01;
        else if(mouse_x_delta_proc < 0 && mouse_y_delta_proc < 0)
            quadrant <= 2'b10;
        else
            quadrant <= 2'b11;
        if(mouse_x_delta_proc < 0)
            mouse_x_delta_proc = -mouse_x_delta_proc;
        if(mouse_y_delta_proc < 0)
            mouse_y_delta_proc = -mouse_y_delta_proc;
        if(mouse_x_delta_proc > 9*mouse_y_delta_proc) begin
            x_dir = 13'd5;
            y_dir = 13'd0;
        end else if(mouse_y_delta_proc > 9*mouse_x_delta_proc) begin
            x_dir = 13'd0;
            y_dir = 13'd5;
        end else if((mouse_x_delta_proc >> 2) > mouse_y_delta_proc) begin
            x_dir = 13'd4;
            y_dir = 13'd1;
        end else if((mouse_y_delta_proc >> 2) > mouse_x_delta_proc) begin
            x_dir = 13'd1;
            y_dir = 13'd4;
        end else begin
            x_dir = 13'd3;
            y_dir = 13'd3;
        end
        case (quadrant)
            2'b00: ; 
            2'b01: x_dir = -x_dir;
            2'b10: begin x_dir = -x_dir; y_dir = -y_dir; end
            2'b11: y_dir = -y_dir;
        endcase
        y_dir = -y_dir;
    end
endmodule
