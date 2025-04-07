`timescale 1ns / 1ps

module flexible_snake(
    input slow_clk, 
    input rst,
    input signed [12:0] x_dir, y_dir, 
    input [9:0] xpos, ypos,
    input directionEnable,
    input food_eaten,
    output reg [479:0] x_worm_flat, y_worm_flat,
    output reg [7:0] new_size, 
    output reg signed [12:0] new_x_vel = 0, new_y_vel = 0, 
    output reg vel_changed = 0
);
    localparam MAX_LENGTH = 48;

    // Snake memory arrays (can be inferred as BRAM by Vivado if large enough)
    reg [9:0] worm_x_mem [0:MAX_LENGTH-1];
    reg [9:0] worm_y_mem [0:MAX_LENGTH-1];

    reg [7:0] head_index = 0;
    reg [7:0] current_size = 30;

    wire [9:0] new_xpos_wire, new_ypos_wire;
    wire signed [12:0] new_x_vel_wire, new_y_vel_wire;
    wire vel_changed_wire;

    integer i;
    integer index;

    // Instantiate your velocity & movement module
    basic_snake snake_mod(
        .slow_clk(slow_clk), 
        .x_vel(x_dir), 
        .y_vel(y_dir), 
        .xpos(xpos), 
        .ypos(ypos), 
        .new_xpos(new_xpos_wire), 
        .new_ypos(new_ypos_wire), 
        .new_x_vel(new_x_vel_wire), 
        .new_y_vel(new_y_vel_wire), 
        .vel_changed(vel_changed_wire)
    );

    always @(posedge slow_clk or posedge rst) begin
        if (rst) begin
            // Reset worm to initial position
            for (i = 0; i < MAX_LENGTH; i = i + 1) begin
                worm_x_mem[i] <= 10'd30;
                worm_y_mem[i] <= 10'd30;
            end
            x_worm_flat <= 0;
            y_worm_flat <= 0;
            head_index <= 0;
            current_size <= 20;
            new_size <= 20;
            new_x_vel <= 0;
            new_y_vel <= 0;
            vel_changed <= 0;
        end else begin
            new_x_vel <= new_x_vel_wire;
            new_y_vel <= new_y_vel_wire;
            vel_changed <= vel_changed_wire;

            if (directionEnable) begin
                // Write new head position into RAM
                worm_x_mem[head_index] <= new_xpos_wire;
                worm_y_mem[head_index] <= new_ypos_wire;

                // Advance head index (wrap around)
                head_index <= (head_index + 1 == MAX_LENGTH) ? 0 : head_index + 1;
            end

            // Flatten RAM into output
            x_worm_flat = 0;
            y_worm_flat = 0;

            for (i = 0; i < current_size; i = i + 1) begin
                index = (head_index + MAX_LENGTH - current_size + i) % MAX_LENGTH;
                x_worm_flat = x_worm_flat | (worm_x_mem[index] << (i * 10));
                y_worm_flat = y_worm_flat | (worm_y_mem[index] << (i * 10));
            end

            // Grow snake if food is eaten
            if (food_eaten && current_size < MAX_LENGTH) begin
                current_size <= current_size + 1;
                new_size <= current_size + 1;
            end else begin
                new_size <= current_size;
            end
        end
    end
endmodule
