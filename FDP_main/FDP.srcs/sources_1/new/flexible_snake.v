`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.03.2025 21:04:13
// Design Name: 
// Module Name: flexible_snake
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


module flexible_snake(
    input slow_clk, 
    input signed [12:0] x_vel, y_vel, 
    input [8:0] xpos, ypos, 
    output reg [8:0] new_xpos, new_ypos, 
    output reg signed [12:0] new_x_vel = 0, new_y_vel = 0, 
    output reg vel_changed = 0
    );


    wire [8:0] new_xpos_wire, new_ypos_wire; 
    wire signed [12:0] new_x_vel_wire, new_y_vel_wire;
    wire vel_changed_wire;
    assign new_xpos_wire = new_xpos; 
    assign new_ypos_wire = new_ypos;
    assign new_x_vel_wire = new_x_vel; 
    assign new_y_vel_wire = new_y_vel; 
    assign vel_changed_wire = vel_changed;
    
    
    // inst basic snake module 
    basic_snake snake_mod(
        .slow_clk(slow_clk), 
        .x_vel(x_vel), 
        .y_vel(y_vel), 
        .xpos(xpos), 
        .ypos(ypos), 
        .new_xpos(new_xpos_wire), 
        .new_ypos(new_ypos_wire), 
        .new_x_vel(new_x_vel_wire), 
        .new_y_vel(new_y_vel_wire), 
        .vel_changed(vel_changed_wire)
    );
    
    
endmodule
