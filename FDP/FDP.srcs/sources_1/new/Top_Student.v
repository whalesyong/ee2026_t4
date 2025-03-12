`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
//
//  FILL IN THE FOLLOWING INFORMATION:
//  STUDENT A NAME: Lawrence Pasion Caisip
//  STUDENT B NAME: Yuxin
//  STUDENT C NAME: Jeromy
//  STUDENT D NAME: Wei Yong
//
//////////////////////////////////////////////////////////////////////////////////


module Top_Student (  input clk
                    , input btnU, btnD, btnC, btnL, btnR
                    , input [15:0] sw
                    , output [7:0]JB
                    , output reg [15:0] led
                    , output [7:0] seg
                    , output [3:0] an
                    );

    parameter WHITE = 16'b11111_111111_11111;
    parameter ORANGE = 16'b11111_101101_00000;
    parameter BLUE = 16'b00000_000000_11111;
    parameter GREEN = 16'b00000_111111_00000;
    parameter RED = 16'b11111_000000_00000;
    parameter PURPLE = 16'b11111_000000_11110;    
    parameter BLACK = 16'b00000_000000_00000;
    parameter CENTER_X = 48;
    parameter CENTER_Y = 32;

    // recalculate all these values
    parameter _1hz_ticks    = 32'd100_000_000; 
    parameter _2hz_ticks    = 32'd50_000_000; 
    parameter _6hz_ticks    = 32'd16_666_667; 
    parameter _8hz_ticks    = 32'd12_500_000; 
    
    reg rst;
    reg taskAenable;
    reg taskBenable;
    reg taskCenable;
    reg taskDenable;
    reg [15:0] pixel_colour;
    reg [31:0] blinker_ticks;

    wire frame_beg;
    wire clk6p25m;
    wire blinker;
    wire [7:0] y;
    wire [7:0] x;
    wire [12:0] pixel_index;
    wire [15:0] task_A_colour;
    wire [15:0] task_B_colour;
    wire [15:0] task_C_colour;
    wire [15:0] task_D_colour;

    initial begin
        pixel_colour <= 16'h0000; // black
    end

    assign JB[2] = 0;

    // create 6.25 MHz signal
    custom_timer _clk6p25m(clk, 32'h0008, clk6p25m);

    // create blinker signal
    custom_timer _clkblinker(clk, blinker_ticks, blinker);

    Oled_Display display_mod (  .clk(clk6p25m),
                                .reset(0), 
                                .frame_begin(frame_beg),
                                // .sending_pixels(1),
                                // .sample_pixel(1),
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

    seven_seg seven_seg_mod (   .clk(clk6p25m),
                                .seg(seg),
                                .an(an)
                              );

    task_A task_A_inst ( .clk(clk6p25m),
                         .btnU(btnU),
                         .btnD(btnD),
                         .btnC(btnC),
                         .taskEnable(taskAenable),
                         .pixel_index(pixel_index),
                         .pixel_colour_out(task_A_colour)
                         );

    task_B task_B_inst ( .clk(clk6p25m),
                         .btnU(btnU),
                         .btnD(btnD),
                         .btnC(btnC),
                         .taskEnable(taskBenable),
                         .pixel_index(pixel_index),
                         .pixel_colour_out(task_B_colour)
                         );


    task_C task_C_inst ( .clk(clk),
                         .btnL(btnL),
                         .btnC(btnC),
                         .taskEnable(taskCenable),
                         .pixel_index(pixel_index),
                         .pixel_colour_out(task_C_colour)
                         );

    task_D task_D_inst ( .clk(clk),
                         .btnU(btnU),
                         .btnD(btnD),
                         .btnL(btnL),
                         .btnR(btnR),
                         .taskEnable(taskDenable),
                         .pixel_index(pixel_index),
                         .pixel_colour_out(task_D_colour)
                        );

    wire [15:0] grp_4_colour;
    group_4_display group_4_display_mod(    .clk(clk),
                                            .pixel_index(pixel_index),
                                            .pixel_colour_out(grp_4_colour)    
                                        );

    always @(posedge clk6p25m) begin

        if ( sw == 16'b0001000001011011 ) begin             // task A selected lawrence 01346 and sw[12]
            pixel_colour <= task_A_colour;
            blinker_ticks = _2hz_ticks;
            led[9:0] = sw[9:0] & {10{blinker}};
            led[15:10] = 6'b000100;
            taskAenable = 1;

        end
        else if ( sw == 16'b0010001000001101 ) begin        // task B selected yuxin 0239 and sw[13]
            pixel_colour <= task_B_colour;
            blinker_ticks = _1hz_ticks;
            led[9:0] = sw[9:0] & {10{blinker}};
            led[15:10] = 6'b001000;
            taskBenable = 1;

        end
        else if ( sw == 16'b0100_0001_0010_1111 ) begin        // task C selected jeromy 012358 and sw[14]
            pixel_colour <= task_C_colour;
            blinker_ticks = _6hz_ticks;
            led[9:0] = sw[9:0] & {10{blinker}};
            led[15:10] = 6'b010000;
            taskCenable = 1;

        end
        else if ( sw == 16'b1000_0000_1100_0111 ) begin        // task D selected  weiyong 01267 and sw[15]
            pixel_colour <= task_D_colour;
            blinker_ticks = _8hz_ticks;
            led[9:0] = sw[9:0] & {10{blinker}};
            led[15:10] = 6'b100000;
            taskDenable = 1;

        end
        else begin                                          // no task selected
            pixel_colour <= grp_4_colour;
            led = sw;
            taskAenable = 0;
            taskBenable = 0;
            taskCenable = 0;
            taskDenable = 0;

        end


    end


endmodule