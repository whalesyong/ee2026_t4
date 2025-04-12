`timescale 1ns / 1ps

module mouse_direction(
    input clk,      // 100 mhz
    input [11:0] mouse_x, mouse_y, // 12 bits
    output reg signed [12:0] x_dir, y_dir,
    output reg flag // set to 1 when direction is updated
    );

    reg [11:0] mouse_x_prev;
    reg [11:0] mouse_y_prev;
    reg signed [12:0] mouse_x_delta_raw;    // Used in first always block
    reg signed [12:0] mouse_y_delta_raw;    // Used in first always block
    reg signed [12:0] mouse_x_delta_proc;   // Used in second always block
    reg signed [12:0] mouse_y_delta_proc;   // Used in second always block
    reg [1:0] quadrant; 
    wire clk6p25m;
    wire clk100hz;
    flexible_clock clk6p25_mod (clk, 32'd8, clk6p25m);
    flexible_clock clk100hz_mod (clk, 32'd1_000_000, clk100hz);

    reg [12:0] x_dir_reg;
    reg [12:0] y_dir_reg;
    
    // Initialize directions
    initial begin
        x_dir = 0;
        y_dir = 0;
    end

    // Compute the angle and directions
    always @(posedge clk100hz) begin
    // Update mouse deltas
    mouse_x_delta_raw = mouse_x - mouse_x_prev;
    mouse_y_delta_raw = mouse_y - mouse_y_prev;

    mouse_x_prev = mouse_x;
    mouse_y_prev = mouse_y;

    // update direction if there's movement
    if (mouse_x_delta_raw != 0 || mouse_y_delta_raw != 0) begin
        flag <= 1;
    end 
    
    if (flag) begin
        // Copy raw deltas to processing registers
        mouse_x_delta_proc = mouse_x_delta_raw;
        mouse_y_delta_proc = mouse_y_delta_raw;

        // determine the quadrant
        if (mouse_x_delta_proc > 0 && mouse_y_delta_proc > 0) 
            quadrant <= 2'b00;
        else if (mouse_x_delta_proc < 0 && mouse_y_delta_proc > 0)
            quadrant <= 2'b01;
        else if (mouse_x_delta_proc < 0 && mouse_y_delta_proc < 0)
            quadrant <= 2'b10;
        else if (mouse_x_delta_proc > 0 && mouse_y_delta_proc < 0)
            quadrant <= 2'b11;

        // make the deltas positive
        if (mouse_x_delta_proc < 0)
            mouse_x_delta_proc = -mouse_x_delta_proc;
        if (mouse_y_delta_proc < 0)
            mouse_y_delta_proc = -mouse_y_delta_proc;

        // determine directions
        if (mouse_x_delta_proc > (2 * mouse_y_delta_proc)) begin
            x_dir = 13'd5;
            y_dir = 13'd0;
        end
        else if (mouse_y_delta_proc > (2 * mouse_x_delta_proc)) begin
            x_dir = 13'd0;
            y_dir = 13'd5;
        end
        else if ((mouse_x_delta_proc >> 2) > mouse_y_delta_proc) begin
            x_dir = 13'd4;
            y_dir = 13'd1;
        end
        else if ((mouse_y_delta_proc >> 2) > mouse_x_delta_proc) begin
            x_dir = 13'd1;
            y_dir = 13'd4;
        end
        else begin
            x_dir = 13'd3;
            y_dir = 13'd3;
        end

        // apply sign based on quadrant
        case (quadrant)
            2'b00: begin end
            2'b01: x_dir = -x_dir;
            2'b10: begin x_dir = -x_dir; y_dir = -y_dir; end
            2'b11: y_dir = -y_dir;
        endcase
    end
    end

endmodule