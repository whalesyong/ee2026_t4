
`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
//
//  FILL IN THE FOLLOWING INFORMATION:
//  STUDENT A NAME: 
//  STUDENT B NAME:
//  STUDENT C NAME: 
//  STUDENT D NAME:  
//
//////////////////////////////////////////////////////////////////////////////////



module Top_Student (input clk,
                    input [15:0]sw,
                    output [7:0]JB,
                    output [6:0]seg,
                    output [3:0]an,
                    output dp,
                    output [15:0]led,
                    inout PS2Clk, PS2Data);


    wire clk6p25m;
    wire clk12p5m;
    wire clk25m;
    wire clk1hz;
    flexible_clock clk6p25 (clk, 32'd8, clk6p25m);
    flexible_clock clk12p5 (clk, 32'd4, clk12p5m);
    flexible_clock clk25 (clk, 32'd2, clk25m);
    flexible_clock clk1 (clk, 32'd50_000_000, clk1hz);
    
    wire [15:0]oled_data;
    wire fb;
    wire [12:0] pixel_index;
    wire sending_pixels;
    
    wire [11:0] xpos;
    wire [11:0] ypos;
    wire [3:0] zpos;
    wire new_event;
    wire left;
    wire right;
    wire middle;
    wire [6:0] handwritten;
    
    MouseCtl mouse (.clk(clk), .rst(0), .value(0), .setx(0), .sety(0), .setmax_x(0), .setmax_y(0),
             .ps2_clk(PS2Clk), .ps2_data(PS2Data), .xpos(xpos), .ypos(ypos), .zpos(zpos),
             .left(left), .middle(middle), .right(right), .new_event(new_event));
    
    Oled_Display oled (.clk(clk6p25m), .reset(0), .frame_begin(fb), .sending_pixels(sending_pixels),
                        .pixel_index(pixel_index), .cs(JB[0]), .sdin(JB[1]), .sclk(JB[3]),
                        .pixel_data(oled_data), .sample_pixel(),
                        .d_cn(JB[4]), .resn(JB[5]), .vccen(JB[6]), .pmoden(JB[7]));

    paint unit_Paint (
                              .clk_100M(clk),
                              .clk_25M(clk25m),
                              .clk_12p5M(clk12p5m),
                              .clk_6p25M(clk6p25m),
                              .slow_clk(clk1hz),
                              .enable(1),
                              .mouse_x(xpos),
                              .mouse_y(ypos),
                              .mouse_l(left),
                              .reset(right),
                              .pixel_index(pixel_index),
                              .colour_chooser(oled_data),
                              .seg(handwritten),
                              .led(led)
                              );


Task_E4 taske4(sw[13],sw[14],sw[15],clk,handwritten,seg,dp,an);

endmodule



module Task_E4(input sw13, sw14, sw15, CLOCK, input [6:0] handwrittenno, output [6:0] seg, output reg dp, output [3:0] an);
 reg [1:0] anshift = 0;
 wire onekhzclock;
 wire [6:0] draw5;
 wire [6:0] draw1;
 wire [6:0] draw4;
 wire [2:0] state;
 wire [2:0] prevstate;
 reg [6:0] an1hand;
 reg [6:0] an0hand;
 assign state = (!sw13 && !sw14 && !sw15) ? 1 :
       (sw13 && !sw14 && !sw15) ? 2 :
       (!sw15 && sw14) ? 3 :
       (sw15) ? 4 :
     0;   
 assign an[0] = (state == 1 && anshift == 0) ? 0 :
       (state == 2 && anshift == 0) ? 0 :
       (state == 3 && anshift == 0) ? 0 : 
       (state == 4 && anshift == 0) ? 0 : 1;
 assign an[1] = (state == 1 && anshift == 1) ? 0 :
       (state == 2 && anshift == 1) ? 0 :
       (state == 3 && anshift == 1) ? 0 :
       (state == 4 && anshift == 1) ? 0 : 1;
 assign an[2] = (state == 1 && anshift == 2) ? 0 :
       (state == 2 && anshift == 2) ? 0 :
       (state == 3 && anshift == 2) ? 0 :
       (state == 4 && anshift == 2) ? 0 : 1;
 assign an[3] = (state == 1 && anshift == 3) ? 0 :
       (state == 2 && anshift == 3) ? 0 :
       (state == 3 && anshift == 3) ? 0 :
       (state == 4 && anshift == 3) ? 0 : 1;
 assign draw1 = ~7'b0000110;
 assign draw5 = ~7'b1101101;
 assign draw4 = ~7'b1100110;
 

    flexible_clock clock_1khz_inst ( clk, 32'd100_000, onekhzclock );

 assign seg = (anshift == 3 && (state == 1)) ? draw5 :
     (anshift == 2 && (state == 1)) ? draw1 :
     (anshift == 1 && (state == 1)) ? draw1 :
     (anshift == 0 && (state == 1)) ? draw4 : 
     (anshift == 3 && (state == 2)) ? draw5 :
     (anshift == 2 && (state == 2)) ? draw1 :
     (anshift == 1 && (state == 2)) ? an1hand :
     (anshift == 0 && (state == 2)) ? an0hand : 
     (anshift == 0 && (state == 3)) ? an0hand : 
     (anshift == 1 && (state == 3)) ? an1hand :
     (anshift == 2 && (state == 3)) ? draw1 :
     (anshift == 3 && (state == 3)) ? draw5 :
     (anshift == 3 && (state == 4)) ? draw5 :
     (anshift == 2 && (state == 4)) ? draw1 :
     (anshift == 0 && (state == 4)) ? an0hand :
     (anshift == 1 && (state == 4)) ? an1hand :
      ~7'b1111111;
 always @ (posedge CLOCK)
  begin
    an0hand <= (state == 3) ? handwrittenno :
      (state == 1) ? draw4 :
      (state == 2) ? ~7'b0000000 :
       an0hand;
      an1hand <= (state == 4) ? handwrittenno :
      (state == 1) ? draw1 :
      (state == 2) ? ~7'b0000000 :
       an1hand;
  

//   an[0] <= (state == 1 && anshift == 0) ? 0 :
//         (state == 2 && anshift == 0) ? 1 :
//         (state == 3 && anshift == 0) ? 0 : an[0];
//   an[1] <= (state == 1 && anshift == 1) ? 0 :
//         (state == 2 && anshift == 1) ? 1 :
//         (state == 3 && anshift == 1) ? an[1] :
//       an[1];
//   an[2] <= (state == 1 && anshift == 2) ? 0 :
//         (state == 2 && anshift == 2) ? 0 : 1;
//   an[3] <= (state == 1 && anshift == 3) ? 0 :
//         (state == 2 && anshift == 3) ? 0 : 1;

       
    dp <= ((state != 0) && anshift == 2) ? 0 : 1;
//    anshift <= anshift + 1;
  end
 
 always @ (posedge onekhzclock)
  begin
   anshift <= anshift + 1;
  end
endmodule



module flexible_clock(input CLOCK,input [31:0] divider,output reg SLOW_CLOCK = 0);

    reg [31:0] COUNT = 32'b0000;
    always @ (posedge CLOCK)
    begin
    COUNT <= ( COUNT == divider) ? 0 : COUNT + 1;
    SLOW_CLOCK <= (COUNT == 32'b0000)? ~SLOW_CLOCK : SLOW_CLOCK;
    end
    
endmodule