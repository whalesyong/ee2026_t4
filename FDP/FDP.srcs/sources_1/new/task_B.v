
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Task B
// Single-press Up/Center/Down => each changes one square's color exactly once
// If all squares are red or all orange => circle is drawn
//////////////////////////////////////////////////////////////////////////////////

module task_B(
    input clk,
    input btnU, btnC, btnD,
    input taskEnable,
    input [12:0] pixel_index,
    output reg [15:0] pixel_colour_out
);
    parameter WHITE  = 16'b11111_111111_11111;
    parameter RED    = 16'b11111_000000_00000;
    parameter GREEN  = 16'b00000_111111_00000;
    parameter BLUE   = 16'b00000_000000_11111;
    parameter ORANGE = 16'b11111_101101_00000;
    parameter BLACK  = 16'b00000_000000_00000;

    parameter SQUARE_SIZE = 13;
    parameter TOP_Y = 0, MID_Y = 15, BOT_Y = 30;
    parameter START_X = 42;

    // circle center => (48,50), diameter=13
    parameter CX = 48, CY = 50, CD = 13;

    reg [2:0] color_top, color_mid, color_bot;

    // single-press
    reg prevU, prevC, prevD;
    reg [7:0] ignoreU, ignoreC, ignoreD;
    reg [31:0] cntU, cntC_, cntD;

    wire [6:0] x = pixel_index % 96;
    wire [5:0] y = pixel_index / 96;

    wire signed [8:0] dx = x - CX;
    wire signed [8:0] dy = y - CY;

    function [15:0] get_color;
        input [2:0] st;
        case(st)
            0: get_color = WHITE;
            1: get_color = RED;
            2: get_color = GREEN;
            3: get_color = BLUE;
            4: get_color = ORANGE;
            5: get_color = BLACK;
            default: get_color = WHITE;
        endcase
    endfunction

    initial begin
        color_top = 0;
        color_mid = 0;
        color_bot = 0;
        prevU = 0; prevC = 0; prevD = 0;
        ignoreU = 0; ignoreC = 0; ignoreD = 0;
        cntU = 0; cntC_ = 0; cntD = 0;
    end

    always @(posedge clk) begin
        if (!taskEnable) begin
            color_top <= 0; 
            color_mid <= 0; 
            color_bot <= 0;
            prevU <= 0; prevC <= 0; prevD <= 0;
            ignoreU <= 0; ignoreC <= 0; ignoreD <= 0;
            cntU <= 0; cntC_ <= 0; cntD <= 0;
        end else begin
            // Up => top color
            if (ignoreU==0) begin
                if (btnU && !prevU) begin
                    color_top <= (color_top + 1) % 6;
                    ignoreU <= 1;
                    cntU <= 0;
                end
            end else begin
                cntU <= cntU + 1;
                if (!btnU && cntU >= 5000000) begin
                    ignoreU <= 0; 
                    cntU <= 0;
                end
            end
            prevU <= btnU;

            // Center => middle color
            if (ignoreC==0) begin
                if (btnC && !prevC) begin
                    color_mid <= (color_mid + 1) % 6;
                    ignoreC <= 1;
                    cntC_ <= 0;
                end
            end else begin
                cntC_ <= cntC_ + 1;
                if (!btnC && cntC_ >= 5000000) begin
                    ignoreC <= 0;
                    cntC_ <= 0;
                end
            end
            prevC <= btnC;

            // Down => bottom color
            if (ignoreD==0) begin
                if (btnD && !prevD) begin
                    color_bot <= (color_bot + 1) % 6;
                    ignoreD <= 1;
                    cntD <= 0;
                end
            end else begin
                cntD <= cntD + 1;
                if (!btnD && cntD >= 5000000) begin
                    ignoreD <= 0;
                    cntD <= 0;
                end
            end
            prevD <= btnD;
        end
    end

    always @(*) begin
        pixel_colour_out = BLACK;
        if (taskEnable) begin
            // 3 squares
            if (x >= START_X && x < START_X + SQUARE_SIZE &&
                y >= TOP_Y   && y < TOP_Y + SQUARE_SIZE)
                pixel_colour_out = get_color(color_top);
            else if (x >= START_X && x < START_X + SQUARE_SIZE &&
                     y >= MID_Y   && y < MID_Y + SQUARE_SIZE)
                pixel_colour_out = get_color(color_mid);
            else if (x >= START_X && x < START_X + SQUARE_SIZE &&
                     y >= BOT_Y   && y < BOT_Y + SQUARE_SIZE)
                pixel_colour_out = get_color(color_bot);

            // If all 3 squares are red or all 3 are orange => draw circle
            if ((color_top==1 && color_mid==1 && color_bot==1) ||
                (color_top==4 && color_mid==4 && color_bot==4)) begin
                if ((dx*dx + dy*dy) <= ((CD>>1)*(CD>>1))) begin
                    pixel_colour_out = (color_top==1) ? RED : ORANGE;
                end
            end
        end
    end

endmodule
