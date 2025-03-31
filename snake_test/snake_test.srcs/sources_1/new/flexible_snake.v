`timescale 1ns / 1ps
module flexible_snake(
    input clk,
    input reset,
    input signed [12:0] x_dir,
    input signed [12:0] y_dir,
    input direction_enable,
    input [3:0] food_eaten,    // Only bit[0] used for growth
    output reg [8:0] x_worm [0:47],
    output reg [8:0] y_worm [0:47],
    output reg [5:0] current_size
);
    integer i;
    reg [8:0] head_x, head_y;
    reg signed [12:0] x_vel, y_vel;
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            head_x <= 9'd30;
            head_y <= 9'd30;
            x_vel <= 0;
            y_vel <= -1;
            current_size <= 6'd8;
            for(i = 0; i < 48; i = i + 1) begin
                x_worm[i] <= 0;
                y_worm[i] <= 0;
            end
        end else begin
            if(direction_enable) begin
                x_vel <= x_dir;
                y_vel <= y_dir;
            end
            head_x <= head_x + x_vel;
            head_y <= head_y + y_vel;
            for(i = current_size - 1; i > 0; i = i - 1) begin
                x_worm[i] <= x_worm[i-1];
                y_worm[i] <= y_worm[i-1];
            end
            x_worm[0] <= head_x;
            y_worm[0] <= head_y;
            if(food_eaten[0] && (current_size < 48))
                current_size <= current_size + 1;
        end
    end
endmodule
