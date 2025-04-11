// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Fri Apr 11 23:05:52 2025
// Host        : Lawrence-ROG running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/Lawrence/Desktop/ee2026_t4/FDP_main/FDP.srcs/sources_1/ip/blk_mem_gen_1/blk_mem_gen_1_stub.v
// Design      : blk_mem_gen_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_1,Vivado 2018.2" *)
module blk_mem_gen_1(clka, ena, addra, douta)
/* synthesis syn_black_box black_box_pad_pin="clka,ena,addra[14:0],douta[15:0]" */;
  input clka;
  input ena;
  input [14:0]addra;
  output [15:0]douta;
endmodule
