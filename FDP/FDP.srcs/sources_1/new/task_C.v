module task_C (
    input clk, 
    input btnC, btnL,
    input taskEnable,
    input [12:0] pixel_index,
    output [15:0] pixel_colour_out
    );

wire clk_25MHz, clk_45Hz;
wire [6:0] x;
wire [5:0] y;

reg [15:0] oled_colour = 16'b00000_000000_00000;

custom_timer unit_clock_25 (clk, 2, clk_25MHz);
custom_timer unit_clock_45 (clk, 1111111, clk_45Hz);
  
assign x = pixel_index % 96;
assign y = pixel_index / 96;
reg[6:0] x_var = 7'd85;
reg[5:0] y_var = 7'd11;
reg[2:0] step_id = 3'd0;
reg start_id = 0;

assign pixel_colour_out = oled_colour;

always @(posedge clk_25MHz) begin   
    oled_colour <= 16'b00000_000000_00000; // Default

    if (step_id >= 0) begin
        if (x >= 84 && x <= 94 && y >= 0 && y <= 10) begin // Preserve square
            oled_colour <= 16'b11111_111111_00000;
        end
    end
    if (step_id == 1) begin
        if (x >= 84 && x <= 94 && y >= 11 && y <= y_var) begin
            oled_colour <= 16'b11111_111111_00000;
        end
    end

    if (step_id >= 2) begin
        if (x >= 84 && x <= 94 && y >= 11 && y <= 63) begin  // Preserve step 1
            oled_colour <= 16'b11111_111111_00000;
        end
    end
    if (step_id == 2) begin
        if (x >= x_var && x <= 85 && y >= 53 && y <= 63) begin
            oled_colour <= 16'b11111_111111_00000;
        end
    end

    if (step_id >= 3) begin
        if (x >= 44 && x <= 94 && y >= 53 && y <= 63) begin  // Preserve step 2
            oled_colour <= 16'b11111_111111_00000;
        end
    end
    if (step_id == 3) begin
        if (x >= 44 && x <= 54 && y >= y_var && y <= 53) begin
            oled_colour <= 16'b11111_111111_00000;
        end
    end

    if (step_id >= 4) begin
        if (x >= 44 && x <= 54 && y >= 27 && y <= 53) begin // Preserve step 3
            oled_colour <= 16'b11111_111111_00000;
        end
    end
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
    
reg [1:0] pixel_update_counter = 2'd0;
  
always @(posedge clk_45Hz) begin
    if (taskEnable == 0 || (step_id == 7 && btnC)) begin
        // Reset the display and wait for btnC
        step_id <= 3'd0;
        y_var <= 7'd11;
        x_var <= 7'd84;
        pixel_update_counter <= 0;
    end else if (btnC && step_id == 0) begin
        step_id <= 3'd1;
    end else if (step_id == 1) begin // Down
        y_var <= y_var + 1;
        if (y_var >= 63) begin
            y_var <= 7'd53;
            step_id <= 3'd2;
        end
    end else if (step_id == 2) begin // Left
        x_var <= x_var - 1;
        if (x_var <= 47) begin
            x_var <= 7'd57;
            step_id <= 3'd3;
            pixel_update_counter <= 0;
        end
    end else if (step_id >= 3) begin  
        pixel_update_counter <= pixel_update_counter + 1;
        if (pixel_update_counter == 2'd2) begin
            pixel_update_counter <= 0; 
        
            if (step_id == 3) begin // Up
                y_var <= y_var - 1;
                if (y_var <= 27) begin
                    y_var <= 7'd27;
                    step_id <= 3'd4;
                end
            end else if (step_id == 4) begin // right
                x_var <= x_var + 1;
                if (x_var >= 72) begin
                    x_var <= 7'd72;
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
    end
end
     
endmodule