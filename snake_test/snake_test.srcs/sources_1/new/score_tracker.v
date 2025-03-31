`timescale 1ns / 1ps
module score_tracker (
    input clk,
    input reset,
    input food_eaten,
    output reg [7:0] score
);
    always @(posedge clk or posedge reset) begin
        if (reset)
            score <= 0;
        else if (food_eaten)
            score <= score + 1;
    end
endmodule
    