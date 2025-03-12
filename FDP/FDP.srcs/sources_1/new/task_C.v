module task_C (
    input clk, 
    input btnC, btnL,
    input taskEnable,
    input [12:0] pixel_index,
    output [15:0] pixel_colour_out
    );

wire clk_25MHz, clk_45Hz;
wire fb;
wire send_pix;
wire samp_pix;
wire [6:0] x;
wire [5:0] y;

reg [15:0] oled_colour = 16'b00000_000000_00000;

custom_timer unit_clock_25 (clk, 2, clk_25MHz);
custom_timer unit_clock_45 (clk, 1111111, clk_45Hz);

//Oled_Display oled_unit_a (
//    .clk(clk6p25m), 
//    .reset(btnL), 
//    .frame_begin(fb), 
//    .sending_pixels(send_pix),
//    .sample_pixel(samp_pix),
//    .pixel_index(pixel_index), 
//    .pixel_data(oled_colour), 
//    .cs(JB[0]), 
//    .sdin(JB[1]), 
//    .sclk(JB[3]), 
//    .d_cn(JB[4]), 
//    .resn(JB[5]), 
//    .vccen(JB[6]),
//    .pmoden(JB[7])
//    );
  
  assign x = pixel_index % 96;
  assign y = pixel_index / 96;
  reg[6:0] x_var = 7'd85;
  reg[5:0] y_var = 7'd11;
  reg[2:0] step_id = 3'd0;
  reg start_id = 0;
  
  assign pixel_colour_out = oled_colour;
  initial begin
      step_id = 0;
  end
  
  always @(posedge clk_25MHz) begin   
      oled_colour <= 16'b00000_000000_00000;
  
      if (x >= 84 && x <= 94 && y >= 0 && y <= 10) begin
          oled_colour <= 16'b11111_111111_00000;
      end
  
      if (step_id == 1) begin
          if (x >= 84 && x <= 94 && y >= 11 && y <= y_var) begin
              oled_colour <= 16'b11111_111111_00000;
          end
      end
  
      if (step_id >= 2) begin
          if (x >= 84 && x <= 94 && y >= 11 && y <= 63) begin  // Preserve step 2
              oled_colour <= 16'b11111_111111_00000;
          end
      end
      if (step_id == 2) begin
          // Expand left at the bottom
          if (x >= x_var && x <= 94 && y >= 53 && y <= 63) begin
              oled_colour <= 16'b11111_111111_00000;
          end
      end
  
      if (step_id >= 3) begin
          if (x >= 44 && x <= 94 && y >= 53 && y <= 63) begin  // Preserve step 3
              oled_colour <= 16'b11111_111111_00000;
          end
      end
      if (step_id == 3) begin
          // Draw the new part growing upwards
          if (x >= 44 && x <= 54 && y >= y_var && y <= 53) begin
              oled_colour <= 16'b11111_111111_00000;
          end
      end
  
      if (step_id >= 4) begin
          if (x >= 44 && x <= 54 && y >= 27 && y <= 53) begin // Preserve step 4
              oled_colour <= 16'b11111_111111_00000;
          end
      end
      // Expanding Right (Middle Row)
      if (step_id == 4) begin
          if (x >= 54 && x <= x_var && y >= 27 && y <= 37) begin  
              oled_colour <= 16'b11111_111111_00000;
          end
      end
  
      if (step_id >= 5) begin
            if (x >= 54 && x <= 72 && y >= 27 && y <= 37) begin  // Preserve step 4
                  oled_colour <= 16'b11111_111111_00000;
              end
      end
      if (step_id == 5) begin
            // Draw the new part growing upwards
            if (x >= 62 && x <= 72 && y >= y_var && y <= 27) begin 
                oled_colour <= 16'b11111_111111_00000;
            end
      end
      if (step_id >= 6) begin
          if (x >= 62 && x <= 72 && y >= 0 && y <= 27) begin  // Preserve step 5
                oled_colour <= 16'b11111_111111_00000;
            end
      end
      if (step_id == 6) begin
          // Draw the last part growing right
          if (x >= 71 && x <= x_var && y >= 0 && y <= 10) begin
              oled_colour <= 16'b11111_111111_00000;
          end
      end
    if (step_id >= 7) begin
        if (x >= 71 && x <= 84 && y >= 0 && y <= 10) begin  // Preserve step 6
              oled_colour <= 16'b11111_111111_00000;
          end
    end
end
    
always @ (posedge clk_45Hz) begin
    start_id <= 0;
    if (taskEnable == 1 && btnC) begin
        start_id <= 1;
    end
    if (start_id == 1) begin
        step_id = 3'd1;
    end
    if (step_id == 1) begin // down
        y_var <= y_var + 1;
        if (y_var >= 63) begin
            y_var <= 7'd53;
            step_id <= 3'd2;
        end
    end else if (step_id == 2) begin // left
        x_var <= x_var - 1;
        if (x_var <= 44) begin
            x_var <= 7'd54;
            step_id <= 3'd3;
        end
    end else if (step_id == 3) begin // up
        y_var <= y_var - 1;
        if (y_var <= 27) begin
            y_var <= 7'd27;
            step_id <= 3'd4;
        end
    end else if (step_id == 4) begin // right
        x_var <= x_var + 1;
        if (x_var >= 71) begin
             x_var <= 7'd71;
            step_id <= 3'd5;
        end
    end else if (step_id == 5) begin // up
        y_var <= y_var - 1;
        if (y_var <= 0) begin
            y_var <= 7'd0;
            step_id <= 3'd6;
        end
    end else if (step_id == 6) begin // right
        x_var <= x_var + 1;
        if (x_var >= 84) begin
            x_var <= 7'd84;
            step_id <= 3'd7;
        end
    end
end
     
endmodule