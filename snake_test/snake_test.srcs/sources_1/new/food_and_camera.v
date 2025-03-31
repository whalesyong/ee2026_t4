`timescale 1ns / 1ps
module food_and_camera (
    input clk,
    input reset,
    input [9:0] userwormheadx,
    input [9:0] userwormheady,
    input [9:0] enemywormheadx0,
    input [9:0] enemywormheady0,
    input [9:0] enemywormheadx1,
    input [9:0] enemywormheady1,
    input [9:0] enemywormheadx2,
    input [9:0] enemywormheady2,
    output reg [9:0] cam_offset_x,
    output reg [9:0] cam_offset_y,
    output reg [3:0] reg_food_eaten,
    output reg [15:0] reg_food_location_0,
    output reg [15:0] reg_food_location_1,
    output reg [15:0] reg_food_location_2,
    output reg [15:0] reg_food_location_3,
    output reg [15:0] reg_food_location_4,
    output reg [15:0] reg_food_location_5,
    output reg [15:0] reg_food_location_6,
    output reg [15:0] reg_food_location_7
);
    parameter SCREEN_WIDTH  = 96;
    parameter SCREEN_HEIGHT = 64;
    reg [15:0] rng_seed = 16'hACE1;
    reg [9:0] food_x [0:7];
    reg [9:0] food_y [0:7];
    reg [1:0] food_type [0:7];
    integer i;
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            reg_food_eaten <= 0;
            rng_seed <= 16'hBEEF;
            for (i = 0; i < 8; i = i + 1) begin
                food_x[i] <= 10 + i*8;
                food_y[i] <= 20 + i*4;
                food_type[i] <= i % 3;
            end
        end else begin
            reg_food_eaten <= 0;
            for (i = 0; i < 8; i = i + 1) begin
                if ((userwormheadx == food_x[i]) && (userwormheady == food_y[i]))
                    reg_food_eaten[0] <= 1;
                else if ((enemywormheadx0 == food_x[i]) && (enemywormheady0 == food_y[i]))
                    reg_food_eaten[1] <= 1;
                else if ((enemywormheadx1 == food_x[i]) && (enemywormheady1 == food_y[i]))
                    reg_food_eaten[2] <= 1;
                else if ((enemywormheadx2 == food_x[i]) && (enemywormheady2 == food_y[i]))
                    reg_food_eaten[3] <= 1;
                if (reg_food_eaten != 0) begin
                    rng_seed <= {rng_seed[14:0], rng_seed[15] ^ rng_seed[13]};
                    food_x[i] <= 10 + (rng_seed[7:0] % 80);
                    food_y[i] <= 10 + (rng_seed[6:0] % 40);
                    food_type[i] <= rng_seed[10:9];
                end
            end
            reg_food_location_0 <= {food_type[0], food_x[0], food_y[0]};
            reg_food_location_1 <= {food_type[1], food_x[1], food_y[1]};
            reg_food_location_2 <= {food_type[2], food_x[2], food_y[2]};
            reg_food_location_3 <= {food_type[3], food_x[3], food_y[3]};
            reg_food_location_4 <= {food_type[4], food_x[4], food_y[4]};
            reg_food_location_5 <= {food_type[5], food_x[5], food_y[5]};
            reg_food_location_6 <= {food_type[6], food_x[6], food_y[6]};
            reg_food_location_7 <= {food_type[7], food_x[7], food_y[7]};
            if (userwormheadx > SCREEN_WIDTH/2)
                cam_offset_x <= userwormheadx - SCREEN_WIDTH/2;
            else
                cam_offset_x <= 0;
            if (userwormheady > SCREEN_HEIGHT/2)
                cam_offset_y <= userwormheady - SCREEN_HEIGHT/2;
            else
                cam_offset_y <= 0;
        end
    end
endmodule
