`timescale 1ns / 1ps
module flexible_worm(
    input clk, 
    input btnU, btnD, btnL, btnR,
    output [7:0]JB,
    output led
    );
    
    wire clk_6p25m;
    wire frame_beg;
    wire sending_pixel;
    wire sample_pixel;
    reg [15:0] pixel_colour;
    wire [12:0] pixel_index;
    wire rst;
    
    wire [7:0] pixel_x;
    wire [7:0] pixel_y;
    
    PixelToXY converter_mod (
             .pixel_index(pixel_index),
             .x(pixel_x),
             .y(pixel_y)
         );
    
    flexible_clk clk_mod6p25m(
             .CLOCK(clk),
             .n(8),
             .SLOW_CLOCK(clk_6p25m)
         );
    
    Oled_Display display_mod (  .clk(clk_6p25m),
                                 .reset(0), 
                                 .frame_begin(frame_beg),
                                 .sending_pixels(sending_pixel),
                                 .sample_pixel(sample_pixel),
                                 .pixel_index(pixel_index), // output
                                 .pixel_data(pixel_colour),   
                                 .cs(JB[0]),
                                 .sdin(JB[1]),
                                 .sclk(JB[3]),
                                 .d_cn(JB[4]),
                                 .resn(JB[5]), 
                                 .vccen(JB[6]),
                                 .pmoden(JB[7])                            
                               );


reg [6:0] worm_x [0:47]; // Stores the x-coordinates of the worm
reg [5:0] worm_y [0:47]; // Stores the y-coordinates of the worm
integer i;

reg btnR_sync_0, btnR_sync_1, btnR_prev, btnR_stable;
reg btnL_sync_0, btnL_sync_1, btnL_prev, btnL_stable;
reg btnD_sync_0, btnD_sync_1, btnD_prev, btnD_stable;
reg btnU_sync_0, btnU_sync_1, btnU_prev, btnU_stable;

always @ (posedge clk_6p25m) begin
   // Button debouncing
   btnR_sync_0 <= btnR;
   btnR_sync_1 <= btnR_sync_0;
   if (btnR_sync_1 && !btnR_prev) begin
       btnR_stable <= 1;
   end else begin
       btnR_stable <= 0;
   end
   btnR_prev <= btnR_sync_1;
   
   btnL_sync_0 <= btnL;
   btnL_sync_1 <= btnL_sync_0;
   if (btnL_sync_1 && !btnL_prev) begin
       btnL_stable <= 1;
   end else begin
       btnL_stable <= 0;
   end
   btnL_prev <= btnL_sync_1;
   
   btnD_sync_0 <= btnD;
   btnD_sync_1 <= btnD_sync_0;
   if (btnD_sync_1 && !btnD_prev) begin
       btnD_stable <= 1;
   end else begin
       btnD_stable <= 0;
   end
   btnD_prev <= btnD_sync_1;
   
   btnU_sync_0 <= btnU;
   btnU_sync_1 <= btnU_sync_0;
   if (btnU_sync_1 && !btnU_prev) begin
       btnU_stable <= 1;
   end else begin
       btnU_stable <= 0;
   end
   btnU_prev <= btnU_sync_1;

   // Start OLED
   pixel_colour <= 0;
   
   // Initialize worm in the top-left corner
   if (worm_x[0] == 0 && worm_y[0] == 0) begin
       for (i = 0; i < 48; i = i + 1) begin
           worm_x[i] <= i; // Initially in a row
           worm_y[i] <= 0;
       end
   end
   
   // Draw the worm body
   for (i = 46; i >= 0; i = i - 1) begin
       if (pixel_x == worm_x[i] && pixel_y == worm_y[i]) begin
           pixel_colour <= 16'h1111;
       end
   end
   // Draw the worm head
   if (pixel_x == worm_x[47] && pixel_y == worm_y[47]) begin
       pixel_colour <= 16'b11111_111111_11111;
   end
   
   // Move worm, wrap around when reaching screen width
   if (btnR_stable) begin
       for (i = 46; i >= 0; i = i - 1) begin
          worm_x[i] <= worm_x[i+1]; // Body takes next position
          worm_y[i] <= worm_y[i+1];
      end
      worm_x[47] <= worm_x[47] + 1;
   end
   if (btnL_stable) begin
       for (i = 46; i >= 0; i = i - 1) begin
          worm_x[i] <= worm_x[i+1]; // Body takes next position
          worm_y[i] <= worm_y[i+1];
      end
      worm_x[47] <= worm_x[47] - 1;
   end
   if (btnU_stable) begin
       for (i = 46; i >= 0; i = i - 1) begin
           worm_x[i] <= worm_x[i+1]; // Body takes next position
           worm_y[i] <= worm_y[i+1];
       end
       worm_y[47] <= worm_y[47] - 1; // Move head up
   end
   if (btnD_stable) begin
       for (i = 46; i > 0; i = i - 1) begin
           worm_x[i] <= worm_x[i+1]; // Body takes next position
           worm_y[i] <= worm_y[i+1];
       end
       worm_y[47] <= worm_y[47] + 1; // Move head down
   end
end

endmodule