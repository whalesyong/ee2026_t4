`timescale 1ns / 1ps
module flexible_clock(
    input CLOCK,
    input [31:0] divider,
    output reg SLOW_CLOCK = 0
);
    reg [31:0] COUNT = 0;
    always @(posedge CLOCK) begin
        if (COUNT == divider) begin
            COUNT <= 0;
            SLOW_CLOCK <= ~SLOW_CLOCK;
        end else begin
            COUNT <= COUNT + 1;
        end
    end
endmodule
