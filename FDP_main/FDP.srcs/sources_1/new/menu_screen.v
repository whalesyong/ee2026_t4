`timescale 1ns / 1ps

module menu_screen(
    input clk,
    input [1:0]state, 
    input [12:0] pixel_index, 
    output [15:0] oled_data
    );

    /*
    Menu selection idx:
    0. start1
    1. start2
    2. 'Normal'
    3. 'Hard'
    */

    flexible_clock frame_rate (
        .CLOCK(clk), 
        .divider(32'd50_000_000), // 
        .SLOW_CLOCK(selector)
    );

    reg [1:0] frame_to_show = 2'b00;

    always @(*) begin
        case (state)
            2'b00: frame_to_show = (selector) ? 2'b00 : 2'b01; // start screen
            2'b01: frame_to_show = 2'b10; // normal
            2'b10: frame_to_show = 2'b11; // hard
            2'b11: frame_to_show = 2'b00; // invalid, show start
            default: frame_to_show = 2'b00; // default to start1
        endcase
    end

    frame_selector frame_selector_inst (
        .clk(clk),
        .frame_select(frame_to_show), // Select frame based on menu selection
        .pixel_addr(pixel_index), // Pixel address for the current frame
        .pixel_data(oled_data) // Output pixel data
    );

endmodule
