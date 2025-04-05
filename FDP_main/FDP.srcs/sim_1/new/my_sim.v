`timescale 1ns / 1ps


module my_sim();


     
    // Simulation inputs
    reg clk;
    reg btnU;
    reg btnD;
    reg btnC;
    reg btnL;
    reg btnR;
    reg [15:0] sw;
 
    
    // Simulation outputs
    wire [6:0] S;
    wire [3:0] an;
    wire [7:0] seg;
    
    Top_Lawrence_Test dut(
        .clk(clk),
        .btnU(btnU),
        .btnD(btnD),
        .btnC(btnC),
        .btnL(btnL),
        .btnR(btnR),
        .sw(sw),
        .JB(JB),
        .led(led),
        .seg(seg),
        .an(an),
        .PS2Clk(PS2Clk),
        .PS2Data(PS2Data)
    ); 


    // Stimuli
    initial begin

        clk = 0;
    
    end

    always begin 
        #10 clk = ~clk;
    end



endmodule
