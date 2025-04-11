

module flexible_snake(
    input slow_clk, 
    input rst,
    input signed [12:0] x_dir, y_dir, 
   // input [9:0] xpos, ypos,
    input directionEnable,
    input food_eaten,
    // 10/4 changeed from wire to reg
    output wire [479:0] x_worm_flat, y_worm_flat,
    output reg [7:0] size = 2, 
    output reg signed [12:0] new_x_vel, new_y_vel, 
    output reg vel_changed,
    output [9:0] debugx, debugy 
);
 
    localparam MAX_LENGTH = 48;

    // Snake memory arrays (inferred as BRAM if large enough)
    (* ram_style = "block" *) reg [9:0] worm_x_mem [0:MAX_LENGTH-1];
    (* ram_style = "block" *) reg [9:0] worm_y_mem [0:MAX_LENGTH-1];

    // Pointer and size registers
    reg [7:0] head_index = 0;
    initial begin 
        //initialize head position 
        worm_x_mem[head_index] = 10'd30; // x position of head
        worm_y_mem[head_index] = 10'd30; // y position of head
    end

    // Wires from the basic snake movement module
    wire [9:0] new_xpos_wire, new_ypos_wire;
    wire signed [12:0] new_x_vel_wire, new_y_vel_wire;
    wire vel_changed_wire;
    wire pos_changed_wire;

    // Instantiate the snake movement module
    basic_snake snake_mod(
        .slow_clk(slow_clk), 
        .x_vel(x_dir), 
        .y_vel(y_dir), 
        .xpos(worm_x_mem[head_index]),  // place current head position
        .ypos(worm_y_mem[head_index]),  
        .new_xpos(new_xpos_wire), 
        .new_ypos(new_ypos_wire), 
        .new_x_vel(new_x_vel_wire), 
        .new_y_vel(new_y_vel_wire), 
        .vel_changed(vel_changed_wire),
        .pos_changed(pos_changed_wire),
        .debugx(debugx),
        .debugy(debugy)
    );
    
    integer i;  // Used for loops in always blocks


    
    // Sequential logic: reset, update memory and snake growth
    always @(posedge slow_clk or posedge rst) begin
        if (rst) begin
            // Reset snake memory
            for (i = 0; i < MAX_LENGTH; i = i + 1) begin
                worm_x_mem[i] <= 10'd30;
                worm_y_mem[i] <= 10'd30;
            end
            // Clear flattened outputs (optional here since combinational logic drives these)

            head_index <= 0;
            size <= 2;  // default starting size
            new_x_vel <= 0;
            new_y_vel <= 0;
            vel_changed <= 0;
        end 
        else begin
            // Update velocity and flags from snake module
            new_x_vel <= new_x_vel_wire;
            new_y_vel <= new_y_vel_wire;
            vel_changed <= vel_changed_wire;
            
            // Update snake head position when direction is enabled
            if (pos_changed_wire && directionEnable) begin
                // step 1, get the new head position (should be decremented)
                head_index <= (head_index == 0) ? (MAX_LENGTH - 1) : head_index - 1;

                // step 2, write the new position into the head 
                worm_x_mem[(head_index == 0) ? (MAX_LENGTH - 1) : head_index - 1] <= new_xpos_wire;
                worm_y_mem[(head_index == 0) ? (MAX_LENGTH - 1) : head_index - 1] <= new_ypos_wire;
            end
            

        end
    end

    always @ (posedge food_eaten) begin 
        if (size < MAX_LENGTH) begin
            size <= size + 1; // Increase size when food is eaten
        end
    end


    // step 3: flatten arr by inserting head position at LSB. This ensures we can alw read off LSB 
    // Unpacking logic: flatten snake coordinate memory into a wide vector.
    genvar idx;
    generate
        for (idx = 0; idx < MAX_LENGTH; idx = idx + 1) begin : flatten_snake
        
            assign x_worm_flat[(idx+1)*10 - 1 -: 10] = (idx < size) ? 
            worm_x_mem[(head_index + size - 1 - idx) % MAX_LENGTH] : 10'd0;
        
            assign y_worm_flat[(idx+1)*10 - 1 -: 10] = (idx < size) ? 
            worm_y_mem[(head_index + size - 1 - idx) % MAX_LENGTH] : 10'd0;


        end
    endgenerate



endmodule