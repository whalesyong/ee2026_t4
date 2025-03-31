`timescale 1ns / 1ps
module enemy_ai (
    input clk,
    input reset,
    input [9:0] food_x,
    input [9:0] food_y,
    input [9:0] enemy_head_x,
    input [9:0] enemy_head_y,
    output reg signed [12:0] direction_x,
    output reg signed [12:0] direction_y
);
    // LFSR for randomness
    reg [15:0] lfsr;
    always @(posedge clk or posedge reset) begin
        if (reset)
            lfsr <= 16'hACE1;
        else
            lfsr <= {lfsr[14:0], lfsr[15] ^ lfsr[13] ^ lfsr[12] ^ lfsr[10]};
    end
    // Improved enemy AI: chase food with randomness and wall avoidance.
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            direction_x <= 0;
            direction_y <= 0;
        end else begin
            integer dx, dy;
            if (food_x > enemy_head_x)
                dx = 1;
            else if (food_x < enemy_head_x)
                dx = -1;
            else
                dx = 0;
            if (food_y > enemy_head_y)
                dy = 1;
            else if (food_y < enemy_head_y)
                dy = -1;
            else
                dy = 0;
            // Add randomness (approximately 1 in 8 chance)
            if(lfsr[2:0] == 3'b000) begin
                dx = dx + (($unsigned(lfsr[5:4]) % 3) - 1);
                dy = dy + (($unsigned(lfsr[7:6]) % 3) - 1);
            end
            // Simple wall avoidance (assuming display width=96, height=64)
            if(enemy_head_x < 10) dx = 1;
            else if(enemy_head_x > 85) dx = -1;
            if(enemy_head_y < 10) dy = 1;
            else if(enemy_head_y > 55) dy = -1;
            direction_x <= dx;
            direction_y <= dy;
        end
    end
endmodule
