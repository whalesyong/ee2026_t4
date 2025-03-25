`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.03.2025 06:16:03
// Design Name: 
// Module Name: mouse_direction
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


module mouse_direction(
    input clk,      // 100 mhz
    input [11:0] mouse_x, mouse_y, // 12 bits
    output reg signed [12:0] x_dir, y_dir 
    );

    parameter ANGLE_DECELERATION = 3;

    reg [11:0] mouse_x_prev;
    reg [11:0] mouse_y_prev;
    reg signed [12:0] mouse_x_delta_raw;    // Used in first always block
    reg signed [12:0] mouse_y_delta_raw;    // Used in first always block
    reg signed [12:0] mouse_x_delta_proc;   // Used in second always block
    reg signed [12:0] mouse_y_delta_proc;   // Used in second always block
    reg [1:0] quadrant; 
    wire clk6p25m;
    wire clk10hz;
    flexible_clock clk6p25_mod (clk, 32'd8, clk6p25m);
    flexible_clock clk10hz_mod (clk, 32'd10_000_000, clk10hz);

    // Initialize directions
    initial begin
        x_dir = 0;
        y_dir = 0;
    end

    // Update mouse deltas
    always @(posedge clk6p25m) begin
        mouse_x_delta_raw <= mouse_x - mouse_x_prev;
        mouse_y_delta_raw <= mouse_y - mouse_y_prev;

        mouse_x_prev <= mouse_x;
        mouse_y_prev <= mouse_y;
    end

    // Compute the angle and directions
    always @(posedge clk10hz) begin
        // Copy raw deltas to processing registers
        mouse_x_delta_proc = mouse_x_delta_raw;
        mouse_y_delta_proc = mouse_y_delta_raw;

        // determine the quadrant
        if (mouse_x_delta_proc > 0 && mouse_y_delta_proc > 0) begin
            quadrant <= 2'b00;
        end else if (mouse_x_delta_proc < 0 && mouse_y_delta_proc > 0) begin
            quadrant <= 2'b01;
        end else if (mouse_x_delta_proc < 0 && mouse_y_delta_proc < 0) begin
            quadrant <= 2'b10;
        end else if (mouse_x_delta_proc > 0 && mouse_y_delta_proc < 0) begin
            quadrant <= 2'b11;
        end

        // make the deltas positive
        if (mouse_x_delta_proc < 0) begin
            mouse_x_delta_proc = -mouse_x_delta_proc;
        end
        if (mouse_y_delta_proc < 0) begin
            mouse_y_delta_proc = -mouse_y_delta_proc;
        end

        // determine directions
        if ( mouse_x_delta_proc > ( 9 * mouse_y_delta_proc ) ) begin 
            // 0 degree direction
            x_dir = 13'b0_1111_1111_1111;
            y_dir = 13'b0_0000_0000_0000;


        end
        else if ( mouse_y_delta_proc > ( 9 * mouse_x_delta_proc ) ) begin
            // 90 degree direction
            x_dir = 13'b0_0000_0000_0000;   
            y_dir = 13'b0_1111_1111_1111;
        end

        else if ( (mouse_x_delta_proc >> 2) > mouse_y_delta_proc ) begin
            // 22.5 degree direction
            x_dir = 13'd3783;
            y_dir = 13'd1567;
            
        end

        else if ( (mouse_y_delta_proc >> 2) > mouse_x_delta_proc ) begin
            //67.5 degree direction
            x_dir = 13'd1567; 
            y_dir = 13'd3783;
        end

        else begin
            // 45 degree direction
            x_dir = 13'd2895;
            y_dir = 13'd2895;
        end
        
        // apply sign based on quadrant
        case (quadrant)
            2'b00: begin
                // no change
            end
            2'b01: begin
                x_dir <= -x_dir;
            end
            2'b10: begin
                x_dir <= -x_dir;
                y_dir <= -y_dir;
            end
            2'b11: begin
                y_dir <= -y_dir;
            end
        endcase

    end


endmodule