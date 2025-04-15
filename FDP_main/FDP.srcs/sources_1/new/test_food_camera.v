`timescale 1ns / 1ps

module food_and_camera (
    input clk,
    input reset,
    input [9:0] userwormheadx,
    input [9:0] userwormheady,
    input [9:0] enemywormheadx,
    input [9:0] enemywormheady,

    output reg  food_eaten,
    (* ram_style = "block" *) output reg [479:0] food_x_flat,
    (* ram_style = "block" *) output reg [479:0] food_y_flat,
    output wire [47:0] user_collisions
);
    parameter SCREEN_WIDTH  = 499;
    parameter SCREEN_HEIGHT = 499;
    parameter BOUNDARY_OFFSET = 10; // Offset from the edges of the screen


    (* ram_style = "block" *) reg [9:0] food_x [0:47];
    (* ram_style = "block" *) reg [9:0] food_y [0:47];
    reg [15:0] rng_seed = 16'hACE1;
    integer i;

    // Combinational logic for collision detection
    // wire [47:0] user_collisions;
    wire [47:0] enemy_collisions;


    // comment out the generate block for one always block 

    genvar j;
    generate
        for (j = 0; j < 48; j = j + 1) begin : collision_checks
            // Check if rectangles overlap
            assign user_collisions[j] = (
                userwormheadx <= (food_x[j] + 4) &&
                (userwormheadx + 4) >= food_x[j] &&
                userwormheady <= (food_y[j] + 4) &&
                (userwormheady + 4) >= food_y[j]
            );
            
            // Do the same for enemy collisions
            assign enemy_collisions[j] = (
                enemywormheadx <= (food_x[j] + 4) &&
                (enemywormheadx + 4) >= food_x[j] &&
                enemywormheady <= (food_y[j] + 4) &&
                (enemywormheady + 4) >= food_y[j]
            );
        end
        // assign enemy1_collisions[j] = (enemywormheadx1 == food_x[j]) && (enemywormheady1 == food_y[j]);
        // assign enemy2_collisions[j] = (enemywormheadx2 == food_x[j]) && (enemywormheady2 == food_y[j]);
    endgenerate 
/*
        // Collision detection using a single always block to reduce LUT usage
    (* ram_style = "distributed" *) reg [47:0] collision_reg;
    always @( posedge clk ) begin
        for (i = 0; i < 48; i = i + 1) begin
            collision_reg[i] <= (
                userwormheadx <= (food_x[i] + 4) &&
                (userwormheadx + 4) >= food_x[i] &&
                userwormheady <= (food_y[i] + 4) &&
                (userwormheady + 4) >= food_y[i]
            );
        end
    end
    assign user_collisions = collision_reg;*/

    // Pack food locations into flattened arrays - combinational
    always @(*) begin
        for (i = 0; i < 48; i = i + 1) begin
            food_x_flat[i*10 +: 10] = food_x[i];
            food_y_flat[i*10 +: 10] = food_y[i];
        end
    end

    // Sequential logic only for updating food positions and RNG
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            rng_seed <= 16'hBEEF;
            food_eaten <= 0;
            for (i = 0; i < 48; i = i + 1) begin
                // Space food across the 500x500 world space
                food_x[i] <= BOUNDARY_OFFSET + (i*20 % (SCREEN_WIDTH-2*BOUNDARY_OFFSET));
                food_y[i] <= BOUNDARY_OFFSET + ((i*20*7) % (SCREEN_HEIGHT-2*BOUNDARY_OFFSET));
            end
        end else begin
            food_eaten <= {|enemy_collisions, |user_collisions};
            
            // Update food positions only when eaten
            for (i = 0; i < 48; i = i + 1) begin
                if (user_collisions[i] || enemy_collisions[i]) begin
                    rng_seed <= {rng_seed[14:0], rng_seed[15] ^ rng_seed[13]};
                    // Keep food within 500x500 world bounds
                    food_x[i] <= BOUNDARY_OFFSET + (rng_seed[8:0] % (SCREEN_WIDTH-2*BOUNDARY_OFFSET));
                    food_y[i] <= BOUNDARY_OFFSET + ((rng_seed[15:7] ^ rng_seed[8:0]) % (SCREEN_HEIGHT-2*BOUNDARY_OFFSET));
                end
            end
        end
    end

endmodule