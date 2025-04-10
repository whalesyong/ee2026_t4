`timescale 1ns / 1ps

module render_oled(
    input clk, // 100 MHz
    // input clk6p25m, // 6.25 MHz
    input [12:0]pixel_index,
    input [479:0] user_worm_x_flat, // flattened from [9:0] to [479:0]
    input [479:0] user_worm_y_flat,
    input [7:0] user_size,
    input [479:0] enemy_worm_x_flat,
    input [479:0] enemy_worm_y_flat,
    input [7:0] enemy_size,
    input [479:0] food_x_flat,
    input [479:0] food_y_flat,
    input [8:0] camera_offset_x, // 500 x 500 world
    input [8:0] camera_offset_y,
    output [15:0] pixel_colour,
    output [9:0] debugx, debugy 
    );

    localparam WHITE = 16'b11111_111111_11111;
    localparam ORANGE = 16'b11111_101101_00000;
    localparam BLUE = 16'b00000_000000_11111;
    localparam GREEN = 16'b00000_111111_00000;
    localparam RED = 16'b11111_000000_00000;
    localparam PURPLE = 16'b11111_000000_11110;    
    localparam BLACK = 16'b00000_000000_00000;

    // declare register caches for the pixel colour
    (* ram_style = "block" *) reg [15:0] pixel_colour_cache_0 [0:6143]; // Buffer 0
    (* ram_style = "block" *) reg [15:0] pixel_colour_cache_1 [0:6143]; // Buffer 1

    reg [5:0] loop_idx = 0; // 6 bits for 0-47
    reg [12:0] counter; // count until 6143
    reg [15:0] pixel_colour_reg;
    reg active_buffer; // 0 or 1 to indicate the active display buffer

   // wire in_boundary;
    // reg in_user_worm;
    reg in_enemy_worm;
    reg in_food;


    // pack flattened inputs into 2d registers
    wire [9:0] user_worm_x [0:47];
    wire [9:0] user_worm_y [0:47];
    wire [9:0] enemy_worm_x [0:47];
    wire [9:0] enemy_worm_y [0:47];
    wire [9:0] food_x [0:47];
    wire [9:0] food_y [0:47];

    genvar i;
    generate
        for (i = 0; i < 48; i = i + 1) begin : pack_user_worm_x
            assign user_worm_x[i] = user_worm_x_flat[ 10*i + 9 : 10 * i ];
            assign user_worm_y[i] = user_worm_y_flat[ 10*i + 9 : 10 * i ];
            assign enemy_worm_x[i] = enemy_worm_x_flat[ 10*i + 9 : 10 * i ];
            assign enemy_worm_y[i] = enemy_worm_y_flat[ 10*i + 9 : 10 * i ];
            assign food_x[i] = food_x_flat[ 10*i + 9 : 10 * i ];
            assign food_y[i] = food_y_flat[ 10*i + 9 : 10 * i ];
        end
    endgenerate

    // map counter x, y to 500x500 world
    wire [10:0]counter_x = (counter % 96) + camera_offset_x;
    wire [10:0]counter_y = (counter / 96) + camera_offset_y;

    // map pixel index to 500x500 world
    wire [10:0]pixel_x = (pixel_index % 96) + camera_offset_x;
    wire [10:0]pixel_y = (pixel_index / 96) + camera_offset_y;


    flexible_clock clk_buffer_inst(
        .CLOCK(clk),
        .divider(100_000_000 / 4), // 
        .SLOW_CLOCK(clk_buffer)
    );

    flexible_clock clk_slow_inst(
        .CLOCK(clk),
        .divider( 4 ), // 
        .SLOW_CLOCK(clk_slow)
    );

    // added a 25m clock for debugging 
    wire debug_clk_25m;
    flexible_clock clk_mod25m(
        .CLOCK(clk),
        .divider(2), 
        .SLOW_CLOCK(debug_clk_25m)
     ); 

    wire debug_clk_6p25m;
    flexible_clock clk_slow_inst_6p25m(
        .CLOCK(clk),
        .divider(8), 
        .SLOW_CLOCK(debug_clk_6p25m)
    );

    initial begin
        counter = 0;

    end

    /*
        // update if pixel is in boundary
        assign in_boundary = (counter_x <= 2 || counter_x >= 497 || counter_y <= 2 || counter_y >= 497) ? 1 : 0;
    
        //  update if pixel is in user worm
        always @ (posedge clk ) begin
            if (loop_idx <= user_size && 
                counter_x >= user_worm_x[loop_idx] && counter_x <= user_worm_x[loop_idx] + 4 && 
                counter_y >= user_worm_y[loop_idx] && counter_y <= user_worm_y[loop_idx] + 4) begin
                in_user_worm <= 1; // latch on to value until reset
            end
        end
    
        // update if pixel is in enemy worm
        always @ (posedge clk ) begin
    
            if (loop_idx <= enemy_size &&  
                counter_x >= enemy_worm_x[loop_idx] && counter_x <= enemy_worm_x[loop_idx] + 4 && 
                counter_y >= enemy_worm_y[loop_idx] && counter_y <= enemy_worm_y[loop_idx] + 4) begin
                in_enemy_worm <= 1;
            end
    
        end
    
        // update if pixel is in food
        always @ (posedge clk ) begin
            if ( counter_x >= food_x[loop_idx] && counter_x <= food_x[loop_idx] + 4 && 
                counter_y >= food_y[loop_idx] && counter_y <= food_y[loop_idx] + 4) begin
                in_food <= 1;
            end
        end
    
        // update loop index
        always @ (posedge clk ) begin
            if (loop_idx == 0) begin // Reset in_user_worm, in_enemy_worm, in_food, in_boundary flags
                in_user_worm <= 0;
                in_enemy_worm <= 0;
                in_food <= 0;
            end
     
            // Update index for next cycle (wrap around after 47)
          loop_idx <= (loop_idx >= 7'd47) ? 7'd0 : (loop_idx + 1);
        end
    */
    
    //------------------------------------------------------------------------- REWROTE THREE ALW BLOCKS 
    // FOR 3 COMBINATIONAL LOOPS
    wire in_boundary = (counter_x < camera_offset_x + 1) ||
                   (counter_x > camera_offset_x + 94) ||
                   (counter_y < camera_offset_y + 1) ||
                   (counter_y > camera_offset_y + 62);

    wire [47:0] detect_in_user_worm;

    generate
        for (i = 0; i < 48; i = i + 1)  begin : detect_in_user_worm_logic 
            assign detect_in_user_worm[i] = ( i < user_size &&
                counter_x >= user_worm_x[i] && counter_x <= user_worm_x[i] + 4 &&
                counter_y >= user_worm_y[i] && counter_y <= user_worm_y[i] + 4 ) ? 1 : 0;
        end
    endgenerate
    
    wire in_user_worm = |detect_in_user_worm;

    assign debugx = user_worm_x[1];
    assign debugy = user_worm_y[1];

    // Replace sequential loops with combinational logic for all objects:
    integer j;
    always @(*) begin
        // Default flags
        // in_user_worm = 0;
        in_enemy_worm = 0;
        in_food = 0;
        
        // // Check user worm segments
        // for (j = 0; j < user_size; j = j + 1) begin
        //     if ((pixel_x >= user_worm_x[j]) && (pixel_x <= user_worm_x[j] + 4) &&
        //         (pixel_y >= user_worm_y[j]) && (pixel_y <= user_worm_y[j] + 4))
        //         in_user_worm = 1;
        // end
        
        // Check enemy worm segments
        for (j = 0; j < enemy_size; j = j + 1) begin
            if ((pixel_x >= enemy_worm_x[j]) && (pixel_x <= enemy_worm_x[j] + 2) &&
                (pixel_y >= enemy_worm_y[j]) && (pixel_y <= enemy_worm_y[j] + 2))
                in_enemy_worm = 1;
        end
        
        // If you have a fixed number of food items (here 48):
        for (j = 0; j < 48; j = j + 1) begin
            if ((pixel_x >= food_x[j]) && (pixel_x <= food_x[j] + 4) &&
                (pixel_y >= food_y[j]) && (pixel_y <= food_y[j] + 4)) begin
                    // in_food = 1;
                end
        end
    end

    //----------------------------------------------------

    // Check pixel in order of priority: 
    // 1. sq boundary
    // 2. user worm body
    // 3. enemy worm body
    // 4. food
    // 5. background

    wire [15:0] output_colour = (in_boundary) ? WHITE : 
                                (in_user_worm) ? BLUE : 
                                (in_enemy_worm) ? RED : 
                                (in_food) ? PURPLE : 
                                BLACK; // background colour

    always @ (posedge debug_clk_6p25m ) begin //originally posedge clk_slow

        if (active_buffer) begin
            pixel_colour_cache_1[counter] <= output_colour; // Update active buffer
        end else begin
            pixel_colour_cache_0[counter] <= output_colour; // Update inactive buffer
        end

        active_buffer <= (counter >= 6143) ? ~active_buffer : active_buffer; // toggle active buffer when counter reaches 6143

        // update counter
        counter <= (counter >= 6143) ? 0 : (counter + 1); 

    end

    // Output display buffer logic
    always @(*) begin

        if (active_buffer) begin
            pixel_colour_reg <= pixel_colour_cache_0[pixel_index[12:0]]; 
        end else begin
            pixel_colour_reg <= pixel_colour_cache_1[pixel_index[12:0]]; 
        end
    end

    assign pixel_colour = pixel_colour_reg;


    
    
endmodule