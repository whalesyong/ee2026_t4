`timescale 1ns / 1ps

module basic_snake(
    input clk_30h, input btnU, btnD, btnL, btnR,
    input signed [12:0] x_vel, y_vel,
    input [8:0] xpos, ypos,
    output reg [8:0] new_xpos, new_ypos, 
    output reg signed [12:0] new_x_vel = 0, new_y_vel = 0
);
    //note that the box location is the center of a 3x3 box
    localparam MAX_X = 95;
    localparam MAX_Y = 63; 
    
    always @ (posedge clk_30h) begin 
        // First, maintain current velocities
        new_x_vel = x_vel;
        new_y_vel = y_vel;
        
        // Update velocities based on button inputs
        if (btnL)
            new_x_vel = -1;
        if (btnR)
            new_x_vel = 1;
        if (btnU) 
            new_y_vel = -1;
        if (btnD) 
            new_y_vel = 1;
            
        // Update positions using new velocities
        new_xpos = xpos + new_x_vel;
        new_ypos = ypos + new_y_vel;
        
        // Collision detection
        if (new_xpos <= 1) begin
            new_xpos = 1;
            new_x_vel = -new_x_vel;  // Bounce off wall
        end
        else if (new_xpos >= MAX_X - 1) begin
            new_xpos = MAX_X - 1;
            new_x_vel = -new_x_vel;  // Bounce off wall
        end
        
        if (new_ypos <= 1) begin
            new_ypos = 1;
            new_y_vel = -new_y_vel;  // Bounce off wall
        end
        else if (new_ypos >= MAX_Y - 1) begin
            new_ypos = MAX_Y - 1;
            new_y_vel = -new_y_vel;  // Bounce off wall
        end
    end   
endmodule

