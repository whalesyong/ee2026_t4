module task_D (
    input clk, 
    input btnU, btnL, btnR, btnD,
    input taskEnable,  // New input to enable/disable the module
    input [12:0] pixel_index,
    output [15:0] pixel_colour_out,
    output [7:0]JB
);
    // red rectangle 
    localparam RECT_X = 66; // top left corner of rect
    localparam RECT_Y = 0;
    localparam RECT_LENGTH = 30;
    localparam RECT_HEIGHT = 30;
    
    localparam SQUARE_LENGTH = 10;
    
    //registers containing the pos of top left pixel of square. 
    reg [7:0] square_x;
    reg [7:0] square_y;
    //register containing direction of movement. 
    reg [3:0] square_direction;
    
    // Initial values moved to always block for reset functionality
    
    wire [7:0] pixel_x;
    wire [7:0] pixel_y;
    
    //instantiate 6.25MHz clock 
    wire wire_clock_6p25m;
    flexible_clock clock_6p25mhz(clk, 8, wire_clock_6p25m);
    
    //instantiate 25 MHz Clock 
    wire wire_clock_25m;
    flexible_clock clock_25m(clk, 2, wire_clock_25m);
    
    //instantiate 1kHz clock
    wire wire_clock_1k;
    flexible_clock clock_1k(clk, 50000, wire_clock_1k);
    
    //instantiate 30Hz Clock 
    wire wire_clock_30;
    flexible_clock clock_30(clk, 1666666, wire_clock_30);//originally 1666666
    

    
    reg[15:0] oled_data;
    wire fb;
    //wire [12:0] pixel_index;
    wire sending_pixel;
    wire sample_pixel;

    assign pixel_colour_out = oled_data;
    
    //init converter
    PixelToXY converter (
        .pixel_index(pixel_index), // input 
        .x(pixel_x), // outputs
        .y(pixel_y)
    );
    
    initial begin
        square_x = 8'd0;
        square_y = 8'd53;
        square_direction = 4'b0000;
    end
    
    // Oled_Display oled_unit (
    //   .clk(wire_clock_6p25m), 
    //   .reset(0), 
    //   .frame_begin(fb), 
    //   .sending_pixels(sending_pixel),
    //   .sample_pixel(sample_pixel), 
    //   .pixel_index(pixel_index), 
    //   .pixel_data(oled_data), 
    //   .cs(JB[0]), 
    //   .sdin(JB[1]), 
    //   .sclk(JB[3]), 
    //   .d_cn(JB[4]), 
    //   .resn(JB[5]), 
    //   .vccen(JB[6]),
    //   .pmoden(JB[7])
    // );

    
    always @ (posedge wire_clock_25m) begin 
        if (taskEnable) begin
            //red rectangle
            if ((pixel_x >= RECT_X) && (pixel_x < RECT_X + RECT_LENGTH) && (pixel_y >= RECT_Y) && (pixel_y < RECT_Y + RECT_HEIGHT)) begin
                oled_data <= 16'b11111_000000_00000; 
            end else if ((pixel_x >= square_x) && (pixel_x < square_x + SQUARE_LENGTH) && (pixel_y >= square_y) && (pixel_y < square_y + SQUARE_LENGTH)) begin 
                oled_data <= 16'b00000_111111_00000;
            end else begin
                oled_data <= 16'h0000;
            end
        end else begin
            // When task is disabled, set the screen to black
            oled_data <= 16'h0000;
        end
    end
    
   /* 
    // Reset logic for square position
    always @(posedge wire_clock_1k) begin //changed clk to * 
        if (!taskEnable) begin
            // Reset values when module is disabled
            square_x <= 8'd0;
            square_y <= 8'd53;
            square_direction <= 4'b0000;
        end
    end*/
// Declare a flag to track if reset is needed
    reg reset_needed = 1;
    reg [3:0] button_direction;
    
    // Sample buttons at 1kHz
    always @(posedge wire_clock_1k) begin
        if (!taskEnable) begin
            button_direction <= 4'b0000;
        end else begin
            if (btnU) 
                button_direction <= 4'b1000;
            else if (btnR)
                button_direction <= 4'b0100;
            else if (btnL)
                button_direction <= 4'b0010;
            else if (btnD)
                button_direction <= 4'b0001;
            // Note: No 'else' here, so it remembers the last button pressed
        end
    end
    // Handle both position and direction in one always block
    always @(posedge wire_clock_30) begin
        if (!taskEnable || reset_needed) begin
            // Reset values when module is disabled or reset is needed
            square_x <= 8'd0;
            square_y <= 8'd53;
            square_direction <= 4'b0000;
            
            // Clear the reset flag if we were enabled
            if (taskEnable) begin
                reset_needed <= 0;
            end else begin
                reset_needed <= 1;
            end
        end else begin
            //copy button direction to square direction 
            square_direction <= button_direction;            
            
            case (square_direction)
                4'b1000: begin // Move up
                    if ((square_y > 0) && 
                        !((square_x < (RECT_X + RECT_LENGTH)) &&
                        ((square_x + SQUARE_LENGTH) > RECT_X) &&
                        ((square_y - 1) < (RECT_Y + RECT_HEIGHT)) &&
                        (((square_y - 1) + SQUARE_LENGTH) > RECT_Y)))
                        square_y <= square_y - 1;
                end
                
                4'b0001: begin // Move down
                    if ((square_y < (64 - SQUARE_LENGTH)) &&
                        !((square_x < (RECT_X + RECT_LENGTH)) &&
                        ((square_x + SQUARE_LENGTH) > RECT_X) &&
                        ((square_y + 1) < (RECT_Y + RECT_HEIGHT)) &&
                        (((square_y + 1) + SQUARE_LENGTH) > RECT_Y)))
                        square_y <= square_y + 1;
                end
                
                4'b0010: begin // Move left
                    if ((square_x > 0) &&
                        !(((square_x - 1) < (RECT_X + RECT_LENGTH)) &&
                        (((square_x - 1) + SQUARE_LENGTH) > RECT_X) &&
                        (square_y < (RECT_Y + RECT_HEIGHT)) &&
                        ((square_y + SQUARE_LENGTH) > RECT_Y)))
                        square_x <= square_x - 1;
                end
                
                4'b0100: begin // Move right
                    if ((square_x < (96 - SQUARE_LENGTH)) &&
                        !(((square_x + 1) < (RECT_X + RECT_LENGTH)) &&
                        (((square_x + 1) + SQUARE_LENGTH) > RECT_X) &&
                        (square_y < (RECT_Y + RECT_HEIGHT)) &&
                        ((square_y + SQUARE_LENGTH) > RECT_Y)))
                        square_x <= square_x + 1;
                end
            endcase
        end
    end
    

endmodule


//dependencies for the above module:
module PixelToXY (
    input  wire [15:0] pixel_index, // 16-bit pixel index
    output reg  [7:0] x,            // X coordinate (0 to 95)
    output reg  [7:0] y             // Y coordinate (0 to 63)
);
    localparam SCREEN_WIDTH = 96;
    
    always @(*) begin
        y = pixel_index / SCREEN_WIDTH; 
        x = pixel_index % SCREEN_WIDTH; 
    end
endmodule

module flexible_clock(input CLOCK, input [31:0]n, output reg LED = 0 );

// start a counter that counts up to n
// when it equals n, reset the counter and invert the signal 
reg [31:0] counter = 0;
always @ (posedge CLOCK) begin
    
    if (counter == n-1) begin 
        counter <= 0;
        LED <= ~LED;
    end
    else begin
        counter <= counter + 1;
    end
end 
endmodule