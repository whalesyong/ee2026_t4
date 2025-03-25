module flexible_clk(input clk, input [31:0]m, output reg output_wire = 0 );

// start a counter that counts up to n
// when it equals n, reset the counter and invert the signal 
reg [31:0] counter = 0;
always @ (posedge clk) begin
    
    if (counter == m-1) begin 
        counter <= 0;
        output_wire <= ~output_wire;
    end
    else begin
        counter <= counter + 1;
    end
end 
endmodule