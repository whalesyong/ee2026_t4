`timescale 1ns / 1ps
module Top_Student (
    input         clk,                // 100 MHz clock
    input         btnC,               // center pushbutton toggles menu/game mode
    input         btnU, btnD, btnL, btnR,
    input  [15:0] sw,                 // switches (for testing direction, etc.)
    inout         PS2Clk, PS2Data,    // PS/2 mouse signals (if available)
    output [7:0]  JB,                 // Pmod OLED signals
    output [7:0]  seg,                // 7-seg display (for score display)
    output [3:0]  an,                 // 7-seg anodes
    output reg [15:0] led            // LEDs (for score/debug)
);

  // Generate slower clocks using flexible_clock
  wire clk6p25m;
  wire clk400hz;
  flexible_clock clk_gen_6p25m (
      .CLOCK(clk),
      .divider(32'd8),
      .SLOW_CLOCK(clk6p25m)
  );
  flexible_clock clk_gen_400hz (
      .CLOCK(clk6p25m),
      .divider(32'd125000),
      .SLOW_CLOCK(clk400hz)
  );

  // Menu/Game mode: mode = 0 means menu, 1 means game.
  // A simple debounced toggle using btnC.
  reg mode;
  reg btnC_prev;
  always @(posedge clk) begin
      if (btnC && !btnC_prev)
          mode <= ~mode;
      btnC_prev <= btnC;
  end

  // (For a full design, one would instantiate a proper MouseCtl and mouse_direction module.
  // For now we simulate user direction using switches.)
  // Map sw[0] for right, sw[1] for left, sw[2] for up, sw[3] for down.
  wire signed [12:0] user_dir_x, user_dir_y;
  assign user_dir_x = sw[0] ? 5 : (sw[1] ? -5 : 0);
  assign user_dir_y = sw[2] ? -5 : (sw[3] ? 5 : 0);

  // Instantiate the user snake module (flexible_snake)
  wire [8:0] user_x_worm [0:47];
  wire [8:0] user_y_worm [0:47];
  wire [5:0] user_size;
  // Food-eaten signal for user: assume food_eaten_all[0] corresponds to the user.
  wire [3:0] food_eaten_all;
  wire user_food = food_eaten_all[0];
  flexible_snake user_snake (
      .clk(clk400hz),
      .reset(~mode),         // In game mode (mode=1), reset=0
      .x_dir(user_dir_x),
      .y_dir(user_dir_y),
      .direction_enable(1'b1),
      .food_eaten({3'b000, user_food}),
      .x_worm(user_x_worm),
      .y_worm(user_y_worm),
      .current_size(user_size)
  );

  // Instantiate the enemy snake (also flexible_snake)
  wire [8:0] enemy_x_worm [0:47];
  wire [8:0] enemy_y_worm [0:47];
  wire [5:0] enemy_size;
  // Improved enemy AI
  wire signed [12:0] enemy_dir_x, enemy_dir_y;
  // Use first food location as target (defined later)
  enemy_ai enemy_ai_inst (
      .clk(clk),
      .reset(~mode),
      .food_x({1'b0, food_location_0[13:5]}),
      .food_y({5'b0, food_location_0[4:0]}),
      .enemy_head_x({1'b0, enemy_x_worm[0]}),
      .enemy_head_y({1'b0, enemy_y_worm[0]}),
      .direction_x(enemy_dir_x),
      .direction_y(enemy_dir_y)
  );
  flexible_snake enemy_snake (
      .clk(clk400hz),
      .reset(~mode),
      .x_dir(enemy_dir_x),
      .y_dir(enemy_dir_y),
      .direction_enable(1'b1),
      .food_eaten(4'b0000),
      .x_worm(enemy_x_worm),
      .y_worm(enemy_y_worm),
      .current_size(enemy_size)
  );

  // Instantiate food and camera module
  wire [9:0] cam_offset_x, cam_offset_y;
  wire [15:0] food_location_0, food_location_1, food_location_2, food_location_3;
  wire [15:0] food_location_4, food_location_5, food_location_6, food_location_7;
  food_and_camera food_cam (
      .clk(clk),
      .reset(~mode),
      .userwormheadx({1'b0, user_x_worm[0]}),
      .userwormheady({1'b0, user_y_worm[0]}),
      .enemywormheadx0({1'b0, enemy_x_worm[0]}),
      .enemywormheady0({1'b0, enemy_y_worm[0]}),
      .enemywormheadx1({1'b0, enemy_x_worm[0]}),
      .enemywormheady1({1'b0, enemy_y_worm[0]}),
      .enemywormheadx2({1'b0, enemy_x_worm[0]}),
      .enemywormheady2({1'b0, enemy_y_worm[0]}),
      .cam_offset_x(cam_offset_x),
      .cam_offset_y(cam_offset_y),
      .reg_food_eaten(food_eaten_all),
      .reg_food_location_0(food_location_0),
      .reg_food_location_1(food_location_1),
      .reg_food_location_2(food_location_2),
      .reg_food_location_3(food_location_3),
      .reg_food_location_4(food_location_4),
      .reg_food_location_5(food_location_5),
      .reg_food_location_6(food_location_6),
      .reg_food_location_7(food_location_7)
  );

  // Instantiate score tracker (for user)
  wire [7:0] score;
  score_tracker score_inst (
      .clk(clk),
      .reset(~mode),
      .food_eaten(user_food),
      .score(score)
  );
  always @(*) begin
      led[7:0] = score;
      led[15:8] = 8'b0;
  end

  // Flatten snake and food arrays for rendering.
  reg [479:0] user_worm_x_flat;
  reg [479:0] user_worm_y_flat;
  reg [479:0] enemy_worm_x_flat;
  reg [479:0] enemy_worm_y_flat;
  reg [479:0] food_x_flat;
  reg [479:0] food_y_flat;
  integer i;
  always @(*) begin
      for(i = 0; i < 48; i = i + 1) begin
          user_worm_x_flat[i*10 +: 10]  = {1'b0, user_x_worm[i]};
          user_worm_y_flat[i*10 +: 10]  = {1'b0, user_y_worm[i]};
          enemy_worm_x_flat[i*10 +: 10] = {1'b0, enemy_x_worm[i]};
          enemy_worm_y_flat[i*10 +: 10] = {1'b0, enemy_y_worm[i]};
      end
      // For food, assume only 8 valid items; rest are zeros.
      food_x_flat[ 0*10 +: 10] = {1'b0, food_location_0[13:5]};
      food_x_flat[ 1*10 +: 10] = {1'b0, food_location_1[13:5]};
      food_x_flat[ 2*10 +: 10] = {1'b0, food_location_2[13:5]};
      food_x_flat[ 3*10 +: 10] = {1'b0, food_location_3[13:5]};
      food_x_flat[ 4*10 +: 10] = {1'b0, food_location_4[13:5]};
      food_x_flat[ 5*10 +: 10] = {1'b0, food_location_5[13:5]};
      food_x_flat[ 6*10 +: 10] = {1'b0, food_location_6[13:5]};
      food_x_flat[ 7*10 +: 10] = {1'b0, food_location_7[13:5]};
      for(i = 8; i < 48; i = i + 1)
          food_x_flat[i*10 +: 10] = 10'd0;
      food_y_flat[ 0*10 +: 10] = {5'b0, food_location_0[4:0]};
      food_y_flat[ 1*10 +: 10] = {5'b0, food_location_1[4:0]};
      food_y_flat[ 2*10 +: 10] = {5'b0, food_location_2[4:0]};
      food_y_flat[ 3*10 +: 10] = {5'b0, food_location_3[4:0]};
      food_y_flat[ 4*10 +: 10] = {5'b0, food_location_4[4:0]};
      food_y_flat[ 5*10 +: 10] = {5'b0, food_location_5[4:0]};
      food_y_flat[ 6*10 +: 10] = {5'b0, food_location_6[4:0]};
      food_y_flat[ 7*10 +: 10] = {5'b0, food_location_7[4:0]};
      for(i = 8; i < 48; i = i + 1)
          food_y_flat[i*10 +: 10] = 10'd0;
  end

  // Instantiate render_oled module.
  // This module uses the mode input to select between a menu view and the game view.
  wire [15:0] pixel_data;
  wire [12:0] oled_pixel_index;
  render_oled render_inst (
      .clk(clk),
      .clk6p25m(clk6p25m),
      .mode(mode), // mode = 0: menu; 1: game.
      .pixel_index(oled_pixel_index),
      .user_worm_x_flat(user_worm_x_flat),
      .user_worm_y_flat(user_worm_y_flat),
      .enemy_worm_x_flat(enemy_worm_x_flat),
      .enemy_worm_y_flat(enemy_worm_y_flat),
      .food_x_flat(food_x_flat),
      .food_y_flat(food_y_flat),
      .camera_offset_x(cam_offset_x),
      .camera_offset_y(cam_offset_y),
      .pixel_colour(pixel_data)
  );

  // Instantiate the OLED display driver.
  Oled_Display oled_disp (
      .clk(clk6p25m),
      .reset(~mode),    // In game mode, reset=0; in menu mode, you can choose an appropriate reset level.
      .frame_begin(),
      .sending_pixels(),
      .sample_pixel(),
      .pixel_index(oled_pixel_index),
      .pixel_data(pixel_data),
      .cs(JB[0]),
      .sdin(JB[1]),
      .sclk(JB[3]),
      .d_cn(JB[4]),
      .resn(JB[5]),
      .vccen(JB[6]),
      .pmoden(JB[7])
  );

  // For the seven-seg display, show the score in game mode and a fixed pattern in menu mode.
  assign seg = mode ? ~score : 8'hAA;
  assign an  = 4'b1110;

endmodule
