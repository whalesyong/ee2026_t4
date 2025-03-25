`timescale 1ns / 1ps

module food_and_camera(
    input clk,
    input reset,
    input [8:0] xpos,
    input [8:0] ypos,
    output reg [8:0] food_x,
    output reg [8:0] food_y,
    output reg food_eaten,
    output [8:0] camera_offset_x,
    output [8:0] camera_offset_y
);

    // Parameters for world and screen dimensions
    parameter WORLD_WIDTH = 500;
    parameter WORLD_HEIGHT = 500;
    parameter SCREEN_WIDTH = 96;
    parameter SCREEN_HEIGHT = 64;

    // Center the camera on the snake unless near map edges
    assign camera_offset_x = (xpos < SCREEN_WIDTH/2) ? 0 :
                             (xpos > WORLD_WIDTH - SCREEN_WIDTH/2) ? (WORLD_WIDTH - SCREEN_WIDTH) :
                             xpos - SCREEN_WIDTH/2;

    assign camera_offset_y = (ypos < SCREEN_HEIGHT/2) ? 0 :
                             (ypos > WORLD_HEIGHT - SCREEN_HEIGHT/2) ? (WORLD_HEIGHT - SCREEN_HEIGHT) :
                             ypos - SCREEN_HEIGHT/2;

    reg [31:0] rand_seed = 32'hA5A5A5A5;
    wire [8:0] rand_x = rand_seed[8:0] % (WORLD_WIDTH - 8);
    wire [8:0] rand_y = rand_seed[17:9] % (WORLD_HEIGHT - 8);

    // Simple PRNG (Linear Feedback Shift Register)
    always @(posedge clk) begin
        if (reset) begin
            food_x <= 9'd50;
            food_y <= 9'd30;
            rand_seed <= 32'hA5A5A5A5;
            food_eaten <= 0;
        end else begin
            // Check collision with snake head
            if ((xpos >= food_x && xpos <= food_x + 4) &&
                (ypos >= food_y && ypos <= food_y + 4)) begin
                food_eaten <= 1;
                rand_seed <= rand_seed ^ (rand_seed << 13);
                rand_seed <= rand_seed ^ (rand_seed >> 17);
                rand_seed <= rand_seed ^ (rand_seed << 5);
                food_x <= rand_x;
                food_y <= rand_y;
            end else begin
                food_eaten <= 0;
            end
        end
    end

endmodule