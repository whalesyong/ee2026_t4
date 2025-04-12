`timescale 1ns / 1ps

module ss_display(seg, an, clk, num);
  output reg [7:0] seg;
  input wire clk;
  output reg [3:0] an;
  input wire [15:0] num;  // Changed to 16-bit to handle up to 9999

  reg [1:0] counter = 0;  // Only needs to count 0-3
  
  wire [3:0] digit[3:0];  // Each digit is 4 bits (0-9)
  
  assign digit[0] = num % 10;
  assign digit[1] = (num / 10) % 10;
  assign digit[2] = (num / 100) % 10;
  assign digit[3] = num / 1000;

  always @(posedge clk) begin
    case (counter) 
      0: an = 4'b1110;  // Activate rightmost digit
      1: an = 4'b1101;
      2: an = 4'b1011;
      3: an = 4'b0111;  // Activate leftmost digit
    endcase
    
    case (digit[counter])
      0: seg = 8'b11000000;
      1: seg = 8'b11111001;
      2: seg = 8'b10100100;
      3: seg = 8'b10110000;
      4: seg = 8'b10011001;
      5: seg = 8'b10010010;
      6: seg = 8'b10000010;
      7: seg = 8'b11111000;
      8: seg = 8'b10000000;
      9: seg = 8'b10010000;
      default: seg = 8'b01111111;  // Blank display for invalid digits
    endcase

    counter <= counter + 1;  // Will automatically wrap from 3 to 0
  end

endmodule