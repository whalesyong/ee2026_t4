`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.03.2025 21:00:48
// Design Name: 
// Module Name: entire_snake
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

// this is a module showing how to instantiate the basic snake 

module test_snake(
        input clk, 
        input btnU, btnD, btnL, btnR,
        output [7:0]JB
     );
     
     
     reg [15:0] pixel_colour;
     wire [12:0] pixel_index;
     wire [7:0] pixel_x;   
     wire [7:0] pixel_y;
     // for oled
     wire sending_pixel;
     wire sample_pixel;
     PixelToXY converter_mod (
         .pixel_index(pixel_index),
         .x(pixel_x),
         .y(pixel_y)
     );
 
     parameter MAX_VEL = 5;
     parameter WHITE = 16'b11111_111111_11111;
     //6.25MHz for OLED display 
     wire clk_6p25m;
     wire clk_25m;
     wire clk_200h;
     wire frame_beg;     
     
     reg signed [12:0] x_vel;
     reg signed [12:0] y_vel;
     
     wire signed [12:0] new_x_vel;
     wire signed [12:0] new_y_vel;
     // position of snake 
     reg [8:0] xpos;
     reg [8:0] ypos;
     
     wire [8:0] xpos_wire;
     wire [8:0] ypos_wire;
  
     
     flexible_clk clk_mod25m(
         .CLOCK(clk),
         .n(2), 
         .SLOW_CLOCK(clk_25m)
     );
     
     flexible_clk clk_mod6p25m(
         .CLOCK(clk),
         .n(8),
         .SLOW_CLOCK(clk_6p25m)
     );
 
     flexible_clk clk_mod200h(
         .CLOCK(clk),
         .n(250000),
         .SLOW_CLOCK(clk_200h)
     );
     

     
     basic_snake snake_mod(
        .slow_clk(clk_200h),
        .x_vel(x_vel), 
        .y_vel(y_vel),
        .xpos(xpos), 
        .ypos(ypos), 
        .new_xpos(xpos_wire), .new_ypos(ypos_wire),
        .new_x_vel(new_x_vel), 
        .new_y_vel(new_y_vel)
     );
     
     wire [8:0] food_x;
     wire [8:0] food_y;
     wire food_eaten;
     wire camera_offset_x;
     wire camera_offset_y;
     
     food_and_camera food_mod(
         .clk(clk_200h),
         .reset(0),
         .xpos(xpos), 
         .ypos(ypos),
         .food_x(food_x),
         .food_y(food_y),
         .food_eaten(food_eaten),
         .camera_offset_x(camera_offset_x),
         .camera_offset_y(camera_offset_y)
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
          
    //init values                     
    initial begin 
        xpos = 45; 
        ypos = 30; 
        
        pixel_colour <= 16'h0000; //black 
        
        x_vel = 0; 
        y_vel = 0;
     
    end

    

    //update vels with new vels
    always @ (posedge clk_200h) begin
        x_vel <= new_x_vel;
        y_vel <= new_y_vel;
        
        // X velocity control with limits
        if(btnL && x_vel > - MAX_VEL)
            x_vel <= x_vel - 1;
        if(btnR && x_vel < MAX_VEL)
            x_vel <= x_vel + 1;
            
        // Y velocity control with limits    
        if(btnU && y_vel > -MAX_VEL)
            y_vel <= y_vel - 1;
        if(btnD && y_vel < MAX_VEL)
            y_vel <= y_vel + 1;
    end
   
    
    always @ (posedge clk_25m) begin 
        xpos <= xpos_wire; 
        ypos <= ypos_wire;
        // Changed comparison to use top-left corner as reference
        if (pixel_x > xpos && pixel_x <= xpos+4 && pixel_y > ypos && pixel_y <= ypos+4)
            pixel_colour <= 16'b11111_000000_00000; // Red color for snake
        else 
            pixel_colour <= 16'h0000;       
    end
endmodule