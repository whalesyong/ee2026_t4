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


module task_C (
    input clk, 
    input btnC, btnL,
    input [12:0] pixel_index,
    output [15:0] pixel_colour_out
    );

wire clk6p25m, clk_25MHz, clk_45Hz;
wire fb;
wire send_pix;
wire samp_pix;
wire [12:0] pixel_index;
wire [6:0] x;
wire [5:0] y;

reg [15:0] oled_colour = 16'b00000_000000_00000;

flexible_clock_divider unit_clock_6p25 (clk, 7, clk6p25m);
flexible_clock_divider unit_clock_25 (clk, 2, clk_25MHz);
flexible_clock_divider unit_clock_45 (clk, 1111111, clk_45Hz);

// Oled_Display oled_unit_a (
//     .clk(clk6p25m), 
//     .reset(btnL), 
//     .frame_begin(fb), 
//     .sending_pixels(send_pix),
//     .sample_pixel(samp_pix),
//     .pixel_index(pixel_index), 
//     .pixel_data(oled_colour), 
//     .cs(JB[0]), 
//     .sdin(JB[1]), 
//     .sclk(JB[3]), 
//     .d_cn(JB[4]), 
//     .resn(JB[5]), 
//     .vccen(JB[6]),
//     .pmoden(JB[7])
//     );
  
  assign x = pixel_index % 96;
  assign y = pixel_index / 96;
  reg[6:0] x_var = 7'd85;
  reg[5:0] y_var = 7'd11;
  reg[2:0] step_id = 3'd0;
  
  always @(posedge clk_25MHz) begin
      oled_colour <= 16'b00000_000000_00000;
  
      // Step 0: Initial Yellow Square (Top-Right)
      if (x >= 85 && x <= 95 && y >= 0 && y <= 10) begin
          oled_colour <= 16'b11111_111111_00000;
      end
  
      // Step 1: Growing Down (Right Rectangle)
      if (step_id >= 1) begin
          if (x >= 85 && x <= 95 && y >= 11 && y <= y_var) begin
              oled_colour <= 16'b11111_111111_00000;
          end
      end
  
      // Step 2: Expanding Left (Bottom Rectangle)
      if (step_id >= 2) begin
          // Preserve right rectangle
          if (x >= 85 && x <= 95 && y >= 11 && y <= 63) begin
              oled_colour <= 16'b11111_111111_00000;
          end
          // Expand left at the bottom
          if (x >= x_var && x <= 95 && y >= 53 && y <= 63) begin
              oled_colour <= 16'b11111_111111_00000;
          end
      end
  
      // Step 3: Growing Up (Left Rectangle)
      if (step_id >= 3) begin
          if (x >= 47 && x <= 95 && y >= 53 && y <= 63) begin  // Preserve bottom rectangle
              oled_colour <= 16'b11111_111111_00000;
          end
          // Draw the new part growing upwards
          if (x >= 47 && x <= 57 && y >= y_var && y <= 53) begin
              oled_colour <= 16'b11111_111111_00000;
          end
      end
  
      // Step 4: Expanding Right (Middle Row)
      if (step_id >= 4) begin
          if (x >= 47 && x <= 57 && y >= 27 && y <= 53) begin  // Preserve left
              oled_colour <= 16'b11111_111111_00000;
          end
          if (x >= 57 && x <= x_var && y >= 27 && y <= 37) begin  // New expansion to the right
              oled_colour <= 16'b11111_111111_00000;
          end
      end
  
      // Step 5: Growing Up to the Top (Middle Column)
      if (step_id >= 5) begin
            if (x >= 57 && x <= 72 && y >= 27 && y <= 37) begin  // Preserve middle
                  oled_colour <= 16'b11111_111111_00000;
              end
            // Draw the new part growing upwards
            if (x >= 62 && x <= 72 && y >= y_var && y <= 27) begin
                oled_colour <= 16'b11111_111111_00000;
            end
      end
  
      // Step 6: Expanding Right (Final Stretch)
      if (step_id >= 6) begin
          if (x >= 62 && x <= 72 && y >= 0 && y <= 27) begin  // Preserve step 5
                oled_colour <= 16'b11111_111111_00000;
            end
          // Draw the last part growing right
          if (x >= 72 && x <= x_var && y >= 0 && y <= 10) begin
              oled_colour <= 16'b11111_111111_00000;
          end
      end
  end

  always @ (posedge clk_45Hz) 
      
    if (btnC) begin
        step_id <= 3'd1;
    end else if (step_id == 1) begin // down
        y_var <= y_var + 1;
        if (y_var >= 63) begin
            step_id <= 3'd2;
            y_var <= 7'd53;
        end
    end else if (step_id == 2) begin // left
        x_var <= x_var - 1;
        if (x_var <= 47) begin
            step_id <= 3'd3;
            x_var <= 7'd57;
        end
    end else if (step_id == 3) begin // up
        y_var <= y_var - 1;
        if (y_var <= 27) begin
            step_id <= 3'd4;
            y_var <= 7'd27;
        end
    end else if (step_id == 4) begin // right
        x_var <= x_var + 1;
        if (x_var >= 72) begin
            step_id <= 3'd5;
             x_var <= 7'd72;
        end
    end else if (step_id == 5) begin // up
        y_var <= y_var - 1;
        if (y_var <= 0) begin
            step_id <= 3'd6;
            y_var <= 7'd0;
        end
    end else if (step_id == 6) begin // right
        x_var <= x_var + 1;
        if (x_var >= 85) begin
            step_id <= 3'd7;
            y_var <= 7'd85;
        end
    end
     
endmodule