`timescale 1ns / 1ps

module test_food_camera(
    input clk,
    input reset,
    output [8:0] food_x,
    output [8:0] food_y,
    output food_eaten,
    output [8:0] camera_offset_x,
    output [8:0] camera_offset_y
);

    reg [8:0] xpos = 20;
    reg [8:0] ypos = 20;

    reg [31:0] counter = 0;

    // Simulate snake moving diagonally across the screen
    always @(posedge clk) begin
        if (reset) begin
            xpos <= 20;
            ypos <= 20;
            counter <= 0;
        end else begin
            counter <= counter + 1;
            if (counter % 1000000 == 0) begin
                xpos <= xpos + 1;
                ypos <= ypos + 1;
            end
        end
    end

    food_and_camera dut (
        .clk(clk),
        .reset(reset),
        .xpos(xpos),
        .ypos(ypos),
        .food_x(food_x),
        .food_y(food_y),
        .food_eaten(food_eaten),
        .camera_offset_x(camera_offset_x),
        .camera_offset_y(camera_offset_y)
    );

endmodule
