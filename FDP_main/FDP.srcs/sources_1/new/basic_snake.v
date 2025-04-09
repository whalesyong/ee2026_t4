`timescale 1ns / 1ps
module basic_snake(
    input slow_clk,
    input signed [12:0] x_vel, y_vel,
    input [9:0] xpos, ypos, // position of head
    output reg [9:0] new_xpos, new_ypos, 
    output reg signed [12:0] new_x_vel = 0, new_y_vel = 0,
    output reg vel_changed = 0,
    output [9:0] debugx, debugy   
);

    assign debugx = potential_xpos[9:0];
    assign debugy = potential_ypos[9:0];

    //note that the box location is now the top-left corner of a 5x5 box
    localparam MAX_X = 95;
    localparam MAX_Y = 63;
    localparam BOX_SIZE = 1;  // 5x5 box (0 to 4)

    reg signed [12:0] potential_xpos, potential_ypos;
    reg [4:0] flag = 0;
    
    always @ (posedge slow_clk) begin 
        vel_changed = 0;
        flag <= (flag == 15) ? 0 : flag + 1;

        if (flag == 0) begin 
            new_x_vel = x_vel;
            new_y_vel = y_vel; 
            // Update positions using new velocities
            potential_xpos = $signed(xpos) + new_x_vel;
            potential_ypos = $signed(ypos) + new_y_vel;
        end

        // Collision detection for top-left corner positioning
        if (potential_xpos <= 0) begin  // Left wall
            potential_xpos = 0;
            new_x_vel = -new_x_vel;
            vel_changed = 1;
        end
        else if (potential_xpos >= MAX_X - BOX_SIZE) begin  // Right wall
            potential_xpos = MAX_X - BOX_SIZE;
            new_x_vel = -new_x_vel;
            vel_changed = 1;
        end

        if (potential_ypos <= 0) begin  // Top wall
            potential_ypos = 0;
            new_y_vel = -new_y_vel;
            vel_changed=1;
        end
        else if (potential_ypos >= MAX_Y - BOX_SIZE) begin  // Bottom wall
            potential_ypos = MAX_Y - BOX_SIZE;
            new_y_vel = -new_y_vel;
            vel_changed = 1;
        end
        //output the last valid position 
        new_xpos = potential_xpos[9:0];
        new_ypos = potential_ypos[9:0];
    end
endmodule
