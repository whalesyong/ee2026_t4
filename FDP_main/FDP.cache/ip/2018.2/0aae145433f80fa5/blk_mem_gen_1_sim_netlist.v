// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Fri Apr 11 23:05:52 2025
// Host        : Lawrence-ROG running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ blk_mem_gen_1_sim_netlist.v
// Design      : blk_mem_gen_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_1,blk_mem_gen_v8_4_1,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_1,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    ena,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [14:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [15:0]douta;

  wire [14:0]addra;
  wire clka;
  wire [15:0]douta;
  wire ena;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [15:0]NLW_U0_doutb_UNCONNECTED;
  wire [14:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [14:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [15:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "15" *) 
  (* C_ADDRB_WIDTH = "15" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "3" *) 
  (* C_COUNT_36K_BRAM = "10" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     10.271133 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "blk_mem_gen_1.mem" *) 
  (* C_INIT_FILE_NAME = "blk_mem_gen_1.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "24576" *) 
  (* C_READ_DEPTH_B = "24576" *) 
  (* C_READ_WIDTH_A = "16" *) 
  (* C_READ_WIDTH_B = "16" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "24576" *) 
  (* C_WRITE_DEPTH_B = "24576" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "16" *) 
  (* C_WRITE_WIDTH_B = "16" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[15:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[14:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[14:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[15:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(1'b0),
        .web(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bindec
   (ena_array,
    addra,
    ena);
  output [4:0]ena_array;
  input [2:0]addra;
  input ena;

  wire [2:0]addra;
  wire ena;
  wire [4:0]ena_array;

  LUT4 #(
    .INIT(16'h0010)) 
    ENOUT
       (.I0(addra[2]),
        .I1(addra[1]),
        .I2(ena),
        .I3(addra[0]),
        .O(ena_array[0]));
  LUT4 #(
    .INIT(16'h1000)) 
    \ENOUT_inferred__1/i_ 
       (.I0(addra[2]),
        .I1(addra[0]),
        .I2(ena),
        .I3(addra[1]),
        .O(ena_array[1]));
  LUT4 #(
    .INIT(16'h4000)) 
    \ENOUT_inferred__2/i_ 
       (.I0(addra[2]),
        .I1(ena),
        .I2(addra[1]),
        .I3(addra[0]),
        .O(ena_array[2]));
  LUT4 #(
    .INIT(16'h1000)) 
    \ENOUT_inferred__3/i_ 
       (.I0(addra[1]),
        .I1(addra[0]),
        .I2(addra[2]),
        .I3(ena),
        .O(ena_array[3]));
  LUT4 #(
    .INIT(16'h4000)) 
    \ENOUT_inferred__4/i_ 
       (.I0(addra[1]),
        .I1(addra[2]),
        .I2(ena),
        .I3(addra[0]),
        .O(ena_array[4]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_generic_cstr
   (douta,
    clka,
    ena,
    addra);
  output [15:0]douta;
  input clka;
  input ena;
  input [14:0]addra;

  wire [14:0]addra;
  wire clka;
  wire [15:0]douta;
  wire ena;
  wire [5:0]ena_array;
  wire [8:0]p_11_out;
  wire [8:0]p_15_out;
  wire [8:0]p_19_out;
  wire [8:0]p_23_out;
  wire [8:0]p_3_out;
  wire [8:0]p_7_out;
  wire ram_douta;
  wire \ramloop[1].ram.r_n_0 ;
  wire \ramloop[1].ram.r_n_1 ;
  wire \ramloop[1].ram.r_n_2 ;
  wire \ramloop[2].ram.r_n_0 ;
  wire \ramloop[4].ram.r_n_0 ;
  wire \ramloop[4].ram.r_n_1 ;
  wire \ramloop[4].ram.r_n_2 ;
  wire \ramloop[5].ram.r_n_0 ;
  wire \ramloop[5].ram.r_n_1 ;
  wire \ramloop[5].ram.r_n_2 ;
  wire \ramloop[5].ram.r_n_3 ;
  wire \ramloop[6].ram.r_n_0 ;
  wire \ramloop[6].ram.r_n_1 ;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bindec \bindec_a.bindec_inst_a 
       (.addra(addra[14:12]),
        .ena(ena),
        .ena_array({ena_array[5:2],ena_array[0]}));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_mux \has_mux_a.A 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram (ram_douta),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 (\ramloop[2].ram.r_n_0 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[5].ram.r_n_0 ,\ramloop[5].ram.r_n_1 ,\ramloop[5].ram.r_n_2 ,\ramloop[5].ram.r_n_3 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ({\ramloop[4].ram.r_n_0 ,\ramloop[4].ram.r_n_1 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ({\ramloop[6].ram.r_n_0 ,\ramloop[6].ram.r_n_1 }),
        .DOADO({\ramloop[1].ram.r_n_0 ,\ramloop[1].ram.r_n_1 }),
        .addra(addra[14:12]),
        .clka(clka),
        .douta({douta[15:3],douta[1:0]}),
        .ena(ena),
        .p_11_out(p_11_out),
        .p_15_out(p_15_out),
        .p_19_out(p_19_out),
        .p_23_out(p_23_out),
        .p_3_out(p_3_out),
        .p_7_out(p_7_out));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width \ramloop[0].ram.r 
       (.addra(addra[13:0]),
        .clka(clka),
        .\douta[0] (ram_douta),
        .ena(ena),
        .ena_0(\ramloop[4].ram.r_n_2 ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized9 \ramloop[10].ram.r 
       (.addra(addra[11:0]),
        .clka(clka),
        .ena(ena),
        .ena_array(ena_array[3]),
        .p_11_out(p_11_out));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized10 \ramloop[11].ram.r 
       (.addra(addra[11:0]),
        .clka(clka),
        .ena(ena),
        .ena_array(ena_array[4]),
        .p_7_out(p_7_out));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized11 \ramloop[12].ram.r 
       (.addra(addra[11:0]),
        .clka(clka),
        .ena(ena),
        .ena_array(ena_array[5]),
        .p_3_out(p_3_out));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized0 \ramloop[1].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram (\ramloop[1].ram.r_n_2 ),
        .DOADO({\ramloop[1].ram.r_n_0 ,\ramloop[1].ram.r_n_1 }),
        .addra(addra),
        .clka(clka),
        .ena(ena));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized1 \ramloop[2].ram.r 
       (.addra(addra[13:0]),
        .clka(clka),
        .\douta[1] (\ramloop[2].ram.r_n_0 ),
        .ena(ena),
        .ena_0(\ramloop[4].ram.r_n_2 ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized2 \ramloop[3].ram.r 
       (.addra(addra),
        .clka(clka),
        .douta(douta[2]),
        .ena(ena));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized3 \ramloop[4].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram (\ramloop[4].ram.r_n_2 ),
        .addra(addra),
        .clka(clka),
        .\douta[4] ({\ramloop[4].ram.r_n_0 ,\ramloop[4].ram.r_n_1 }),
        .ena(ena));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized4 \ramloop[5].ram.r 
       (.addra(addra[12:0]),
        .\addra[13] (\ramloop[1].ram.r_n_2 ),
        .clka(clka),
        .\douta[6] ({\ramloop[5].ram.r_n_0 ,\ramloop[5].ram.r_n_1 ,\ramloop[5].ram.r_n_2 ,\ramloop[5].ram.r_n_3 }),
        .ena(ena));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized5 \ramloop[6].ram.r 
       (.addra(addra[13:0]),
        .clka(clka),
        .\douta[6] ({\ramloop[6].ram.r_n_0 ,\ramloop[6].ram.r_n_1 }),
        .ena(ena),
        .ena_0(\ramloop[4].ram.r_n_2 ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized6 \ramloop[7].ram.r 
       (.addra(addra[11:0]),
        .clka(clka),
        .ena(ena),
        .ena_array(ena_array[0]),
        .p_23_out(p_23_out));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized7 \ramloop[8].ram.r 
       (.addra(addra),
        .clka(clka),
        .ena(ena),
        .p_19_out(p_19_out));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized8 \ramloop[9].ram.r 
       (.addra(addra[11:0]),
        .clka(clka),
        .ena(ena),
        .ena_array(ena_array[2]),
        .p_15_out(p_15_out));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_mux
   (douta,
    p_7_out,
    p_3_out,
    ena,
    addra,
    clka,
    DOADO,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    p_11_out,
    p_15_out,
    p_19_out,
    p_23_out);
  output [14:0]douta;
  input [8:0]p_7_out;
  input [8:0]p_3_out;
  input ena;
  input [2:0]addra;
  input clka;
  input [1:0]DOADO;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 ;
  input [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  input [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input [8:0]p_11_out;
  input [8:0]p_15_out;
  input [8:0]p_19_out;
  input [8:0]p_23_out;

  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 ;
  wire [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire [1:0]DOADO;
  wire [2:0]addra;
  wire clka;
  wire [14:0]douta;
  wire \douta[10]_INST_0_i_1_n_0 ;
  wire \douta[10]_INST_0_i_2_n_0 ;
  wire \douta[11]_INST_0_i_1_n_0 ;
  wire \douta[11]_INST_0_i_2_n_0 ;
  wire \douta[12]_INST_0_i_1_n_0 ;
  wire \douta[12]_INST_0_i_2_n_0 ;
  wire \douta[13]_INST_0_i_1_n_0 ;
  wire \douta[13]_INST_0_i_2_n_0 ;
  wire \douta[14]_INST_0_i_1_n_0 ;
  wire \douta[14]_INST_0_i_2_n_0 ;
  wire \douta[15]_INST_0_i_1_n_0 ;
  wire \douta[15]_INST_0_i_2_n_0 ;
  wire \douta[7]_INST_0_i_1_n_0 ;
  wire \douta[7]_INST_0_i_2_n_0 ;
  wire \douta[8]_INST_0_i_1_n_0 ;
  wire \douta[8]_INST_0_i_2_n_0 ;
  wire \douta[9]_INST_0_i_1_n_0 ;
  wire \douta[9]_INST_0_i_2_n_0 ;
  wire ena;
  wire [8:0]p_11_out;
  wire [8:0]p_15_out;
  wire [8:0]p_19_out;
  wire [8:0]p_23_out;
  wire [8:0]p_3_out;
  wire [8:0]p_7_out;
  wire [2:0]sel_pipe;
  wire [2:0]sel_pipe_d1;

  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[0]_INST_0 
       (.I0(DOADO[0]),
        .I1(sel_pipe_d1[1]),
        .I2(sel_pipe_d1[2]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ),
        .O(douta[0]));
  MUXF7 \douta[10]_INST_0 
       (.I0(\douta[10]_INST_0_i_1_n_0 ),
        .I1(\douta[10]_INST_0_i_2_n_0 ),
        .O(douta[9]),
        .S(sel_pipe_d1[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[10]_INST_0_i_1 
       (.I0(p_11_out[3]),
        .I1(p_15_out[3]),
        .I2(sel_pipe_d1[1]),
        .I3(p_19_out[3]),
        .I4(sel_pipe_d1[0]),
        .I5(p_23_out[3]),
        .O(\douta[10]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \douta[10]_INST_0_i_2 
       (.I0(p_7_out[3]),
        .I1(sel_pipe_d1[0]),
        .I2(p_3_out[3]),
        .I3(sel_pipe_d1[1]),
        .O(\douta[10]_INST_0_i_2_n_0 ));
  MUXF7 \douta[11]_INST_0 
       (.I0(\douta[11]_INST_0_i_1_n_0 ),
        .I1(\douta[11]_INST_0_i_2_n_0 ),
        .O(douta[10]),
        .S(sel_pipe_d1[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[11]_INST_0_i_1 
       (.I0(p_11_out[4]),
        .I1(p_15_out[4]),
        .I2(sel_pipe_d1[1]),
        .I3(p_19_out[4]),
        .I4(sel_pipe_d1[0]),
        .I5(p_23_out[4]),
        .O(\douta[11]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \douta[11]_INST_0_i_2 
       (.I0(p_7_out[4]),
        .I1(sel_pipe_d1[0]),
        .I2(p_3_out[4]),
        .I3(sel_pipe_d1[1]),
        .O(\douta[11]_INST_0_i_2_n_0 ));
  MUXF7 \douta[12]_INST_0 
       (.I0(\douta[12]_INST_0_i_1_n_0 ),
        .I1(\douta[12]_INST_0_i_2_n_0 ),
        .O(douta[11]),
        .S(sel_pipe_d1[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[12]_INST_0_i_1 
       (.I0(p_11_out[5]),
        .I1(p_15_out[5]),
        .I2(sel_pipe_d1[1]),
        .I3(p_19_out[5]),
        .I4(sel_pipe_d1[0]),
        .I5(p_23_out[5]),
        .O(\douta[12]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \douta[12]_INST_0_i_2 
       (.I0(p_7_out[5]),
        .I1(sel_pipe_d1[0]),
        .I2(p_3_out[5]),
        .I3(sel_pipe_d1[1]),
        .O(\douta[12]_INST_0_i_2_n_0 ));
  MUXF7 \douta[13]_INST_0 
       (.I0(\douta[13]_INST_0_i_1_n_0 ),
        .I1(\douta[13]_INST_0_i_2_n_0 ),
        .O(douta[12]),
        .S(sel_pipe_d1[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[13]_INST_0_i_1 
       (.I0(p_11_out[6]),
        .I1(p_15_out[6]),
        .I2(sel_pipe_d1[1]),
        .I3(p_19_out[6]),
        .I4(sel_pipe_d1[0]),
        .I5(p_23_out[6]),
        .O(\douta[13]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \douta[13]_INST_0_i_2 
       (.I0(p_7_out[6]),
        .I1(sel_pipe_d1[0]),
        .I2(p_3_out[6]),
        .I3(sel_pipe_d1[1]),
        .O(\douta[13]_INST_0_i_2_n_0 ));
  MUXF7 \douta[14]_INST_0 
       (.I0(\douta[14]_INST_0_i_1_n_0 ),
        .I1(\douta[14]_INST_0_i_2_n_0 ),
        .O(douta[13]),
        .S(sel_pipe_d1[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[14]_INST_0_i_1 
       (.I0(p_11_out[7]),
        .I1(p_15_out[7]),
        .I2(sel_pipe_d1[1]),
        .I3(p_19_out[7]),
        .I4(sel_pipe_d1[0]),
        .I5(p_23_out[7]),
        .O(\douta[14]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \douta[14]_INST_0_i_2 
       (.I0(p_7_out[7]),
        .I1(sel_pipe_d1[0]),
        .I2(p_3_out[7]),
        .I3(sel_pipe_d1[1]),
        .O(\douta[14]_INST_0_i_2_n_0 ));
  MUXF7 \douta[15]_INST_0 
       (.I0(\douta[15]_INST_0_i_1_n_0 ),
        .I1(\douta[15]_INST_0_i_2_n_0 ),
        .O(douta[14]),
        .S(sel_pipe_d1[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[15]_INST_0_i_1 
       (.I0(p_11_out[8]),
        .I1(p_15_out[8]),
        .I2(sel_pipe_d1[1]),
        .I3(p_19_out[8]),
        .I4(sel_pipe_d1[0]),
        .I5(p_23_out[8]),
        .O(\douta[15]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \douta[15]_INST_0_i_2 
       (.I0(p_7_out[8]),
        .I1(sel_pipe_d1[0]),
        .I2(p_3_out[8]),
        .I3(sel_pipe_d1[1]),
        .O(\douta[15]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[1]_INST_0 
       (.I0(DOADO[1]),
        .I1(sel_pipe_d1[1]),
        .I2(sel_pipe_d1[2]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 ),
        .O(douta[1]));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[3]_INST_0 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram [0]),
        .I1(sel_pipe_d1[1]),
        .I2(sel_pipe_d1[2]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 [0]),
        .O(douta[2]));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[4]_INST_0 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram [1]),
        .I1(sel_pipe_d1[1]),
        .I2(sel_pipe_d1[2]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 [1]),
        .O(douta[3]));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[5]_INST_0 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram [2]),
        .I1(sel_pipe_d1[1]),
        .I2(sel_pipe_d1[2]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 [0]),
        .O(douta[4]));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[6]_INST_0 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram [3]),
        .I1(sel_pipe_d1[1]),
        .I2(sel_pipe_d1[2]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 [1]),
        .O(douta[5]));
  MUXF7 \douta[7]_INST_0 
       (.I0(\douta[7]_INST_0_i_1_n_0 ),
        .I1(\douta[7]_INST_0_i_2_n_0 ),
        .O(douta[6]),
        .S(sel_pipe_d1[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[7]_INST_0_i_1 
       (.I0(p_11_out[0]),
        .I1(p_15_out[0]),
        .I2(sel_pipe_d1[1]),
        .I3(p_19_out[0]),
        .I4(sel_pipe_d1[0]),
        .I5(p_23_out[0]),
        .O(\douta[7]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \douta[7]_INST_0_i_2 
       (.I0(p_7_out[0]),
        .I1(sel_pipe_d1[0]),
        .I2(p_3_out[0]),
        .I3(sel_pipe_d1[1]),
        .O(\douta[7]_INST_0_i_2_n_0 ));
  MUXF7 \douta[8]_INST_0 
       (.I0(\douta[8]_INST_0_i_1_n_0 ),
        .I1(\douta[8]_INST_0_i_2_n_0 ),
        .O(douta[7]),
        .S(sel_pipe_d1[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[8]_INST_0_i_1 
       (.I0(p_11_out[1]),
        .I1(p_15_out[1]),
        .I2(sel_pipe_d1[1]),
        .I3(p_19_out[1]),
        .I4(sel_pipe_d1[0]),
        .I5(p_23_out[1]),
        .O(\douta[8]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \douta[8]_INST_0_i_2 
       (.I0(p_7_out[1]),
        .I1(sel_pipe_d1[0]),
        .I2(p_3_out[1]),
        .I3(sel_pipe_d1[1]),
        .O(\douta[8]_INST_0_i_2_n_0 ));
  MUXF7 \douta[9]_INST_0 
       (.I0(\douta[9]_INST_0_i_1_n_0 ),
        .I1(\douta[9]_INST_0_i_2_n_0 ),
        .O(douta[8]),
        .S(sel_pipe_d1[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[9]_INST_0_i_1 
       (.I0(p_11_out[2]),
        .I1(p_15_out[2]),
        .I2(sel_pipe_d1[1]),
        .I3(p_19_out[2]),
        .I4(sel_pipe_d1[0]),
        .I5(p_23_out[2]),
        .O(\douta[9]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \douta[9]_INST_0_i_2 
       (.I0(p_7_out[2]),
        .I1(sel_pipe_d1[0]),
        .I2(p_3_out[2]),
        .I3(sel_pipe_d1[1]),
        .O(\douta[9]_INST_0_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[0] 
       (.C(clka),
        .CE(ena),
        .D(sel_pipe[0]),
        .Q(sel_pipe_d1[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[1] 
       (.C(clka),
        .CE(ena),
        .D(sel_pipe[1]),
        .Q(sel_pipe_d1[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[2] 
       (.C(clka),
        .CE(ena),
        .D(sel_pipe[2]),
        .Q(sel_pipe_d1[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] 
       (.C(clka),
        .CE(ena),
        .D(addra[0]),
        .Q(sel_pipe[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] 
       (.C(clka),
        .CE(ena),
        .D(addra[1]),
        .Q(sel_pipe[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[2] 
       (.C(clka),
        .CE(ena),
        .D(addra[2]),
        .Q(sel_pipe[2]),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width
   (\douta[0] ,
    clka,
    ena_0,
    ena,
    addra);
  output [0:0]\douta[0] ;
  input clka;
  input ena_0;
  input ena;
  input [13:0]addra;

  wire [13:0]addra;
  wire clka;
  wire [0:0]\douta[0] ;
  wire ena;
  wire ena_0;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .\douta[0] (\douta[0] ),
        .ena(ena),
        .ena_0(ena_0));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized0
   (DOADO,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ,
    clka,
    ena,
    addra);
  output [1:0]DOADO;
  output \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ;
  input clka;
  input ena;
  input [14:0]addra;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ;
  wire [1:0]DOADO;
  wire [14:0]addra;
  wire clka;
  wire ena;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized0 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ),
        .DOADO(DOADO),
        .addra(addra),
        .clka(clka),
        .ena(ena));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized1
   (\douta[1] ,
    clka,
    ena_0,
    ena,
    addra);
  output [0:0]\douta[1] ;
  input clka;
  input ena_0;
  input ena;
  input [13:0]addra;

  wire [13:0]addra;
  wire clka;
  wire [0:0]\douta[1] ;
  wire ena;
  wire ena_0;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized1 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .\douta[1] (\douta[1] ),
        .ena(ena),
        .ena_0(ena_0));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized10
   (p_7_out,
    clka,
    ena_array,
    ena,
    addra);
  output [8:0]p_7_out;
  input clka;
  input [0:0]ena_array;
  input ena;
  input [11:0]addra;

  wire [11:0]addra;
  wire clka;
  wire ena;
  wire [0:0]ena_array;
  wire [8:0]p_7_out;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized10 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .ena(ena),
        .ena_array(ena_array),
        .p_7_out(p_7_out));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized11
   (p_3_out,
    clka,
    ena_array,
    ena,
    addra);
  output [8:0]p_3_out;
  input clka;
  input [0:0]ena_array;
  input ena;
  input [11:0]addra;

  wire [11:0]addra;
  wire clka;
  wire ena;
  wire [0:0]ena_array;
  wire [8:0]p_3_out;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized11 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .ena(ena),
        .ena_array(ena_array),
        .p_3_out(p_3_out));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized2
   (douta,
    clka,
    ena,
    addra);
  output [0:0]douta;
  input clka;
  input ena;
  input [14:0]addra;

  wire [14:0]addra;
  wire clka;
  wire [0:0]douta;
  wire ena;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized2 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .douta(douta),
        .ena(ena));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized3
   (\douta[4] ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    clka,
    ena,
    addra);
  output [1:0]\douta[4] ;
  output \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  input clka;
  input ena;
  input [14:0]addra;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [14:0]addra;
  wire clka;
  wire [1:0]\douta[4] ;
  wire ena;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized3 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .addra(addra),
        .clka(clka),
        .\douta[4] (\douta[4] ),
        .ena(ena));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized4
   (\douta[6] ,
    clka,
    \addra[13] ,
    ena,
    addra);
  output [3:0]\douta[6] ;
  input clka;
  input \addra[13] ;
  input ena;
  input [12:0]addra;

  wire [12:0]addra;
  wire \addra[13] ;
  wire clka;
  wire [3:0]\douta[6] ;
  wire ena;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized4 \prim_init.ram 
       (.addra(addra),
        .\addra[13] (\addra[13] ),
        .clka(clka),
        .\douta[6] (\douta[6] ),
        .ena(ena));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized5
   (\douta[6] ,
    clka,
    ena_0,
    ena,
    addra);
  output [1:0]\douta[6] ;
  input clka;
  input ena_0;
  input ena;
  input [13:0]addra;

  wire [13:0]addra;
  wire clka;
  wire [1:0]\douta[6] ;
  wire ena;
  wire ena_0;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized5 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .\douta[6] (\douta[6] ),
        .ena(ena),
        .ena_0(ena_0));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized6
   (p_23_out,
    clka,
    ena_array,
    ena,
    addra);
  output [8:0]p_23_out;
  input clka;
  input [0:0]ena_array;
  input ena;
  input [11:0]addra;

  wire [11:0]addra;
  wire clka;
  wire ena;
  wire [0:0]ena_array;
  wire [8:0]p_23_out;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized6 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .ena(ena),
        .ena_array(ena_array),
        .p_23_out(p_23_out));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized7
   (p_19_out,
    clka,
    ena,
    addra);
  output [8:0]p_19_out;
  input clka;
  input ena;
  input [14:0]addra;

  wire [14:0]addra;
  wire clka;
  wire ena;
  wire [8:0]p_19_out;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized7 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .ena(ena),
        .p_19_out(p_19_out));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized8
   (p_15_out,
    clka,
    ena_array,
    ena,
    addra);
  output [8:0]p_15_out;
  input clka;
  input [0:0]ena_array;
  input ena;
  input [11:0]addra;

  wire [11:0]addra;
  wire clka;
  wire ena;
  wire [0:0]ena_array;
  wire [8:0]p_15_out;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized8 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .ena(ena),
        .ena_array(ena_array),
        .p_15_out(p_15_out));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized9
   (p_11_out,
    clka,
    ena_array,
    ena,
    addra);
  output [8:0]p_11_out;
  input clka;
  input [0:0]ena_array;
  input ena;
  input [11:0]addra;

  wire [11:0]addra;
  wire clka;
  wire ena;
  wire [0:0]ena_array;
  wire [8:0]p_11_out;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized9 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .ena(ena),
        .ena_array(ena_array),
        .p_11_out(p_11_out));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init
   (\douta[0] ,
    clka,
    ena_0,
    ena,
    addra);
  output [0:0]\douta[0] ;
  input clka;
  input ena_0;
  input ena;
  input [13:0]addra;

  wire [13:0]addra;
  wire clka;
  wire [0:0]\douta[0] ;
  wire ena;
  wire ena_0;
  wire [15:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED ;
  wire [15:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB18E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000001800000000000000000000000000000000000000000000000),
    .INIT_02(256'h00000068C1900035E18000000000000160000000000000000000000160000000),
    .INIT_03(256'h03C64A9DA26A0400007101020206589B324418000040010501785CD33B43E000),
    .INIT_04(256'h9081000001F6C1F36906409DACCAA200017780F35086C899E44C2600017E0072),
    .INIT_05(256'h01C680FDDBBFC77E7F00000001EE4049A66648E17B8E210001EE8103244640C1),
    .INIT_06(256'h000000000008F90000EE80000000000000028C0000FF80000000000000046400),
    .INIT_07(256'h0000040000FF8000000848000001E20000FF8000000000000002390000F98000),
    .INIT_08(256'h003F8040000000000004F000003F800C710000030000010000AF800000001000),
    .INIT_09(256'hC083010820040840003F00000040000000040DE0003F8100000600000000E000),
    .INIT_0A(256'h100BC59003FF8000400208880006663800FF800140202E002000186800BF0001),
    .INIT_0B(256'h1DDF0000000200100004049819FF010000000020000405800FFF800000000000),
    .INIT_0C(256'h00000004000371800EF8000082000010000618801BFD008001008828000000E0),
    .INIT_0D(256'h020000000040000000000000020000000FD800400000000002003C801DF40040),
    .INIT_0E(256'h00780001001000808000000000000012006000001C0000000000000401800000),
    .INIT_0F(256'h0000000000000000003D0000000280240000F00000F800000100004040000000),
    .INIT_10(256'h8008020000F00003C0000030000C000002FE0000000000000002000000FF0000),
    .INIT_11(256'h00E800166E0000784008050001F80017340000A00000030001F80003E000006F),
    .INIT_12(256'h7E0001C758608000023C002DFD0000F7C000C10000FC007FB400015060025500),
    .INIT_13(256'h2409060000EF99FE750000B005D9B60000FD077E630000581860C00001BD007D),
    .INIT_14(256'h007FFEF19C000020A0012000009F5FFFDC0000BC4206F4000077CFEEF900008C),
    .INIT_15(256'h00000001807000000017DFC000000003100C0000001FFFBF4400001C80020000),
    .INIT_16(256'h000000000000000000000000004000000000F2C0000000000840000000077F80),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000001800000000000000000000000000000000000000000000000),
    .INIT_1A(256'h00000068C1900035E18000000000000160000000000000000000000160000000),
    .INIT_1B(256'h03C64A9DA26A0400007101020206589B324418000040010501785CD33B43E000),
    .INIT_1C(256'h9081000001F6C1F36906409DACCAA200017780F35086C899E44C2600017E0072),
    .INIT_1D(256'h01C680FDDBBFC77E7F00000001EE4049A66648E17B8E210001EE8103244640C1),
    .INIT_1E(256'h000000000008F90000EE80000000000003828C0000FF80000000000000046400),
    .INIT_1F(256'h0000040000FF8000002000020001E20000FF8000004610004102390000F98000),
    .INIT_20(256'h003F8002C40000000004F000003F8020000000010000010000AF802010008281),
    .INIT_21(256'h0400888200040840003F00000500020040040DE0003F80000A0000000000E000),
    .INIT_22(256'h040BC59003FF8003040100040806663800FF8000834000801080186800BF0004),
    .INIT_23(256'h1DDF0440020000280204049819FF00030000C012020405800FFF800300004004),
    .INIT_24(256'h00000820010371800EF8000010C20810008618801BFD020008000010000000E0),
    .INIT_25(256'h1C0000000040000000000010000000000FD800080000001001003C801DF40000),
    .INIT_26(256'h007802010536C020880000000000000200000110100000000000000400000010),
    .INIT_27(256'h0000000000000000003D0014000000002000F00000F800038000040008000000),
    .INIT_28(256'h8008020000F00003C0000030000C000002FE0000000000000002000000FF0000),
    .INIT_29(256'h00E800166E0000784008050001F80017340000A00000030001F80003E000006F),
    .INIT_2A(256'h7E0001C758608000023C002DFD0000F7C000C10000FC007FB400015060025500),
    .INIT_2B(256'h2409060000EF99FE750000B005D9B60000FD077E630000581860C00001BD007D),
    .INIT_2C(256'h007FFEF19C000020A0012000009F5FFFDC0000BC4206F4000077CFEEF900008C),
    .INIT_2D(256'h00000001807000000017DFC000000003100C0000001FFFBF4400001C80020000),
    .INIT_2E(256'h000000000000000000000000004000000000F2C0000000000840000000077F80),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000001800000000000000000000000000000000000000000000000),
    .INIT_32(256'h00000068C1900035E18000000000000160000000000000000000000160000000),
    .INIT_33(256'h03C64A9DA26A0400007101020206589B324418000040010501785CD33B43E000),
    .INIT_34(256'h9081000001F6C1F36906409DACCAA200017780F35086C899E44C2600017E0072),
    .INIT_35(256'h01C680FDDBBFC77E7F00000001EE4049A66648E17B8E210001EE8103244640C1),
    .INIT_36(256'h000000000008F90000EE800E0000000000028C0000FF80000000000000046400),
    .INIT_37(256'h8000040000FF8000000400300001E20000FF8000000000000002390000F98400),
    .INIT_38(256'h003F8104840444A00004F000003F8006044040408000010000AF800620008E40),
    .INIT_39(256'h8A22020000040840003F02040112100940040DE0003F8104020402254400E000),
    .INIT_3A(256'h040BC59003FF810C1016A2108406663800FF8092D02C04808400186800BF0004),
    .INIT_3B(256'h1DDF0000000000000004049819FF000000000000640405800FFF800000004000),
    .INIT_3C(256'h00800000000371800EF8000000008000000618801BFD000000000001040000E0),
    .INIT_3D(256'h000000000040000090800180000000000FD800010040018400003C801DF40000),
    .INIT_3E(256'h0078000540001148000000000000000500400110000000000000000220400100),
    .INIT_3F(256'h1100014000000000003D0000020080420000F00000F800054100314000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram 
       (.ADDRARDADDR(addra),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED [15:1],\douta[0] }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED [15:0]),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED [1:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED [1:0]),
        .ENARDEN(ena_0),
        .ENBWREN(1'b0),
        .REGCEAREGCE(ena),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized0
   (DOADO,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 ,
    clka,
    ena,
    addra);
  output [1:0]DOADO;
  output \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 ;
  input clka;
  input ena;
  input [14:0]addra;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 ;
  wire [1:0]DOADO;
  wire [14:0]addra;
  wire clka;
  wire ena;
  wire [15:2]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED ;
  wire [15:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB18E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'hAAAE557EAAAAAAACEAAAACAA19AAAAC2AAAAAAAE80AAAAAAAAA8555FAAAAAAA4),
    .INIT_01(256'hEAAAAAC00806AAAAAAAAD52AAAAAAAAC0CAAA0AAAAAAAFAAAAAAAAF0202AAAAA),
    .INIT_02(256'h05BAAAAAAAAACC802AAAAA800807AAAAAAA3556AAAAAAAA503AAA9AAAAAABEFF),
    .INIT_03(256'hAAA2546AAAAAA914147EAAAAAAAABF403AAAAAE80833AAAAAAA3556AAAAAAB95),
    .INIT_04(256'hF2AAA202F003AAAAAAA2557AAAAABD57C732AAAAAAA933003CAAAA0E1BB3AAAA),
    .INIT_05(256'hB7FCAAAAAAABF0373BEAB400E800AAAAAAAEA552AAAA8453F7FBAAAAAAAAFF37),
    .INIT_06(256'hAAAA55532ABD15561485AAAAAAAA3BC003EABE00D80AAAAAAAAB4559AAAA1553),
    .INIT_07(256'h0C3200E38036AAAAAAA8545563E155D69511AAAAAAAACF08023B73C3CFBEAAAA),
    .INIT_08(256'h5B7AAAAAAAAAEF58380CA03EF73AAAAAAAAA951558D55454FFCBAAAAAAAAE078),
    .INIT_09(256'hAAAABF5557565529697AAAAAAAAAAE00EC20200BA62AAAAAAAAAE15511555555),
    .INIT_0A(256'h038008FAAAAAAAAAAAAAA155555545FF329AAAAAAAAAABFAC020080EAAAAAAAA),
    .INIT_0B(256'hAAAAAAAAAAAAAAABEA003FAAAAAAAAAAAAAAA915D95550AA00AAAAAAAAAAAAAF),
    .INIT_0C(256'hAAAAAAAAD506FAAAAAAAAAAAAAAAAAAAAAC03AAAAAAAAAAAAAAAAAB595556AAA),
    .INIT_0D(256'hAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAA),
    .INIT_0E(256'hAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA),
    .INIT_0F(256'hAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA),
    .INIT_10(256'hAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA),
    .INIT_11(256'hAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA),
    .INIT_12(256'hAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA),
    .INIT_13(256'hAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABE2AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA),
    .INIT_14(256'h3CAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAB3CAAAAAAAAAAAAAA),
    .INIT_15(256'hAAAAAAAAAAAA3CEAF2ABC9000000A73BF6ABE2AAAAAAAAAAAAAAAAAAAAAAAAAB),
    .INIT_16(256'h0F0C3AB2ABEAAAAAAAAA900AAAAB003982A93FC03370F30F0FEF32A7FCAAAAAA),
    .INIT_17(256'h228FF03C3ACCC3F3CC0C366EAABAAAAAAAAAB5A9AAAB000C2284003C33C0C3C7),
    .INIT_18(256'hAAAB9795EAA8FF0F3388C83CFAC0C3C3FC383A72AE9EAAAAAAAB9556AAA83F0C),
    .INIT_19(256'hC380E8A10AAAAAAAAAA95F9E7AABDF0F34CB883C3A00C3F3CCF078E6E6AEAAAA),
    .INIT_1A(256'hEC34943C3A40FC0BBFEFE8D62EA3AAAAAAA95CDCEAAB000F2C38B83C3A00F003),
    .INIT_1B(256'hAAA950166AAAFFFBF3CFEFFFFABF3FFEBFFFA8AAAAA2AAAAAAA95CD43AAA30EB),
    .INIT_1C(256'hAAAAAAA66A52AAAAAAA255556AAAAAAAAAAAAAAAAAAAAAAAAAAAA89ABE92AAAA),
    .INIT_1D(256'hAAAAAAAAAAAAAAAAAAAAAAEAF561AAAAAAAA56566AAAAAAAAAAAAAAAAAAAAAAA),
    .INIT_1E(256'hAAAAD5556AAAAAAAAAAAAA88AAAAAAA8AAAAAA86A569AAAAAAAAD5C96AAAAAAA),
    .INIT_1F(256'h6AAAAAAAAA9AAAAAAAAAFD55EAAAAAAAAAAAAA90AAAAA580AAAAAAA956AEAAAA),
    .INIT_20(256'h82909A80380090806AAAAAAAAA03AAAAAAAAE4FF6AAAAAB68682AA80EAF69080),
    .INIT_21(256'hAAAAA5556AAAAAB2409082B23810EC80AAAAAA925582AAAAAAAAA5556AAAAAB6),
    .INIT_22(256'h1AAAAABAAADBD6AAAAAAA5556AAAAAB2008E02900A0E2C913AAAAA8256AAAAAA),
    .INIT_23(256'hC0C60CA40A8C280A0AAAAABAAACA982AAAAAAD552AAAAAB2028301AC090A2041),
    .INIT_24(256'hAAAAD555EAAAA90659AA84520290E80242AAAA8AABE8B6EAAAAAE7FFAAAA80B2),
    .INIT_25(256'h82AAAAC55A99E9AAAAAF5555EAAAAAFAA9AAAB1646A6A90AC2AAAABE961CA5EA),
    .INIT_26(256'hAAAAAAAAAAAAAAAAB6AAAABAAA996A2AAADD7555EAAAAAAAAAAAAAAAB2AAAAAA),
    .INIT_27(256'hA97953FF2AAAAAAAAAAAAAAAAAAAAAAAAAAAAABAAA9A6BEAA9417D572AAAAAAA),
    .INIT_28(256'hAAAAAABEA16A42AAA9455559AAAACF3AAAAAAAAAAAAAAAAAAAAAAA82AAAA7CAA),
    .INIT_29(256'h82A8EAAA82AAAA0AAAAAAAAF15A9EAAAAA5E556AAAAA002AAAAAAAAA4AAAAAAA),
    .INIT_2A(256'hAAF55BEAAAAA3AA902A83AAA02AB6A3AAAAAAAAA255AEAAAA9D355BAAAAA3AAA),
    .INIT_2B(256'hAAAAAAAAAAAAAAAAAAAABAAAAAAA3AA861A8CAAA02A9EA8AAAAAAAAAAAAAAAAA),
    .INIT_2C(256'hA0AA328000A90102AAAAAAAAAAAAAAAAAAAAAAAAAAAA3AA4A4A832AA02A92A8A),
    .INIT_2D(256'hAAAABFCAAAAAAAB3B0AA00AA01A910426AAAAAAAAAAAAAAAAAAAAAAAAAAA2AB3),
    .INIT_2E(256'h2AAAAAAAFFAAAAAAAAAAD54AAAAAAAB3B0A900AA05A91A022AAAAAAAAAAAAAAA),
    .INIT_2F(256'hA381A0AA88AB1A812AAAAAAA02AAAAAAAAAAA553AAAAAAA080A400AAC8AA1A85),
    .INIT_30(256'hAAAE557EAAAAAAACEAAAACAA19AAAAC12AAAAAAE80AAAAAAAAA8555FAAAAAAA4),
    .INIT_31(256'h1AAAAAC00806AAAAAAAAD52AAAAAAAAC0CAAA0AAAAAAAF692AAAAAF0202AAAAA),
    .INIT_32(256'h05BAAAAAAAAAC5002AAAAA800807AAAAAAA3556AAAAAAAA503AAA9AAAAAAB000),
    .INIT_33(256'hAAA2546AAAAAA914147EAAAAAAAABF431AAAAAE80833AAAAAAA3556AAAAAAB95),
    .INIT_34(256'hF2AAA202F003AAAAAAA2557AAAAABD57C732AAAAAAA933003CAAAA0E1BB3AAAA),
    .INIT_35(256'hB7FCAAAAAAABF0373BEAB400E800AAAAAAAEA552AAAA8453F7FBAAAAAAAAFF37),
    .INIT_36(256'hAAAA55532ABD15561485AAAAAAAA3BC003EABE00D80AAAAAAAAB4559AAAA1553),
    .INIT_37(256'h0C3200E38036AAAAAAA8545563E155D69511AAAAAAAACF08023B73C3CFBEAAAA),
    .INIT_38(256'h5B7AAAAAAAAAEF58380CA03EF73AAAAAAAAA951558D55454FFCBAAAAAAAAE078),
    .INIT_39(256'hAAAABF5557565529697AAAAAAAAAAE00EC20200BA62AAAAAAAAAE15511555555),
    .INIT_3A(256'h038008FAAAAAAAAAAAAAA155555545FF329AAAAAAAAAABFAC020080EAAAAAAAA),
    .INIT_3B(256'hAAAAAAAAAAAAAAABEA003FAAAAAAAAAAAAAAA915D95550AA00AAAAAAAAAAAAAF),
    .INIT_3C(256'hAAAAAAAAD506FAAAAAAAAAAAAAAAAAAAAAC03AAAAAAAAAAAAAAAAAB595556AAA),
    .INIT_3D(256'hAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAA),
    .INIT_3E(256'hAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA),
    .INIT_3F(256'hAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(2),
    .READ_WIDTH_B(2),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(2),
    .WRITE_WIDTH_B(2)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram 
       (.ADDRARDADDR({addra[12:0],1'b0}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED [15:2],DOADO}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED [15:0]),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED [1:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED [1:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 ),
        .ENBWREN(1'b0),
        .REGCEAREGCE(ena),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  LUT3 #(
    .INIT(8'h08)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_i_1 
       (.I0(ena),
        .I1(addra[14]),
        .I2(addra[13]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized1
   (\douta[1] ,
    clka,
    ena_0,
    ena,
    addra);
  output [0:0]\douta[1] ;
  input clka;
  input ena_0;
  input ena;
  input [13:0]addra;

  wire [13:0]addra;
  wire clka;
  wire [0:0]\douta[1] ;
  wire ena;
  wire ena_0;
  wire [15:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED ;
  wire [15:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB18E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_01(256'hFFFFFFFFFFFFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_02(256'hFFFFFF6FDFA000D7DFDFFFFFFFFFFFFF6FFFFFFFFFFFFFFFFFFFFFFF6FFFFFFF),
    .INIT_03(256'h5BC67A9DA257FFFFFFCEFF0258065899327DFFFFFF83FF069E7854D33F5DEFFF),
    .INIT_04(256'h98EC3FFFFE3B7FB34BA6709DAC6DDFFFFF98FEF35AA6F899E675FBFFFF81FE72),
    .INIT_05(256'hFE017FFFDBFFFF7FFFEFFDFFFE287F4FE48670E3FFE97DFFFE2AFF0366E670C1),
    .INIT_06(256'hFFFFFFFFFFFFC4FFFF117FFFFFFFFFFFFFFD71FFFD007FFFFFFFFFFFFFEBF9FF),
    .INIT_07(256'hFFFFFBFFFFE0FFFFFFEFDDFFFFFE1FFFFF807FFFFFFFFFFFFFF9C6FFFF8A7FFF),
    .INIT_08(256'hFFC07FBFFFFFFFFFFFF909FFFFC07FF9CC7FFFF5FFFFF1FFFFCF7FFFF3DAFFFF),
    .INIT_09(256'h3D38C0F3DFFFFBA7FFE07EFFFC39FFE7BFFFFB9FFFC07EFFFFF9FFFF7FF91FFF),
    .INIT_0A(256'hEFF83AEFFF00FFFF3C00F373FFFF92CFFF80FEFC1D1AD07BDFFBFEDFFFDFFFFE),
    .INIT_0B(256'hE61F7F7F7E997BCFFFFFFB7FE0617EFF7E1B7BC7FFFFFA77FA40FEFF7E1A7BF3),
    .INIT_0C(256'hFFFFFFFBFDFF0EFFF307FFFF7DFFFFE1FBFFC71FE002FF7F7CFF73C5F7F9FF6F),
    .INIT_0D(256'hFDFFFFFFFFFFFFFFFFFFFFFFFDFFFFFFFC3FFFFFFFFFFFFFFDFF43FFE90FFFBF),
    .INIT_0E(256'hFFFBFFFEFFFFF77BFFFFFFFFFFFFFFF5FEFFFFFDFFFFFFFFFFFFFFFBFFFFFFFF),
    .INIT_0F(256'hFFFFFFFFFFFF1FFFFFC1FFFFAFFC7FFFFFFFFFFFFF83FFFFFFFBFFFFBFFFFFFF),
    .INIT_10(256'hFFF821FFFF87FFFFFFFFFFFFFFFC47FFFF07FFFFFFFFFFFFFFFF8FFFFE03FFFF),
    .INIT_11(256'hFD07FFE007FFFFF07FFE25FFFD07FFF80FFFFFA87FF821FFFD07FFFC1FFFFFFF),
    .INIT_12(256'hDEFFFFC57FC0E0FFFFC1FF81DFFFFFF5DFD1C1FFFD07FFE195FFFE506FF33DFF),
    .INIT_13(256'h250D85FFFE005C0980FFFFB21759BFFFFF017E0108FFFF781FF0A3FFFF02FF01),
    .INIT_14(256'hFFF0110667FFFFF0E443D7FFFFC0000037FFFFF262C7D7FFFF802800FBFFFFC6),
    .INIT_15(256'hFFFFFFFFF07FFFFFFFE0A00F0FFFFFFF182FFFFFFFC0000F5BFFFFFF8423FFFF),
    .INIT_16(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81FFFFFFFFFFF87FFFFFFFFC807F),
    .INIT_17(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_18(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_19(256'hFFFFFFFFFFFFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_1A(256'hFFFFFF6FDFA000D7DFDFFFFFFFFFFFFF6FFFFFFFFFFFFFFFFFFFFFFF6FFFFFFF),
    .INIT_1B(256'h5BC67A9DA257FFFFFFCEFF0258065899327DFFFFFF83FF069E7854D33F5DEFFF),
    .INIT_1C(256'h98EC3FFFFE3B7FB34BA6709DAC6DDFFFFF98FEF35AA6F899E675FBFFFF81FE72),
    .INIT_1D(256'hFE017FFFDBFFFF7FFFEFFDFFFE287F4FE48670E3FFE97DFFFE2AFF0366E670C1),
    .INIT_1E(256'hFFFFFFFFF03FC4FFFF117FFFFFFFFFFFFD3D71FFFD007FFFFFFFFFFFFFEBF9FF),
    .INIT_1F(256'hFF3FFBFFFFE0FFFFFDFF7FF5FF3E1FFFFF807FFFFFB9EFFFC039C6FFFF8A7FFF),
    .INIT_20(256'hFFC07FBEB9FFFFFF7F3909FFFFC07FFFDFFFFFFEFF3FF1FFFFCF7FFBFBFFFDFE),
    .INIT_21(256'h737C6061FF3FFBA7FFE07FFFF27CE1E7FF3FFB9FFFC07F7FF0FCFFFFFF391FFF),
    .INIT_22(256'hFFF83AEFFF00FFFCF8307BF9FFFF92CFFF80FFFF703D7B79EFBBFEDFFFDFFFE0),
    .INIT_23(256'hE61F7FBDF93DBBC7FFFFFB7FE0617FFCFD3D3BE1FDFFFA77FA40FFFCFC3C3BF9),
    .INIT_24(256'hEFFFF7C0FFFF0EFFF307F9FDE73DB3CDFFFFC71FE002FBFDF33DBBCFFFF9FF6F),
    .INIT_25(256'hF3FFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFC3FFBF7FFFFFFE1FFFF43FFE90FFBEF),
    .INIT_26(256'hFFFBF9F7FF7BFFBF77FFFFFFFFFFFBFFFFFFFEFEFFFFFFFFFFFFFBFBFFFFFFFF),
    .INIT_27(256'hFFFFFFFFFFFF1FFFFFC1FFE5FFFFFFFFCFFFFFFFFF83F801FFFFEBFFBFFFFFFF),
    .INIT_28(256'hFFF821FFFF87FFFFFFFFFFFFFFFC47FFFF07FFFFFFFFFFFFFFFF8FFFFE03FFFF),
    .INIT_29(256'hFD07FFE007FFFFF07FFE25FFFD07FFF80FFFFFA87FF821FFFD07FFFC1FFFFFFF),
    .INIT_2A(256'hDEFFFFC57FC0E0FFFFC1FF81DFFFFFF5DFD1C1FFFD07FFE195FFFE506FF33DFF),
    .INIT_2B(256'h250D85FFFE005C0980FFFFB21759BFFFFF017E0108FFFF781FF0A3FFFF02FF01),
    .INIT_2C(256'hFFF0110667FFFFF0E443D7FFFFC0000037FFFFF262C7D7FFFF802800FBFFFFC6),
    .INIT_2D(256'hFFFFFFFFF07FFFFFFFE0A00F0FFFFFFF182FFFFFFFC0000F5BFFFFFF8423FFFF),
    .INIT_2E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81FFFFFFFFFFF87FFFFFFFFC807F),
    .INIT_2F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_30(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_31(256'hFFFFFFFFFFFFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_32(256'hFFFFFF6FDFA000D7DFDFFFFFFFFFFFFF6FFFFFFFFFFFFFFFFFFFFFFF6FFFFFFF),
    .INIT_33(256'h5BC67A9DA257FFFFFFCEFF0258065899327DFFFFFF83FF069E7854D33F5DEFFF),
    .INIT_34(256'h98EC3FFFFE3B7FB34BA6709DAC6DDFFFFF98FEF35AA6F899E675FBFFFF81FE72),
    .INIT_35(256'hFE017FFFDBFFFF7FFFEFFDFFFE287F4FE48670E3FFE97DFFFE2AFF0366E670C1),
    .INIT_36(256'hFFFFFFFFFFFFC4FFFF117811FFFFFFFFFFFD71FFFD007FFFFFFFFFFFFFEBF9FF),
    .INIT_37(256'h7FFFFBFFFFE0FDFFFFF8FFC8FFFE1FFFFF807DFFFFFAFFFEFFF9C6FFFF8A7801),
    .INIT_38(256'hFFC07DFD089D60E8FFF909FFFFC07DFD98B860887FFFF1FFFFCF7DFD99F8FD88),
    .INIT_39(256'h892C3A6333FFFBA7FFE07CFD190E23403BFFFB9FFFC07EFD0B1833687FF91FFF),
    .INIT_3A(256'h97F83AEFFF00FE7FEFF11DE397FF92CFFF80FEE12F8118E117FBFEDFFFDFFE8D),
    .INIT_3B(256'hE61F7FFFFFFFFFFE43FFFB7FE0617FFFFFFFFFFED7FFFA77FA40FFFFFFFFDFFF),
    .INIT_3C(256'h9EFF9FF3FFFF0EFFF307FFFFFFFF3FFFFFFFC71FE002FFFFFFFFFFFF03F9FF6F),
    .INIT_3D(256'hFFFFFFFFFFFFFFFE4EBF1EFBFFFFFFFFFC3FFFFE1E7F1F77FFFF43FFE90FFFFF),
    .INIT_3E(256'hFFFBFFFDCF0F0E01FFFFFFFFFFFFFFFDCF580E01FFFFFFFFFFFFFFFCCE5F1E7B),
    .INIT_3F(256'hD8CFAF39FFFF1FFFFFC1FFFC8C0FAF39FFFFFFFFFF83FFFDCE0F0E31FFFFFFFF),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram 
       (.ADDRARDADDR(addra),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED [15:1],\douta[1] }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED [15:0]),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED [1:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED [1:0]),
        .ENARDEN(ena_0),
        .ENBWREN(1'b0),
        .REGCEAREGCE(ena),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized10
   (p_7_out,
    clka,
    ena_array,
    ena,
    addra);
  output [8:0]p_7_out;
  input clka;
  input [0:0]ena_array;
  input ena;
  input [11:0]addra;

  wire [11:0]addra;
  wire clka;
  wire ena;
  wire [0:0]ena_array;
  wire [8:0]p_7_out;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000F80000000000000000000000F80000000000000000000000FC0000),
    .INITP_01(256'h01F8001FF80000600000000001F8000FF00000000000000001F8000300000000),
    .INITP_02(256'h660000EA0000000000FC003F740000AA0000000001F8001FFC0000AE00000000),
    .INITP_03(256'h0000000000FF03FFF60000000000000000FE01FEFE00000C0000000000FC007F),
    .INITP_04(256'h001FFFFB9800000000000000003FFFFFCC00000C00000000007FCFFE04000000),
    .INITP_05(256'h00000000000000000007FFE00000000000000000001FFFF0F000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000007E0000000000000000000003FF80),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h020000000003F800003C0000000000000003E00000000088C110000000000000),
    .INITP_0C(256'h000BBC0001FF800002000000000FFC0000EF0000020000000007FC00007E0000),
    .INITP_0D(256'h01FF800000000000000FFC0001EE800002000000000FFC0001EE800002000000),
    .INITP_0E(256'h0000000000023C0000E68000000000000007BC0001FF8000000000000007BC00),
    .INITP_0F(256'h0001FC00007F8000000000000001FC00007F8000000000000003FC0000FD8000),
    .INIT_00(256'h3838383838383800676767776767213938383838383838383838383838384342),
    .INIT_01(256'h3838383838383838383838383821DBBABAECECECDB2138383838383838383838),
    .INIT_02(256'h4338424238383838383843423838383835433844383838453638383843423838),
    .INIT_03(256'h3838383838383821252525256721213838383838383838383838383838383642),
    .INIT_04(256'h38383838383838383838383839D9ECECECBAECECECEB21383838383838383838),
    .INIT_05(256'h4242434238383838383844423838383838383838383838383838393837453838),
    .INIT_06(256'h3838383838383821466725352521383838383838383838383838383838381142),
    .INIT_07(256'h38383838383838383838383821ECECECECECBAECECEC22383838383838383838),
    .INIT_08(256'h4242422111383838383838383838383838383838383838383811216421112111),
    .INIT_09(256'h3838383838380087676767672521383838383838383838383838383822212567),
    .INIT_0A(256'h00573838383838383838383810FCECECECECBAECECEB00393838383838383838),
    .INIT_0B(256'h2828676711223838383838383838383838383838383838383964CBECCAECECEC),
    .INIT_0C(256'h3838383838380087676767676721383838383838383838383838382105676767),
    .INIT_0D(256'hEC5468383838383838383821CABABAECECECBAECECCAEC213838383838383838),
    .INIT_0E(256'h28676728082167383838383838383838383838383838383821EEEECBA9ECECEC),
    .INIT_0F(256'h3838383838380077676767662521383838383838383838383838212556676728),
    .INIT_10(256'hECDB21393838383838383821ECECCABAECBABADBBADBDB213838383838383838),
    .INIT_11(256'hEEEE67EEEEEE213838383838383838383838383838383821EE21EEDBDEEEEEEC),
    .INIT_12(256'h38383838383800366725252525213838383838383838383838116225676767EE),
    .INIT_13(256'hDBBAEC213838383838387721ECECFCBACB21EBECECECEB213838383838383838),
    .INIT_14(256'h21DE67FF21EE213838383838383838383838383838383821EE21FFDBEE21EEEC),
    .INIT_15(256'h38383838383869423535676767250038383838383838383821E52556676756EE),
    .INIT_16(256'hECDBCA3223383838383922EBECECECEC5410CAECECEC98213838383838383838),
    .INIT_17(256'h21EE67F721DE460138383838383838383838383838383821EEFF5BECEE218CEC),
    .INIT_18(256'h38383838383838212566676767672148383838383838362100672567676756EE),
    .INIT_19(256'hECECECCA213838383839C9BAECECECEC2100BAECECDB10383838383838383838),
    .INIT_1A(256'hDEEE67677756250138383838383838383838383838383821ECDBBACA08EEB8EC),
    .INIT_1B(256'h38383838383838212567676725255621483838383828212566676725676767F6),
    .INIT_1C(256'hECECECBAEC2121291110FCDBCAECECCA21FCDBBABADB21383838383838383838),
    .INIT_1D(256'h67676767E525250138383838383838383838383838383822DBECEBEBECECBAEC),
    .INIT_1E(256'h3838383838383800266767562567676710213938211156256767672546676777),
    .INIT_1F(256'hECECCBECECDBEC3287ECECECCBBAEC2121ECECECECDA22383838383838383838),
    .INIT_20(256'h21212121212511253838383838383838383838383838383821CAEBECA72121EC),
    .INIT_21(256'h3838383838383838216767255667676725255231466767256767676625676731),
    .INIT_22(256'hECDBBAECECDBDBECCABAECECECCBDB213921CADB212238383838383838383838),
    .INIT_23(256'hE2F36121365611383838383838383838383838383838383849109821F3F3FCEC),
    .INIT_24(256'h3838383838383838280056256667672556671525676767256767676725256767),
    .INIT_25(256'hDBBACBECECBAECECECBAECECECECB83938381111113838383838383838383838),
    .INIT_26(256'h671111677721383838383838383838383838383838383838384521CBECECECFC),
    .INIT_27(256'h38383838383838383821D4466767672567672546676767352567676756113567),
    .INIT_28(256'hCBECECECEBBAECECECEBBAECECFA223838383838383838383838383838383838),
    .INIT_29(256'h155757472148383838383838383838383838383838383838383838222121CABA),
    .INIT_2A(256'h3838383838383838383821256767672567672567676767672556676721344321),
    .INIT_2B(256'hECECECCBBAECECECECECBAEC2121383838383838383838383838383838383838),
    .INIT_2C(256'h0000000038383838383838383838383838383838383838383838383838387821),
    .INIT_2D(256'h383838383838383838383800E567672546673525676767676725157638383838),
    .INIT_2E(256'h21AABABAECECECECECDBBA212138383838383838383838383838383838383838),
    .INIT_2F(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_30(256'h3838383838383838383838382121672536676725676767676721223838383838),
    .INIT_31(256'h38212121CBECECECEC2121213838383838383838383838383838383838383838),
    .INIT_32(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_33(256'h3838383838383838383838383838211193676725255667212121383838383838),
    .INIT_34(256'h3838383912222212222738383838383838383838383838383838383838383838),
    .INIT_35(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_36(256'h3838383838383838383838383838383812121212121212283838383838383838),
    .INIT_37(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_38(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_39(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_3A(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_3B(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_3C(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_3D(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_3E(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_3F(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_40(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_41(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_42(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_43(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_44(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_45(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_46(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_47(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_48(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_49(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_4A(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_4B(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_4C(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_4D(256'h2121003838383838383838383838383838383838383838383838383838383838),
    .INIT_4E(256'h3838383838383838383838383838383838383838383838383838383838383821),
    .INIT_4F(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_50(256'hECDBDC0038383838383838383838383838383838383838383838383838383838),
    .INIT_51(256'h3838383838383838383838383838383838383838383838383838383838382132),
    .INIT_52(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_53(256'hEBDCDC0038383838383838383838383838383838383838383838383838383838),
    .INIT_54(256'h38383838383838383838383838383838383838383838383838383838383821DB),
    .INIT_55(256'h2121103838383821212100383838383838383838383838383838383838383838),
    .INIT_56(256'h2121003838383821212128212121212121212121212121213838212121213821),
    .INIT_57(256'h3838383838383838383838383838383838383838383838380021212121283821),
    .INIT_58(256'hEBEB212143332121ECEA00383838232121212155383838383838383838383838),
    .INIT_59(256'h4D2C00383838213CDBEC211CEBEBECEBEB32EBEBECDBEBEB212100DBEC002121),
    .INIT_5A(256'h3838383838383838383800000000383838383838383838211CECEBEB0C213864),
    .INIT_5B(256'hDAEB2121ECEC21EBEB213338382126D7D7D7D761213838383838383838383838),
    .INIT_5C(256'hEBDC0038380011EBEBDBEBEBDBDBEBEBEB32EBDBDBEBEBEB21ECEBEBEBEBCA21),
    .INIT_5D(256'h3838383838383838282198D8D8D811263838383838381221EBEBEBEBEBEC2153),
    .INIT_5E(256'h43EBEC00EBEC21ECEC21163857C3D7D7D7D7D7D7773438383838383838383838),
    .INIT_5F(256'hEBDB003838002DEB212186EBEB2121DBEB3221212100EBEC21EBEB2121CAEB21),
    .INIT_60(256'h383838383838383811D8D8D8D8D8D83138383838383821DBDB212121EBEB2153),
    .INIT_61(256'h21DBDC00EBDB43EBEB12383963EEFFD7C7FFEED7D75629383838383838383838),
    .INIT_62(256'hEBDC005838001CEB212810DBEB2121DBDB3238384900DBEC21EBDB2121ECEB21),
    .INIT_63(256'h3838383838383821C8D8B732B8D8B95A21383838383821DBCA212721DBEB2153),
    .INIT_64(256'h21ECDBEBECBADBEB22123822DEFFDED7EEFFFFD7D7D721383838383838383838),
    .INIT_65(256'hEBDB210021001DDB332810EBEB2121EBDB3238384800EBEC21EBDB2121ECEC21),
    .INIT_66(256'h38383838383821A8D8D8DEEEDED8EEDECD213838383821CABAB92121EBDB2154),
    .INIT_67(256'h21EBEBDB21EBEBDB21383822DE218CD7EE00EFE7D7D711383838383838383838),
    .INIT_68(256'hDBDB31EBDB212CDB542710EBEC2121EBEB3238384800DBEC21BAECECECEBDB21),
    .INIT_69(256'h38383838383821D8D8D8DE00EED8CE00EE21383838382121DBEBEBEBDBDB2153),
    .INIT_6A(256'h3821DBCB2111DBDB21383822EEBD39D7EEFFEED7D7E700393838383838383838),
    .INIT_6B(256'hDBCB31EBEB211CEB333800DBEC2121EBDB3238384800EBEB2121ECEBECEC2138),
    .INIT_6C(256'h38383838383821D8D8D8DE00DED88B00392138383838382100DBEBEBDB212143),
    .INIT_6D(256'h382121213921212138383822D7E7D7D7D7D7D7D7D7D700383838383838383838),
    .INIT_6E(256'h2121002121002121213821212138282121213838382121210039212121213938),
    .INIT_6F(256'h38383838383821D8D8D877DBA7D8D8B8D7213838383838384921212121393821),
    .INIT_70(256'h38383838383838383838380010D6D7D7D721B7D7D7B400383838383838383838),
    .INIT_71(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_72(256'h38383838383811E8D8D8D8D8D8D8D8D8D8213838383838383838383838383838),
    .INIT_73(256'h38383838383838383838383821D70693D3B1D7D7D6B400383838383838383838),
    .INIT_74(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_75(256'h3838383838383821D8D8D821A3C7D821D8213838383838383838383838383838),
    .INIT_76(256'h3838383838383838383838384911D7111121D6B4B4C500383838383838383838),
    .INIT_77(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_78(256'h3838383838383821A6D8D8D882D331D8D8213838383838383838383838383838),
    .INIT_79(256'h383838383838383838383838380036E7E7B4B4B4D6D772383838383838383838),
    .INIT_7A(256'h3838383838383838383838383838373838383838383838383838383838384236),
    .INIT_7B(256'h383838383838383821D8D8D8D8D8D8D8D8213838383838383838383838383838),
    .INIT_7C(256'h383838383838383838383838383821B4B4B4D6D7D7D721383838383838383838),
    .INIT_7D(256'h3838383838383838383838383842424238383838383838383838424238384242),
    .INIT_7E(256'h383838383838383811B5B5D7D8D8D8D7B5213838383838383838383838383838),
    .INIT_7F(256'h383838383838383838383838383821D7D7D7D7D7D7B421383838383838383838),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],p_7_out[7:0]}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],p_7_out[8]}),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(ena),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized11
   (p_3_out,
    clka,
    ena_array,
    ena,
    addra);
  output [8:0]p_3_out;
  input clka;
  input [0:0]ena_array;
  input ena;
  input [11:0]addra;

  wire [11:0]addra;
  wire clka;
  wire ena;
  wire [0:0]ena_array;
  wire [8:0]p_3_out;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h003F8000000000000001F800003F8000000000000001F800003F800000000000),
    .INITP_01(256'h000000000003F8F0003F8000000000000003F800003F8000000000000001F800),
    .INITP_02(256'h0003FFF000FF0000000000000003F1F0007F8000000000000003F0F0003F8000),
    .INITP_03(256'h0FFE0000000000000003FFE00FFF0000000000000003FFF007FF000000000000),
    .INITP_04(256'h0000000000007F000FFC00F8000000000001FF800FFE00CC000000000001FFC0),
    .INITP_05(256'h00000000000000C00000000000000000000000C0000000000000000007F000C0),
    .INITP_06(256'h000000000000000000000000000000C00000000000000000000000C000000000),
    .INITP_07(256'h0000000080000000007C00000000000080000000003C00000000000080000000),
    .INITP_08(256'hC000000000F80000000000008000000000F80000000000008000000000FC0000),
    .INITP_09(256'h01F8001FF8000061C000000001F8000FF000003FC000000001F800030000003F),
    .INITP_0A(256'h660000EA0000000000FC003F740000AA0000000001F8001FFC0000AE00000000),
    .INITP_0B(256'h0000000000FF03FFF60000000000000000FE01FEFE00000C0000000000FC007F),
    .INITP_0C(256'h001FFFFB9800000000000000003FFFFFCC00000C00000000007FCFFE04000000),
    .INITP_0D(256'h00000000000000000007FFE00000000000000000001FFFF0F000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000007E0000000000000000000003FF80),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h3837433838364244383838383842424243383838444438383836424238444242),
    .INIT_01(256'h38383838383838384900D8C6B5B5B5B5D7213838383838383838383838363638),
    .INIT_02(256'h453838383838383838383838383821D7D7D7D7D7D50049383838383838383838),
    .INIT_03(256'h3842423838364242374238383842423542363842424242423844424238444242),
    .INIT_04(256'h38383838383838383800D8D8D8D8D8D8D8213838383838383838383838363638),
    .INIT_05(256'h423838383838383838383838382800B4D6E6D6B4B40049383838383838383838),
    .INIT_06(256'h3742423838434242434236383843423842453842424442424438434238444242),
    .INIT_07(256'h38383838383838382800D8D8D8D8D8D8D8213838383838383838383838364237),
    .INIT_08(256'h423738383838383838383838382800D7B4B4B4D7D72138383838383838383838),
    .INIT_09(256'h4242423838424342424242383837424242423842423645424238434238424245),
    .INIT_0A(256'h38383838383838383800D8D8D8D8D8D8D8213838383838383838383838364242),
    .INIT_0B(256'h4236383838383838383838383821D7D7D7D7D7D7D71138391110101138383838),
    .INIT_0C(256'h3842423738424338424242383838444242423838424338364238354236424238),
    .INIT_0D(256'h38383838383838383800B5D7D7D8D8D8C5213838383838383838383838364238),
    .INIT_0E(256'h4242383838383838383838383821D7D7D7D7D7D715113821B4B4D76800383838),
    .INIT_0F(256'h3842374237423638424244423838434235423738364243424238384242423638),
    .INIT_10(256'h38383838383838384500D8B5B4B5B5B5C7213838383838383838424238364238),
    .INIT_11(256'h3642383838383838383838383831D7D7D7D7D7C521384700D6C5B4D721383838),
    .INIT_12(256'h4442384238443838454238423842424337423738384342423538384242423838),
    .INIT_13(256'h383838383838383811D8D8D8D8D8D8D8D8213838383838383837444242424238),
    .INIT_14(256'h3742423838383838383838383831C5D7D7D6B4B4711211D6D7D7B4B421383838),
    .INIT_15(256'h4243383638383838383838363842443838424238383837363838383642443838),
    .INIT_16(256'h3838383811235621C7D7D8D8D8D8D8D821383838383838383838383845433738),
    .INIT_17(256'h3842423838383838383838383831B4B4B4B4B4D7D7B4C4B4C5D7D7B421383838),
    .INIT_18(256'h3838383838383838383838383838383838434238383838383838383838383838),
    .INIT_19(256'h3838380011D8B4D8D7B5D7D8D8D8D8D821383838383838383838383838383838),
    .INIT_1A(256'h3836423838383838383838383842D7D7D7D7D7D7D7B4D7D6B4D7D78459383838),
    .INIT_1B(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_1C(256'h38383800C8C6C6D8D8B5B5D7D8D8D8B521383838383838383838383838383838),
    .INIT_1D(256'h3838383838383838383838383821D7D7D7D7D7D7D7B4D7D7B4D7D72138383838),
    .INIT_1E(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_1F(256'h38383800D8B5D7D8D8D8C6B5B5B4B42121383838383838383838383838383838),
    .INIT_20(256'h383838383838383838383838380000D7D7D7D7D7B4B5D7D7B4C5210038383838),
    .INIT_21(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_22(256'h38383800D8C6C6D8D8D8D8D8D8D8C71038383838383838387D5C69796C7D3838),
    .INIT_23(256'h383838383838383838383838383821D7D7D7D6B4B4D7D7D7B4008A3838383838),
    .INIT_24(256'h3838383838383838383838383838383837423738383838383838383838383838),
    .INIT_25(256'h38383821D8D8B5D8D8D8D8D8D8B921283838383838383838EEEEEEEE6C793838),
    .INIT_26(256'h3838383838383838383838383838382100B4B4B4D7D7C4A45189383838383838),
    .INIT_27(256'h3838383838383838383838383838383836424238383838383838383842363838),
    .INIT_28(256'h3838385621C8C6B5D8D8D8D8722138383838383838383838EE6D383838383838),
    .INIT_29(256'h3838383838383838383838383838383800111010000021213938383838383838),
    .INIT_2A(256'h4242423638383842424338383838383844424238383838363738383842453838),
    .INIT_2B(256'h383838382921000000001121283838383838383838383838EE7D383838383838),
    .INIT_2C(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_2D(256'h4237443638383842434244383838383842424238383838354338383842423838),
    .INIT_2E(256'h383838383838382838383838383838383838383838383838EE6D383838383642),
    .INIT_2F(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_30(256'h3838423838383842434542383838383842424238383838384238383836423838),
    .INIT_31(256'h383838383838383838383838383838383838383838383838EE7D383838384242),
    .INIT_32(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_33(256'h3838423838383842423542373742424242424236383838384242424235423838),
    .INIT_34(256'h3838383838383838383838383838383838383838383838389D3C383838364237),
    .INIT_35(256'h4938383838383838383838383838383838383838383838383838383838383838),
    .INIT_36(256'h3837423838383838424242423838383842424242383838384243374442423838),
    .INIT_37(256'h3838383838383838382821212111383838383838383838383838383838364238),
    .INIT_38(256'hEE38383838383838383838383838383838383838383838383838383838383838),
    .INIT_39(256'h3836423838383844424242423838383843424342383838384236383838423838),
    .INIT_3A(256'h3838383838383838390167676756213838383838383838383838383838364237),
    .INIT_3B(256'hEE38383838383838383838383838383811111138383838383838383838383838),
    .INIT_3C(256'h38374236383642424236424238383838364238423838383842363838384237DA),
    .INIT_3D(256'h3838383838383838213567676767003938383838383838383838383838384243),
    .INIT_3E(256'hEE383838383838383838383838282121FCECFC21213838383838383838383838),
    .INIT_3F(256'h38384243383743373838424238383838364238423838383642383838384237DA),
    .INIT_40(256'h3838383838383800676767776767213938383838383838383838383838384342),
    .INIT_41(256'hEE38383838383838383838383821DBBABAECECECDB2138383838383838383838),
    .INIT_42(256'h43384242383838383838434238383838354338443838384536383838434238DA),
    .INIT_43(256'h3838383838383821252525256721213838383838383838383838383838383642),
    .INIT_44(256'hEE383838383838383838383839D9ECECECBAECECECEB21383838383838383838),
    .INIT_45(256'h42424342383838383838444238383838383838383838383838383979474538CA),
    .INIT_46(256'h3838383838383821466725352521383838383838383838383838383838381142),
    .INIT_47(256'hEE8D3838383838383838383821ECECECECECBAECECEC22383838383838383838),
    .INIT_48(256'h4242422111383838383838383838383838383838383838383811DDEEEEEEEEAC),
    .INIT_49(256'h3838383838380087676767672521383838383838383838383838383822212567),
    .INIT_4A(256'hEECD3838383838383838383810FCECECECECBAECECEB00393838383838383838),
    .INIT_4B(256'h28286767112238383838383838383838383838383838383839648D9DADEEEEEE),
    .INIT_4C(256'h3838383838380087676767676721383838383838383838383838382105676767),
    .INIT_4D(256'hEE4A68383838383838383821CABABAECECECBAECECCAEC213838383838383838),
    .INIT_4E(256'h28676728082167383838383838383838383838383838383821EEEECBA9ECEC2C),
    .INIT_4F(256'h3838383838380077676767662521383838383838383838383838212556676728),
    .INIT_50(256'hECDB21393838383838383821ECECCABAECBABADBBADBDB213838383838383838),
    .INIT_51(256'hEEEE67EEEEEE213838383838383838383838383838383821EE21EEDBDEEEEEEC),
    .INIT_52(256'h38383838383800366725252525213838383838383838383838116225676767EE),
    .INIT_53(256'hDBBAEC213838383838387721ECECFCBACB21EBECECECEB213838383838383838),
    .INIT_54(256'h21DE67FF21EE213838383838383838383838383838383821EE21FFDBEE21EEEC),
    .INIT_55(256'h38383838383869423535676767250038383838383838383821E52556676756EE),
    .INIT_56(256'hECDBCA3223383838383922EBECECECEC5410CAECECEC98213838383838383838),
    .INIT_57(256'h21EE67F721DE460138383838383838383838383838383821EEFF5BECEE218CEC),
    .INIT_58(256'h38383838383838212566676767672148383838383838362100672567676756EE),
    .INIT_59(256'hECECECCA213838383839C9BAECECECEC2100BAECECDB10383838383838383838),
    .INIT_5A(256'hDEEE67677756250138383838383838383838383838383821ECDBBACA08EEB8EC),
    .INIT_5B(256'h38383838383838212567676725255621483838383828212566676725676767F6),
    .INIT_5C(256'hECECECBAEC2121291110FCDBCAECECCA21FCDBBABADB21383838383838383838),
    .INIT_5D(256'h67676767E525250138383838383838383838383838383822DBECEBEBECECBAEC),
    .INIT_5E(256'h3838383838383800266767562567676710213938211156256767672546676777),
    .INIT_5F(256'hECECCBECECDBEC3287ECECECCBBAEC2121ECECECECDA22383838383838383838),
    .INIT_60(256'h21212121212511253838383838383838383838383838383821CAEBECA72121EC),
    .INIT_61(256'h3838383838383838216767255667676725255231466767256767676625676731),
    .INIT_62(256'hECDBBAECECDBDBECCABAECECECCBDB213921CADB212238383838383838383838),
    .INIT_63(256'hE2F36121365611383838383838383838383838383838383849109821F3F3FCEC),
    .INIT_64(256'h3838383838383838280056256667672556671525676767256767676725256767),
    .INIT_65(256'hDBBACBECECBAECECECBAECECECECB83938381111113838383838383838383838),
    .INIT_66(256'h671111677721383838383838383838383838383838383838384521CBECECECFC),
    .INIT_67(256'h38383838383838383821D4466767672567672546676767352567676756113567),
    .INIT_68(256'hCBECECECEBBAECECECEBBAECECFA223838383838383838383838383838383838),
    .INIT_69(256'h155757472148383838383838383838383838383838383838383838222121CABA),
    .INIT_6A(256'h3838383838383838383821256767672567672567676767672556676721344321),
    .INIT_6B(256'hECECECCBBAECECECECECBAEC2121383838383838383838383838383838383838),
    .INIT_6C(256'h0000000038383838383838383838383838383838383838383838383838387821),
    .INIT_6D(256'h383838383838383838383800E567672546673525676767676725157638383838),
    .INIT_6E(256'h21AABABAECECECECECDBBA212138383838383838383838383838383838383838),
    .INIT_6F(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_70(256'h3838383838383838383838382121672536676725676767676721223838383838),
    .INIT_71(256'h38212121CBECECECEC2121213838383838383838383838383838383838383838),
    .INIT_72(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_73(256'h3838383838383838383838383838211193676725255667212121383838383838),
    .INIT_74(256'h3838383912222212222738383838383838383838383838383838383838383838),
    .INIT_75(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_76(256'h3838383838383838383838383838383812121212121212283838383838383838),
    .INIT_77(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_78(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_79(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_7A(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_7B(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_7C(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_7D(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_7E(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_7F(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],p_3_out[7:0]}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],p_3_out[8]}),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(ena),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized2
   (douta,
    clka,
    ena,
    addra);
  output [0:0]douta;
  input clka;
  input ena;
  input [14:0]addra;

  wire [14:0]addra;
  wire clka;
  wire [0:0]douta;
  wire ena;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h00000010005FFF08000000000000000080000000000000000000000080000000),
    .INIT_03(256'h803981624DAFF800001D02FD81F9A766CD83E000000000F1C187AB08C0C00000),
    .INIT_04(256'h67091C0000FF804CA0198362534BBC0000ED012C9119036609CF9C00007E018D),
    .INIT_05(256'h01C7800000000000000FFC0001EC80301919831C000F3C0001EE80FC9959833E),
    .INIT_06(256'h000000000002200000EE8000000000000007B80003FF8000000000000007B800),
    .INIT_07(256'h0001F800001F000000080DC000003C00007F80000000000000038E0000758000),
    .INIT_08(256'h003F803EFFFFFFFB0000E200003F80084CFFFFF90001FA00003080000C39FFE0),
    .INIT_09(256'hFFFFFFFFC003F420001F80FFFFFFFFFFC003FC00003F80FFFFFFFFFF80011800),
    .INIT_0A(256'hE004186000FF00FFFFFFFFFFE001CDC0007F80FFFFFFFFFFE007E29000A081FF),
    .INIT_0B(256'h0BE0807FFFFFFFFFF003FB600F9E80FFFFFFFFFFF003FB6805BF00FFFFFFFFFF),
    .INIT_0C(256'hFFFFFFFFFE000C000DF8007FFFFFFFFFFC01E7200FFE00FFFFFFFFFFF001F300),
    .INIT_0D(256'hFE0000000000003FFFFFFFFFFC0000000000007FFFFFFFFFFC00000006F0003F),
    .INIT_0E(256'h00040000FF1FF67DE000000000000001FE1FFEF9E00000000000003BFFFFFFFB),
    .INIT_0F(256'h000000000000E000004000001000403C00000000000000007A03C07C20000000),
    .INIT_10(256'h0007DC0000B80000000000000007BC0000F00000000000000000700000000000),
    .INIT_11(256'h0008001008000067A001DA0000000000040000574007DC000008000A28000010),
    .INIT_12(256'h470000D2803F1F0001C40021540000A0202E3E000178003196000101900C8200),
    .INIT_13(256'hDAF27E00008821180700014DE8A64000008C011103000083E02F1C0000800021),
    .INIT_14(256'h003131820000004F1BBE38000011310CCC00000F9D382C000010F90905000039),
    .INIT_15(256'h000000000F8000000001B06000000002E7D0000000312080D00000127BDA0000),
    .INIT_16(256'h000000000000FE00000000000FC0000000001800000000000780000000019020),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h00000010005FFF08000000000000000080000000000000000000000080000000),
    .INIT_1B(256'h803981624DAFF800001D02FD81F9A766CD83E000000000F1C187AB08C0C00000),
    .INIT_1C(256'h67091C0000FF804CA0198362534BBC0000ED012C9119036609CF9C00007E018D),
    .INIT_1D(256'h01C7800000000000000FFC0001EC80301919831C000F3C0001EE80FC9959833E),
    .INIT_1E(256'h000000000802200000EE8000000000000047B80003FF8000000000000007B800),
    .INIT_1F(256'h0001F800001F001801F7180400003C00007F80000000000040038E0000758000),
    .INIT_20(256'h003F803F7FFFFFFF0000E200003F803C1FFFFEFF0001FA000030803C01FFFCFE),
    .INIT_21(256'hFFFFFFFFC003F420001F80FFFFFFFFFFC003FC00003F80FFFFFFFFFF80011800),
    .INIT_22(256'hFC04186000FF00FFFFFFFFFFF801CDC0007F80FFFFFFFFFFE087E29000A080FF),
    .INIT_23(256'h0BE0847FFFFFFFFFFE03FB600F9E807FFFFFFFFFFC03FB6805BF00FFFFFFFFFF),
    .INIT_24(256'hFFFFFFFFFF000C000DF8003FFFFFFFFFFF01E7200FFE023FFFFFFFFFFF01F300),
    .INIT_25(256'hF800000000000807FFFFFFFFFC00000000000807FFFFFFFFFF00000006F0000F),
    .INIT_26(256'h00040805FD9AFC607000000000000803FFFFFCF2F000000000000807FFFFFFF7),
    .INIT_27(256'h000000000000E000004007F0000000002000000000000801E000000030000000),
    .INIT_28(256'h0007DC0000B80000000000000007BC0000F00000000000000000700000000000),
    .INIT_29(256'h0008001008000067A001DA0000000000040000574007DC000008000A28000010),
    .INIT_2A(256'h470000D2803F1F0001C40021540000A0202E3E000178003196000101900C8200),
    .INIT_2B(256'hDAF27E00008821180700014DE8A64000008C011103000083E02F1C0000800021),
    .INIT_2C(256'h003131820000004F1BBE38000011310CCC00000F9D382C000010F90905000039),
    .INIT_2D(256'h000000000F8000000001B06000000002E7D0000000312080D00000127BDA0000),
    .INIT_2E(256'h000000000000FE00000000000FC0000000001800000000000780000000019020),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h00000010005FFF08000000000000000080000000000000000000000080000000),
    .INIT_33(256'h803981624DAFF800001D02FD81F9A766CD83E000000000F1C187AB08C0C00000),
    .INIT_34(256'h67091C0000FF804CA0198362534BBC0000ED012C9119036609CF9C00007E018D),
    .INIT_35(256'h01C7800000000000000FFC0001EC80301919831C000F3C0001EE80FC9959833E),
    .INIT_36(256'h000000000002200000EE801C000000000007B80003FF8000000000000007B800),
    .INIT_37(256'h0001F800001F00000007003300003C00007F80000002000300038E0000758000),
    .INIT_38(256'h003F8003E3E6DF378000E200003F800063C69F778001FA000030800046078037),
    .INIT_39(256'hFCD1679CC403F420001F800275E1C8968803FC00003F8003E7E7DFB7C4011800),
    .INIT_3A(256'h6404186000FF000E8006620CE401CDC0007F805ED0D6E39C4007E29000A080B2),
    .INIT_3B(256'h0BE08000000000003003FB600F9E8000000000002403FB6805BF000000006000),
    .INIT_3C(256'h0080600C00000C000DF800000000E0000001E7200FFE0000000000010001F300),
    .INIT_3D(256'h0000000000000001E1C0E08C0000000000000000E1C0E08C0000000006F00000),
    .INIT_3E(256'h0004000360F0F0BC000000000000000321FFF0F400000000000000032160E084),
    .INIT_3F(256'h353050860000E0000040000273F05086000000000000000321F0508400000000),
    .INIT_40(256'h0007DC0000B80001F030000C0007BC0000F00001B030110C0000700000000001),
    .INIT_41(256'h0008001008000067A001DA0000000000040000574007DC000008000AE8000010),
    .INIT_42(256'h470000D2803F1F0001C40021540000A0202E3E000178003196000101900C8200),
    .INIT_43(256'hDAF27E00008821180700014DE8A64000008C011103000083E02F1C0000800021),
    .INIT_44(256'h003131820000004F1BBE38000011310CCC00000F9D382C000010F90905000039),
    .INIT_45(256'h000000000F8000000001B06000000002E7D0000000312080D00000127BDA0000),
    .INIT_46(256'h000000000000FE00000000000FC0000000001800000000000780000000019020),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h00000010005FFF08000000000000000080000000000000000000000080000000),
    .INIT_4B(256'h803981624DAFF800001D02FD81F9A766CD83E000000000F1C187AB08C0C00000),
    .INIT_4C(256'h67091C0000FF804CA0198362534BBC0000ED012C9119036609CF9C00007E018D),
    .INIT_4D(256'h01C7800000000000000FFC0001EC80301919831C000F3C0001EE80FC9959833E),
    .INIT_4E(256'h000000000002200000EE8000000000000007B80003FF8000000000000007B800),
    .INIT_4F(256'h0001F800001F00000007003300003C00007F80000002000300038E0000758000),
    .INIT_50(256'h003F8003E3E6DF378000E200003F800063C69F778001FA000030800046078037),
    .INIT_51(256'hFCD1679CC003F420001F800275E1C8968003FC00003F8003E7E7DFB7C0011800),
    .INIT_52(256'h6004186000FF000E8006620CE001CDC0007F805ED0D6E39C4007E29000A08032),
    .INIT_53(256'h0BE08000000000000003FB600F9E8000000000002003FB6805BF000000006000),
    .INIT_54(256'h0080600C00000C000DF800040000E0000001E7200FFE00B4000000000001F300),
    .INIT_55(256'h0000000000000041E1C0E08C0000000000000040E1C0E08C0000000006F00040),
    .INIT_56(256'h0004000360F0F0BC000000000000008321FFF0F400000000000000432160E084),
    .INIT_57(256'h353050860000E0000040000273F05086000000000000000321F0508400000000),
    .INIT_58(256'h4007DC0000B80001F030001C0007BC0000F00001B030110C0000700000000001),
    .INIT_59(256'h00080010080000662001DA0000000000040000400007DC000008000AE8000000),
    .INIT_5A(256'h470000D2803F1F0001C40021540000A0202E3E000178003196000101900C8200),
    .INIT_5B(256'hDAF27E00008821180700014DE8A64000008C011103000083E02F1C0000800021),
    .INIT_5C(256'h003131820000004F1BBE38000011310CCC00000F9D382C000010F90905000039),
    .INIT_5D(256'h000000000F8000000001B06000000002E7D0000000312080D00000127BDA0000),
    .INIT_5E(256'h000000000000FE00000000000FC0000000001800000000000780000000019020),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:1],douta}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(ena),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized3
   (\douta[4] ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    ena,
    addra);
  output [1:0]\douta[4] ;
  output \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input ena;
  input [14:0]addra;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [14:0]addra;
  wire clka;
  wire [1:0]\douta[4] ;
  wire ena;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:2]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  LUT2 #(
    .INIT(4'h4)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_i_1__0 
       (.I0(addra[14]),
        .I1(ena),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ));
  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_01(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_02(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_03(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC03FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_04(256'h00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000FFFFFFFFFFFFFF),
    .INIT_05(256'hFFFFFFFFFFFF003C03FC0C000000F00C03FC03FFFFFFFFFFFFFFFFFFFFFFFFF0),
    .INIT_06(256'h000007C5543FFFFFFFFFF00FFFFC404C53F1010000000000000003F402FFFFFF),
    .INIT_07(256'h03C400000000000000000B85555FFFFFFFFFC402FFF0000003C0000000000000),
    .INIT_08(256'hFFFC00053FF0080002C430000FC0000000000F2D7D5FFFFFFFFF0000FFF00000),
    .INIT_09(256'h00003D8DCD53FFFFFFF10A8A8FF00000000430000FC0000000000DBDBD53FFFF),
    .INIT_0A(256'h000430000FC00003C0003DA5F953FFFFFFF008888FF00000000420000FC00000),
    .INIT_0B(256'hFFF006400FFFC03C0000303C0FC0300FC0C0FD555553FFFFFFF008884FFC0000),
    .INIT_0C(256'hFFFFFF140553FFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFC154553FFFF),
    .INIT_0D(256'hFFFFFFFFFFFFFFFFFFFFFFC40553FFFFFFFC00000FFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0E(256'hFFFF00000FFFFFFFFFFFFFFFFFFFAFFFFFFFFFC55553FFFFFFFC00000FFFFFFF),
    .INIT_0F(256'hFFFFFFF15553FFFFFFFF00000FFFFFFFFFFFFE7F9B6A07FFFFFFFFF15553FFFF),
    .INIT_10(256'hE5074000000000B5FFFFFFF1554FFFFFFFFFC0000FFFFFFFFF5FE41D000001FF),
    .INIT_11(256'hFFFFC0000FFFD0030000000000000030FFFFFFF1554FFFFFFFFFC0000FFFFF9F),
    .INIT_12(256'h2FFFFFC5554F00FFFFFFC0000FFF000000000000000000007FFFFFF1554FFFFF),
    .INIT_13(256'h00000000000000000FFFFFC5554C563FFFFFC0000FFE00000000000000000000),
    .INIT_14(256'hFFFF00000FFD0000000000000000000007FFFFC55538553FFFFF40000FFC0000),
    .INIT_15(256'h01FFFFC55555553FFF1800003FFD0000000000000000000003FFFFC55501553F),
    .INIT_16(256'h000000000000000000FFFFC5555555FFFC0000003FFE00000000000000000000),
    .INIT_17(256'hFC0000003FFF40000000000000000000007FFFC5555554FFFC0000003FFF0000),
    .INIT_18(256'h002FFFF155554FFFFC000000FFFF40000000000000000000007FFFC1555550FF),
    .INIT_19(256'h0000000000000000000BFFFC15553FFFFC000013FFFFC0000000000000000000),
    .INIT_1A(256'hFFC000FFFFFFE0000000000000000000000BFFFF0000FFFFFE00000FFFFFD000),
    .INIT_1B(256'h0007FFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000BFFFFFFFFFFFF),
    .INIT_1C(256'h0001D4000001003C015FFFFFFFFFFFFFFFFFFFFFFFFFF0100002000000000030),
    .INIT_1D(256'hFFFFF00FFFFFFFFD0000FD000057C02E03FFFFFFFFFFFFFFFFFFFFFFFFFFFDB4),
    .INIT_1E(256'hFFFFFFFF03FFFFFFFFFFCFF3FFFFFFFF8052FFF00FFFE00FEBFFFFFFFFFFFFFF),
    .INIT_1F(256'hFFFFFFFFFFFFFFFFFFFFFFF0003FFFFFFFFF2FF3FFFFFFFFFAFFFFFEAFFFF82F),
    .INIT_20(256'hFFFCAAC3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0000FFFFFFFFCFFF3FFFFFFFF),
    .INIT_21(256'hFFFFFF000003FFFFFFFCBA8FFFFFFFF00FFFFFFFFFFFFFFFFFFFFFC00003FFFF),
    .INIT_22(256'hAF0FFFFFFFFFC0002FFFFF000003FFFFFFF3FF8FFFFFFF0BF03FFFFFFFFFC000),
    .INIT_23(256'hFFF3FF8FFFFFF2FEBE4BFFFFFFFF28000BFFFC000000FFFFFFF3FFCFFFFFFCBF),
    .INIT_24(256'h00FFF8000000FFFFFFF2EA8FFFFFC2FEBEE3FFFFFFFCCCFC03FFFC000000FFFF),
    .INIT_25(256'h2D28FFFFFFFCB8C8007FF0000000FFFFFFFCAFE3FFFF2BFE2F23FFFFFFFC8CCC),
    .INIT_26(256'hFFFCBFACFFF2FEFDFFF8FFFFFFFC0070003FF0000003FFFFFFFCBFF3FFF83BFE),
    .INIT_27(256'h000000000003FFFFFFFCBFBF0F0EFEBFFFA8FFFFFFFC0000000300000003FFFF),
    .INIT_28(256'h00A3FFFFFFFFC00000000000C00FFFFFFFFF3EFFA0BEFFBC0021FFFFFFFF0000),
    .INIT_29(256'hFFFFC6FEFAFEBFCBC3CFFFFFFFFFD00000000003F03FFFFFFFFFCEFEFAFEFFAF),
    .INIT_2A(256'h0000000FFFFFFFFFFFFFF2FEFBFFBF14AE3FFFFFFFFFFC0000000013FFFFFFFF),
    .INIT_2B(256'hFFFFFFFFFFFFFFFF0000003FFFFFFFFFFFFFFCBEBAFFEAFF00FFFFFFFFFFFFF8),
    .INIT_2C(256'hFFFFFFF07EBC0FFFFFFFFFFFFFFFFFFFC00000FFFFFFFFFFFFFFFF0EBEFFC3FF),
    .INIT_2D(256'hFFFFFFFFFFFFFFFFFFFFFFFF0003FFFFFFFFFFFFFFFFFFFFFF002FFFFFFFFFFF),
    .INIT_2E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_2F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_30(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_31(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_32(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_33(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC03FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_34(256'h00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000FFFFFFFFFFFFFF),
    .INIT_35(256'hFFFFFFFFFFFF003C03FC0C000000F00C03FC03FFFFFFFFFFFFFFFFFFFFFFFFF0),
    .INIT_36(256'h000007C5543FFFFFFFFFF00FFFFC404C53F1010000000000000003F402FFFFFF),
    .INIT_37(256'h03C400000000000000000B85555FFFFFFFFFC402FFF0000003C0000000000000),
    .INIT_38(256'hFFFC00053FF0080002C430000FC0000000000F2D7D5FFFFFFFFF0000FFF00000),
    .INIT_39(256'h00003D8DCD53FFFFFFF10A8A8FF00000000430000FC0000000000DBDBD53FFFF),
    .INIT_3A(256'h000430000FC00003C0003DA5F953FFFFFFF008888FF00000000420000FC00000),
    .INIT_3B(256'hFFF006400FFFC03C0000303C0FC0300FC0C0FD555553FFFFFFF008884FFC0000),
    .INIT_3C(256'hFFFC0F140553FFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFC154553FFFF),
    .INIT_3D(256'hFFFFFFFFFFFFFFFFFF000FC40553FFFFFFFC00000FFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_3E(256'hFFFF00000FFFFFFFFFFFFFFFFFFFFFFFC0030FC55553FFFFFFFC00000FFFFFFF),
    .INIT_3F(256'hFFFF0FF15553FFFFFFFF00000FFFFEBFFFF80282F43FFF4FFFFF0FF15553FFFF),
    .INIT_40(256'hF400000000010001FFFF0FF1554FFFFFFFFFC0000FFFF42FFEF4000000078003),
    .INIT_41(256'hFFFFC0000FFFD0055000000000000000FFFF0FF1554FFFFFFFFFC0000FFFF00F),
    .INIT_42(256'h0FFF0FC5554F00FFFFFFC0000FFF800000000000000000003FFF0FF1554FFFFF),
    .INIT_43(256'h000000000000000007FF0FC5554C563FFFFFC0000FFF00000000000000000000),
    .INIT_44(256'hFFFF00000FFF0000000000000000000002FF0FC55538553FFFFF40000FFF0000),
    .INIT_45(256'h002FFFC55555553FFF1800003FFF0000000000000000000000BFFFC55501553F),
    .INIT_46(256'h0000000000000000000FFFC5555555FFFC0000003FFF00000000000000000000),
    .INIT_47(256'hFC0000003FEBD00000000000000000000003FFC5555554FFFC0000003FFF8000),
    .INIT_48(256'h0000BFF155554FFFFC000000FFD3F00000000000000000000000FFC1555550FF),
    .INIT_49(256'h00000000000000000000FFFC15553FFFFC000013FFCBF8000000000000000000),
    .INIT_4A(256'hFFC000FFFF8FFF4000000000000000000000FFFF0000FFFFFE00000FFFCFFE00),
    .INIT_4B(256'h01BFFFFFFFFFFFFFFFFFFFFFFF8FFFC00000000000000000000BFFFFFFFFFFFF),
    .INIT_4C(256'h00000000000540E100FFFFFFFFFFFFFFFFFFFFFFFF8FFFE00000000000000080),
    .INIT_4D(256'hFFFFF00FFF8FFFEC0004B413000FD3FF40BFFFFFFFFFFFFFFFFFFFFFFF8FFFF0),
    .INIT_4E(256'hF6FFFFFF03FFFFFFFFFFCFF3FF80000201FFFFFFFF6FFFFFD0BFFFFFFFFFFFFF),
    .INIT_4F(256'hFFFFFFFFFFFFFFFFFFFFFFF0003FFFFFFFFF2FF3FFEAAA1FFFFFFFFFFFFFFFFF),
    .INIT_50(256'hFFFCAAC3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0000FFFFFFFFCFFF3FFFFFFFF),
    .INIT_51(256'hFFFFFF000003FFFFFFFCBA8FFFFFFFF00FFFFFFFFFFFFFFFFFFFFFC00003FFFF),
    .INIT_52(256'hAF0FFFFFFFFFC0002FFFFF000003FFFFFFF3FF8FFFFFFF0BF03FFFFFFFFFC000),
    .INIT_53(256'hFFF3FF8FFFFFF2FEBE4BFFFFFFFF28000BFFFC000000FFFFFFF3FFCFFFFFFCBF),
    .INIT_54(256'h00FFF8000000FFFFFFF2EA8FFFFFC2FEBEE3FFFFFFFCCCFC03FFFC000000FFFF),
    .INIT_55(256'h2D28FFFFFFFCB8C8007FF0000000FFFFFFFCAFE3FFFF2BFE2F23FFFFFFFC8CCC),
    .INIT_56(256'hFFFCBFACFFF2FEFDFFF8FFFFFFFC0070003FF0000003FFFFFFFCBFF3FFF83BFE),
    .INIT_57(256'h000000000003FFFFFFFCBFBF0F0EFEBFFFA8FFFFFFFC0000000300000003FFFF),
    .INIT_58(256'h00A3FFFFFFFFC00000000000C00FFFFFFFFF3EFFA0BEFFBC0021FFFFFFFF0000),
    .INIT_59(256'hFFFFC6FEFAFEBFCBC3CFFFFFFFFFD00000000003F03FFFFFFFFFCEFEFAFEFFAF),
    .INIT_5A(256'h0000000FFFFFFFFFFFFFF2FEFBFFBF14AE3FFFFFFFFFFC0000000013FFFFFFFF),
    .INIT_5B(256'hFFFFFFFFFFFFFFFF0000003FFFFFFFFFFFFFFCBEBAFFEAFF00FFFFFFFFFFFFF8),
    .INIT_5C(256'hFFFFFFF07EBC0FFFFFFFFFFFFFFFFFFFC00000FFFFFFFFFFFFFFFF0EBEFFC3FF),
    .INIT_5D(256'hFFFFFFFFFFFFFFFFFFFFFFFF0003FFFFFFFFFFFFFFFFFFFFFF002FFFFFFFFFFF),
    .INIT_5E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_5F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_60(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_61(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_62(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_63(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC03FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_64(256'h00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000FFFFFFFFFFFFFF),
    .INIT_65(256'hFFFFFFFFFFFF003C03FC0C000000F00C03FC03FFFFFFFFFFFFFFFFFFFFFFFFF0),
    .INIT_66(256'h000007C5543FFFFFFFFFF00FFFFC404C53F1010000000000000003F402FFFFFF),
    .INIT_67(256'h03C400000000000000000B85555FFFFFFFFFC402FFF0000003C0000000000000),
    .INIT_68(256'hFFFC00053FF0080002C430000FC0000000000F2D7D5FFFFFFFFF0000FFF00000),
    .INIT_69(256'h00003D8DCD53FFFFFFF10A8A8FF00000000430000FC0000000000DBDBD53FFFF),
    .INIT_6A(256'h000430000FC00003C0003DA5F953FFFFFFF008888FF00000000420000FC00000),
    .INIT_6B(256'hFFF006400FFFC03C0000303C0FC0300FC0C0FD555553FFFFFFF008884FFC0000),
    .INIT_6C(256'hFFFFFF140553FFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFC154553FFFF),
    .INIT_6D(256'hFFFFFFFFFFFFFFFFFFFFFFC40553FFFFFFFC00000FF001AFFFFFFFFFFFFFFFFF),
    .INIT_6E(256'hFFFF00000FF3FFFFFFFFFFFBFFFFFFF2FFFFFFC55553FFFFFFFC00000FD00002),
    .INIT_6F(256'hFFFFFFF15553FFFFFFFF00000FF3FFFFFFFFFFC0FFFFF0F0FFFFFFF15553FFFF),
    .INIT_70(256'hC3E08FC22C00D0D07FFFFFF1554FFFFFFFFFC0000FF3FFEBE7E1FFC03F5FE0D0),
    .INIT_71(256'hFFFFC0000FF2FFE283D00BC31C1070D03FFFFFF1554FFFFFFFFFC0000FF3FFEB),
    .INIT_72(256'h2F8FFFC5554F00FFFFFFC0000FF0FFE003C003E00C2430C12FCFFFF1554FFFFF),
    .INIT_73(256'h888B04F48B803C0B0F0FFFC5554C563FFFFFC0000FF8FFE3C2C603F40F1E3883),
    .INIT_74(256'hFFFF00000FFC64034CDF4CC18BD07C0F8F1FFFC55538553FFFFF40000FFCB0E3),
    .INIT_75(256'hC31FFFC55555553FFF1800003FFC3F4B1EFFFEC7C3FAFE1F831FFFC55501553F),
    .INIT_76(256'hFFFFFFFFFFFFFFFEE30FFFC5555555FFFC0000003FFFFFFFFFFFFFFFC3FFFFFF),
    .INIT_77(256'hFC0000003FFFFFFFFFFFFFFFFFFFFFFC0A0FFFC5555554FFFC0000003FFFFFFF),
    .INIT_78(256'hFFFFFFF155554FFFFC000000FFFFFFFFFFFFFFFFFFFFFFFE000FFFC1555550FF),
    .INIT_79(256'hFFFFBFFF83FFFF2FFFFFFFFC15553FFFFC000013FFFFFFFFFFFFFFFF8BFFFFFF),
    .INIT_7A(256'hFFC000FFFFFFFFFF02FC0FFF43FEBF1FFFFFFFFF0000FFFFFE00000FFFFFFFFF),
    .INIT_7B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF826FC07FF03FE3F0FFFFFFFFFFFFFFFFF),
    .INIT_7C(256'hF3FC128002FF008FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F3FC53FF03FF3F8F),
    .INIT_7D(256'hFFFFF00FFFFFFFE2E3FF00FF00FF190FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE2),
    .INIT_7E(256'hFFFFFFFF03FFFFFFFFFFCFF3FFFFFFE2E3FD00FF44FF2FCFFFFFFFFFFFFFFFFF),
    .INIT_7F(256'hF0E6F0FF8CFE3FCBFFFFFFF0003FFFFFFFFF2FF3FFFFFFF1E2E020FF8CFF2FCB),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(2),
    .READ_WIDTH_B(2),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(2),
    .WRITE_WIDTH_B(2)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra[13:0],1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:2],\douta[4] }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(ena),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized4
   (\douta[6] ,
    clka,
    \addra[13] ,
    ena,
    addra);
  output [3:0]\douta[6] ;
  input clka;
  input \addra[13] ;
  input ena;
  input [12:0]addra;

  wire [12:0]addra;
  wire \addra[13] ;
  wire clka;
  wire [3:0]\douta[6] ;
  wire ena;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:4]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'hFFFFFFFFFFFFF4C8804484FFFFFFFFFFFFFFFFF033777783FFFFFFFFFFFFFFD4),
    .INIT_01(256'hFFFFFFF82226384FFFFFFFFFFFFFFFA40FC8FFFFFF04FFFFA9FDFFF16FFF043F),
    .INIT_02(256'h4044FFFFFF94FFFFFFFFFFFFFF3FA1BFFFFFFFFFFFFF34444804484FFFFFFFFF),
    .INIT_03(256'hFFFFFFFFFFFF44444484444FFFFFFFFFFFFFFFF8236A28FFFFFFFFFFFFFFFF80),
    .INIT_04(256'hFFFFFF0F3773A4FFFFFFFFFFFFFF04A34448CFFFFFFBFFFFFFFFFFFFF0484884),
    .INIT_05(256'hAA7348FFFFFFFFFFFFFFFFFF7C04C0000EFFFFFFFFFFC44444844CC3FFFFFFFF),
    .INIT_06(256'h442FFFFFFFF4C88444844C08FFFFFFFFFFFFFF0B377734FFFFFFFFFFFFF86333),
    .INIT_07(256'hFFFFFF0B377F64FFFFFFFFFFFF4AF73AA33A982FFFFFFFFFFFFFFFFF4EE0C440),
    .INIT_08(256'hAB3AFACFFFFFFFFFFFFFFFFCF8B4FFB40487FFFFFFF844C848848488FFFFFFFF),
    .INIT_09(256'hC844FFFFFF68444808C044C8FFFFFFFFFFFFFF02726628FFFFFFFFFFF406373A),
    .INIT_0A(256'hFFFFFF70EE77360FFFFFFFFF462F77FA8A3F4A4FFFFFFFFFFFFFFFF4E8F4B8F4),
    .INIT_0B(256'h8E394A64FFFFFFFFFFFFFFF4EF20B8640C8C9FFFF348444488C4440CFFFFFFFF),
    .INIT_0C(256'h440C8FFFF308444088804C8FFFFFFFFFFFFFFFF86F37734BFFFFFF64076373BA),
    .INIT_0D(256'hFFFFFFF8677362B87FFFFF82F7323331BF333B64FFFFFFFFFFFFFFF844889B04),
    .INIT_0E(256'h37732A68FFFFFFFFFFFFFFF444CC444044484403CC44C0488448844FFFFFFFFF),
    .INIT_0F(256'h44004808044408444444400FFFFFFFFFFFFFFFF0E73B2737C47F48B67736277B),
    .INIT_10(256'hFFFFFFFF8332B773664C2736373F633888888641FFFFFFFFFFFFFFFF8CC4C844),
    .INIT_11(256'hC0442A4FFFFFFFFFFFFFFFFF380C00844C844C8488444044344848FFFFFFFFFF),
    .INIT_12(256'h4844480448044043FF8C0FFFFFFFFFFFFFFFFFFFFCF2F336F726777237336637),
    .INIT_13(256'hFFFFFFFFF49273723766777A6337B4E7348774FFFFFFFFFFFFFFFFFFF1404444),
    .INIT_14(256'hE2324BFFFFFFFFFFFFFFFFFFFFFC48040044C8444C844DCFFFFFFFFFFFFFFFFF),
    .INIT_15(256'h40404040408408FFFFFFFFFFFFFFFFFFFFFFFFFFFFCE3332336337732F3781D8),
    .INIT_16(256'hFFFFFFFFFFF8A77223E6337772AAFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFF64),
    .INIT_17(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8084044448848FFFFFFFFFFFFFFFFFFF),
    .INIT_18(256'hF08804440440FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF487223327773340FFFFF),
    .INIT_19(256'hFFFFFFFFFFFFFF44937A6B3848FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_1A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF300404EFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_1B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4000000BFFFFFFFF),
    .INIT_1C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_1D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_1E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_1F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_20(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_21(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_22(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_23(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_24(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_25(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_26(256'h840FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_27(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8),
    .INIT_28(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF400C00FFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_29(256'hC000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_2A(256'h888FFFF8840FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4C),
    .INIT_2B(256'hFFFFFFFFFFFFFFFFFFFFFFFF08884FB4880FFFF888FC888888888888FF0488F8),
    .INIT_2C(256'h5D0FFF4DC089CC0CC0CC4CCC88080048CC8440800C0FFF18888EFFFFFFFFFFFF),
    .INIT_2D(256'hCC88008CC4DFF855555C8FFFFFFFFFFFFFFFFFFFFB0000FFFFFFFFF850CC98F0),
    .INIT_2E(256'hFFFFFFFFB494444EFFFFFF04CCCCC08CC00FF00CCCCCCCCCC0CCCCCC80CCCC48),
    .INIT_2F(256'hCC0FF01C08CCC88CC48480C08CC888C88C00C04004EFA495555551FFFFFFFFFF),
    .INIT_30(256'h8C00C84CC4F34AB997B5597FFFFFFFFFFFFFFFFF40000008FFFFFF48C884CC8C),
    .INIT_31(256'hFFFFFFF800C080518FFFFF8488A8CC8CC006F0DC438CC48CC0FF70C08C4880C8),
    .INIT_32(256'hC8C08018038CC88CC4FFB0C08CC8800880CC048C04FD67B1E7B1554FFFFFFFFF),
    .INIT_33(256'h8CC88CCC8FFD2831F031550FFFFFFFFFFFFFFF4D00AA60A6A8FFFF8C4088CC80),
    .INIT_34(256'hFFFFFF440060A020A8FFFF48CCCCCC8CC4CCC4DC0ACC088CC4FFB0C040044CC4),
    .INIT_35(256'h44CCC8DC078C088CC4FFF0CC484C048FF8C084404FFD26D5F7A15503FFFFFFFF),
    .INIT_36(256'hF8883488FFFD55555555550FFFFFFFFFFFFFFF4000A0A0A058FFFFF408CC884C),
    .INIT_37(256'hFFFFFF40009ED000C8FFFFFF344843F8480840884F488FF848FFF8880348883F),
    .INIT_38(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0CD5554D5550FFFFFFFFF),
    .INIT_39(256'hFFFFFFFFFFFF45980855550FFFFFFFFFFFFFFF880000000004FFFFFFFFFFFFFF),
    .INIT_3A(256'hFFFFFFF40408CC0804FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_3B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF30504495510BFFFFFFFF),
    .INIT_3C(256'hFFFFFFFFFFFFF059595591CBFFFFFFFFFFFFFFF44000844008FFFFFFFFFFFFFF),
    .INIT_3D(256'hFFFFFFFF8000000004FFFFFFFFFFFFFFFFFFFFFFFFFFF3A3FFFFFFFFFFBBFFCE),
    .INIT_3E(256'hFFFFFFBFFFFFF844FFFFFFFFFF88F344FFFFFFFFFFFFFF4555D5518FFFFFFFFF),
    .INIT_3F(256'hBFFFFFFFFFFFFF811155154FFFFFFFFFFFFFFFFF8088000808FFFFFFFFFFFFFF),
    .INIT_40(256'hFFFFFFFF7C000000C4FFFFFFFFFFFA6FF2DFFE41FFFFF4444FFF157FF244FD44),
    .INIT_41(256'hF44FF244A4FFF44A4AF44444FD44F9441FFFFFFFFFFFFF095555D07FFFFFFFFF),
    .INIT_42(256'hCFFFFFFFFFFFF7059D55D0BFFFFFFFFFFFFFFFFFF800000004FFFFFFFFFFFA2F),
    .INIT_43(256'hFFFFFFFFFC00000004FFFFFFFFFFFA4A6443F94404EFF04F49F44D445F44F944),
    .INIT_44(256'h4443F408444FF64444FC4E9C4F44F8414EFFFFFFFFFFF305515154FFFFFFFFFF),
    .INIT_45(256'h42FFFFFFFFFFF4955555DCF78CC0FFFFFFFFFFFFFC00000008FFFFFFFFFFFA48),
    .INIT_46(256'hFFFFFFFFFC04C00088FFFFFFFFFFFA4F344AF452444BFF5444FB49F64FE42447),
    .INIT_47(256'h2424E42F4454FFD4E4AFA4044FF4446F44FFFFFFFFFFF85555555CF495120FFF),
    .INIT_48(256'h247FFFFFFFFFFC5555554FA0D5554FFFFFFFFFFF5C00C00004FFFFFFF344FA4F),
    .INIT_49(256'hFFFFFFFF8000000044FFFFFFFA18448FD8F8F1BF5474744D242FF9449FF4447F),
    .INIT_4A(256'hCDF2FFFFFFFA38DFB48FFF6AFFF649FFE44FFFFFFFFFF8955D59C08555558FFF),
    .INIT_4B(256'hF44FFFFFFFFFFC5555D115D155158FFFFFFF05E8880000008FFFFFFFFFFF90AF),
    .INIT_4C(256'hFFFC00C0C0C000008FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF04FFFFFFFFFFFFF),
    .INIT_4D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA8FFFFFFFFFF05555555559555DFFFF),
    .INIT_4E(256'hFFFFFFFFFFFFF495555515515554FFFFFFF80C40000C0008CFFFFFFFFFFFFFFF),
    .INIT_4F(256'hFFF8048000400CC48FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_50(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF005555591551540FFFF),
    .INIT_51(256'hFFFFFFFFFFFFFF8955555155503FFFFFFFF80C40000000C8FFFFFFFF0DAAD0FF),
    .INIT_52(256'hFFF440000000418FFFFFFFFF8888DEFFFFFFFFFFFFFFFFFF64AFFFFFFFFFFFFF),
    .INIT_53(256'hF77FFFF72FFFFFFF644FFFFFFFFF4EFFFFFFFFFFFFFFFFF8055511D5CBFFFFFF),
    .INIT_54(256'hFFFFFFFFFFFFFFFF008CCC443FFFFFFFFFF28440000088FFFFFFFFFF80FFFFFF),
    .INIT_55(256'hFFFF388CC884FFFFFFFFFFFF80FFFFFB4446FFF440FFFFFF944FFFFE6FFF49FF),
    .INIT_56(256'h8A92FFF4041FFFFF444FFFFE0FFFC4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_57(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFA4),
    .INIT_58(256'hFFFFFFFFFFFFFFFFFFFFFFFF80FFFF84FF83FFF4994BFFFF444FFFF74FFF64FF),
    .INIT_59(256'hFF43FFFC494AA444444EFFF74448E47FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_5A(256'h3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFF85FFFE4E),
    .INIT_5B(256'hFFFFFFFFFF888CFFFFFFFFFFFFFFFA42FE43FFFF4444FFFF4448FFF74D29843F),
    .INIT_5C(256'hFE43FFFD4444FFFF94D4FFFB46FF343F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_5D(256'h8FFFFFFFFFFFFFFF004FFFFFFFFFFFFFFFFFFFFF30377F8FFFFFFFFFFFFFFA4E),
    .INIT_5E(256'hFFFFFFFF8A733703FFFFFFFFFFFFFF49F24EF6444E44FFFFA4F4FFFF46FFB46E),
    .INIT_5F(256'hFF40F256FF44FFFF64F4FFFE4BFFF42E8FFFFFFFFFFFFF4440484FFFFFFFFFFF),
    .INIT_60(256'h8FFFFFFFFFFFF4C8804484FFFFFFFFFFFFFFFFF033777783FFFFFFFFFFFFFFD4),
    .INIT_61(256'hFFFFFFF82226384FFFFFFFFFFFFFFFA40FC8FFFFFF04FFFFA9FDFFF16FFF043E),
    .INIT_62(256'h4044FFFFFF94FFFFFFFFFFFFFF3AE1BE8FFFFFFFFFFF34444804484FFFFFFFFF),
    .INIT_63(256'h84FFFFFFFFFF44444484444FFFFFFFFFFFFFFFF8236A28FFFFFFFFFFFFFFFF80),
    .INIT_64(256'hFFFFFF0F3773A4FFFFFFFFFFFFFF04A34448CFFFFFFBFFFFFFFFFFFFF0C88888),
    .INIT_65(256'hAA7348FFFFFFFFFFFFFFFFFF7C8CC8888CFFFFFFFFFFC44444844CC3FFFFFFFF),
    .INIT_66(256'h882FFFFFFFF4C88444844C08FFFFFFFFFFFFFF0B377734FFFFFFFFFFFFF86333),
    .INIT_67(256'hFFFFFF0B377F64FFFFFFFFFFFF4AF73AA33A982FFFFFFFFFFFFFFFFF4EE0C44C),
    .INIT_68(256'hAB3AFACFFFFFFFFFFFFFFFFCF8B4FFB40487FFFFFFF844C848848488FFFFFFFF),
    .INIT_69(256'hC844FFFFFF68444808C044C8FFFFFFFFFFFFFF02726628FFFFFFFFFFF406373A),
    .INIT_6A(256'hFFFFFF70EE77360FFFFFFFFF462F77FA8A3F4A4FFFFFFFFFFFFFFFF4E8F4B8F4),
    .INIT_6B(256'h8E394A64FFFFFFFFFFFFFFF4EF20B8640C8C9FFFF348444488C4440CFFFFFFFF),
    .INIT_6C(256'h440C8FFFF308444088804C8FFFFFFFFFFFFFFFF86F37734BFFFFFF64076373BA),
    .INIT_6D(256'hFFFFFFF8677362B87FFFFF82F7323331BF333B64FFFFFFFFFFFFFFF844889B04),
    .INIT_6E(256'h37732A68FFFFFFFFFFFFFFF444CC444044484403CC44C0488448844FFFFFFFFF),
    .INIT_6F(256'h44004808044408444444400FFFFFFFFFFFFFFFF0E73B2737C47F48B67736277B),
    .INIT_70(256'hFFFFFFFF8332B773664C2736373F633888888641FFFFFFFFFFFFFFFF8CC4C844),
    .INIT_71(256'hC0442A4FFFFFFFFFFFFFFFFF380C00844C844C8488444044344848FFFFFFFFFF),
    .INIT_72(256'h4844480448044043FF8C0FFFFFFFFFFFFFFFFFFFFCF2F336F726777237336637),
    .INIT_73(256'hFFFFFFFFF49273723766777A6337B4E7348774FFFFFFFFFFFFFFFFFFF1404444),
    .INIT_74(256'hE2324BFFFFFFFFFFFFFFFFFFFFFC48040044C8444C844DCFFFFFFFFFFFFFFFFF),
    .INIT_75(256'h40404040408408FFFFFFFFFFFFFFFFFFFFFFFFFFFFCE3332336337732F3781D8),
    .INIT_76(256'hFFFFFFFFFFF8A77223E6337772AAFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFF64),
    .INIT_77(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8084044448848FFFFFFFFFFFFFFFFFFF),
    .INIT_78(256'hF08804440440FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF487223327773340FFFFF),
    .INIT_79(256'hFFFFFFFFFFFFFF44937A6B3848FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_7A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF300404EFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_7B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4000000BFFFFFFFF),
    .INIT_7C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_7D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_7E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_7F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(4),
    .READ_WIDTH_B(4),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(4),
    .WRITE_WIDTH_B(4)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:4],\douta[6] }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\addra[13] ),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(ena),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized5
   (\douta[6] ,
    clka,
    ena_0,
    ena,
    addra);
  output [1:0]\douta[6] ;
  input clka;
  input ena_0;
  input ena;
  input [13:0]addra;

  wire [13:0]addra;
  wire clka;
  wire [1:0]\douta[6] ;
  wire ena;
  wire ena_0;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:2]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_01(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_02(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_03(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE93FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_04(256'hC0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF430FFFFFFFFFFFFFF),
    .INIT_05(256'hFFFFFFFFFFFF2A79A3FEAFAAAAAAF1AEABFE93FFFFFFFFFFFFFFFFFFFFFFFFF7),
    .INIT_06(256'hFA0BDFE557BFFFFFFFFFE00FFFFE4FAC73F7CAF3CF7FA206F94833F2ABFFFFFF),
    .INIT_07(256'hF3C32FEBD98CBEAEB0C41F99554FFFFFFFFF9957FFF1FFCBC3C3FFFFCFFF8FF6),
    .INIT_08(256'hFFFE0C84BFF9AAFBC1CF4BDBCF4CB68EB0E7DC6A9967FFFFFFFF4002FFF6E9FB),
    .INIT_09(256'hBEBFBF20C053FFFFFFF70A49AFFB4AF8EC820BEBDF8CBE828F1B1F58D857FFFF),
    .INIT_0A(256'h5FEF1B2BDFCF671BEC947F1DD850FFFFFFF50480AFF6FFFBDFDF2F2BDF8C417D),
    .INIT_0B(256'hFFF40BC0EFFF164E624A76BE6FEA06A3EA1AFF555553FFFFFFF408886FFD2FA7),
    .INIT_0C(256'hFFFFFF5A2553FFFFFFFA00001FFFFFFFFFFFFFFFFFFFFFFFFFFFFCF55D53FFFF),
    .INIT_0D(256'hFFFFFFFFFFFFFFFFFFFFFF045942FFFFFFFD12F21FFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0E(256'hFFFF80001FFFFFFFFFFFFFFFFFFFAFFFFFFFFFC6658EFFFFFFFD40942FFFFFFF),
    .INIT_0F(256'hFFFFFFF80517FFFFFFFF8A022FFFFFFFFFFFFCFFA3E25BFFFFFFFFF55D4BFFFF),
    .INIT_10(256'hF05A155555555532FFFFFFF255C7FFFFFFFF7000DFFFFFFFFFFFED7F565555FF),
    .INIT_11(256'hFFFFF0001FFFC5575555555555555575FFFFFFD1B5CBFFFFFFFFE0001FFFFF03),
    .INIT_12(256'h4FFFFFD955FDBCFFFFFFF0002FFD55555554557D55555555FFFFFFC1445FFFFF),
    .INIT_13(256'hF155D15A555754955BFFFFE5557D903FFFFFF1C0AFFF55555555755455555555),
    .INIT_14(256'hFFFF80005FFC555775555D515CED555557FFFFF55578D57FFFFF70C01FFD5553),
    .INIT_15(256'h54FFFFF55C1C51BFFF1EA000BFFE55556555555915D5D5D557FFFFE976C955BF),
    .INIT_16(256'h5555555555555D5555FFFFC5555657FFFF0CCC00BFFC55555555555155555555),
    .INIT_17(256'hFE18043DBFFF95555555555D5555565555BFFFD9551455FFFE340302FFFE5555),
    .INIT_18(256'h554FFFFA554543FFFE34000EFFFF15555556554595D55DD555FFFFC1558514FF),
    .INIT_19(256'h55555555555555355553FFFE150DEFFFFD40004BFFFFD555D55D555555055655),
    .INIT_1A(256'hFF2BE9FFFFFFC55555555555555555555553FFFF0BF53FFFFC9400AFFFFFC555),
    .INIT_1B(256'h5553FFFFFFFFFFFFFFFFFFFFFFFFF55555555555555555555557FFFFFFFFFFFF),
    .INIT_1C(256'h5557E9555555557556AFFFFFFFFFFFFFFFFFFFFFFFFFF5455554955555555575),
    .INIT_1D(256'hFFFFFABFFFFFFFFC5555FF5555D7954F57FFFFFFFFFFFFFFFFFFFFBFFFFFFE31),
    .INIT_1E(256'hFFFFFFFF07FFFFFFFFFF017BFFFFFFFF9597FFC55FFFC55FDFFFFFFFFFFFFFFF),
    .INIT_1F(256'hFFFFFFFFFFFFFFFFFFFFFFF5467FFFFFFFFFA410FFFFFFFFD8FFFFF87FFFF17F),
    .INIT_20(256'hFFFE0127FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDE859FFFFFFFFC0558FFFFFFFF),
    .INIT_21(256'hFFFFFF555957FFFFFFFE062FFFFFFFFA9FFFFFFFFFFFF3FFFFFFFF156167FFFF),
    .INIT_22(256'hA46FFFFFFFFF71C03FFFFFD5597CFFFFFFF3149FFFFFFF180EFFFFFFFFFFC669),
    .INIT_23(256'hFFF2175FFFFFF6D282A3FFFFFFFF7CD453FFFDE95972FFFFFFF2151FFFFFFE40),
    .INIT_24(256'hE5FFF6562C5EFFFFFFF0452FFFFFD112A2EFFFFFFFFFE9F919FFFE5E699AFFFF),
    .INIT_25(256'hB265FFFFFFFDF0A53BBFC655AD53FFFFFFF4F513FFFF535EA367FFFFFFFDEDAD),
    .INIT_26(256'hFFFE544A7FF8D000B025FFFFFFFE5AA153BFC254A87BFFFFFFFE7146FFF5144A),
    .INIT_27(256'h506215255543FFFFFFFCD211D76951161426FFFFFFFD5F545650F5C69697FFFF),
    .INIT_28(256'hC527FFFFFFFF23097979A545166FFFFFFFFF809457111342AA94FFFFFFFFBDE5),
    .INIT_29(256'hFFFFD8441556419D195FFFFFFFFFC45565616144FB3FFFFFFFFFFCC1D1541051),
    .INIT_2A(256'h4444492FFFFFFFFFFFFFFF000414318EC06FFFFFFFFFFF6105E5797FFFFFFFFF),
    .INIT_2B(256'hFFFFFFFFFFFFFFFF891569BFFFFFFFFFFFFFFE940D054AFF00FFFFFFFFFFFFF5),
    .INIT_2C(256'hFFFFFFF586626FFFFFFFFFFFFFFFFFFFCA1514FFFFFFFFFFFFFFFF64005413FF),
    .INIT_2D(256'hFFFFFFFFFFFFFFFFFFFFFFFF4002FFFFFFFFFFFFFFFFFFFFFC047FFFFFFFFFFF),
    .INIT_2E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_2F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_30(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_31(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_32(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_33(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE93FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_34(256'hC0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF430FFFFFFFFFFFFFF),
    .INIT_35(256'hFFFFFFFFFFFF2A79A3FEAFAAAAAAF1AEABFE93FFFFFFFFFFFFFFFFFFFFFFFFF7),
    .INIT_36(256'hFA0BDFE557BFFFFFFFFFE00FFFFE4FAC73F7CAF3CF7FA206F94833F2ABFFFFFF),
    .INIT_37(256'hF3C32FEBD98CBEAEB0C41F99554FFFFFFFFF9957FFF1FFCBC3C3FFFFCFFF8FF6),
    .INIT_38(256'hFFFE0C84BFF9AAFBC1CF4BDBCF4CB68EB0E7DC6A9967FFFFFFFF4002FFF6E9FB),
    .INIT_39(256'hBEBFBF20C053FFFFFFF70A49AFFB4AF8EC820BEBDF8CBE828F1B1F58D857FFFF),
    .INIT_3A(256'h5FEF1B2BDFCF671BEC947F1DD850FFFFFFF50480AFF6FFFBDFDF2F2BDF8C417D),
    .INIT_3B(256'hFFF40BC0EFFF164E624A76BE6FEA06A3EA1AFF555553FFFFFFF408886FFD2FA7),
    .INIT_3C(256'hFFF37F5A2553FFFFFFFA00001FFFFFFFFFFFFFFFFFFFFFFFFFFFFCF55D53FFFF),
    .INIT_3D(256'hFFFFFFFFFFFFFFFFFFEAAF045942FFFFFFFD12F21FFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_3E(256'hFFFF80001FFFFFFFFFFEEBEBFABFFFFFCAA9AFC6658EFFFFFFFD40942FFFFFFF),
    .INIT_3F(256'hFFFFAFF80517FFFFFFFF8A022FFFFEFFFFFD5AD7757FFFD7FFFFAFF55D4BFFFF),
    .INIT_40(256'hFD55555555555555FFFFAFF255C7FFFFFFFF7000DFFFF94FFCC555555553D556),
    .INIT_41(256'hFFFFF0001FFFF55C85745555555555553FFFAFD1B5CBFFFFFFFFE0001FFFE95F),
    .INIT_42(256'h6FFFAFD955FDBCFFFFFFF0002FFF555555991555555555557FFFAFC1445FFFFF),
    .INIT_43(256'h557455559195955D5BFFAFE5557D903FFFFFF1C0AFFE55005576555515595545),
    .INIT_44(256'hFFFF80005FFF5451C55E65555555955555FF2FF55578D57FFFFF70C01FFF5565),
    .INIT_45(256'h554FFFF55C1C51BFFF1EA000BFFF555F556555575515557455FFFFE976C955BF),
    .INIT_46(256'h55445555A515565D5557FFC5555657FFFF0CCC00BFFF555F5555555565155524),
    .INIT_47(256'hFE18043DBFEFD554555D5555151559955557FFD9551455FFFE340302FFFF955B),
    .INIT_48(256'h5555FFFA554543FFFE34000EFFF3F55555955555551546555555FFC1558514FF),
    .INIT_49(256'h5155555555C559555555FFFE150DEFFFFD40004BFFEFFD555755F55D15954644),
    .INIT_4A(256'hFF2BE9FFFFAFFF1555555555555556555556FFFF0BF53FFFFC9400AFFF2FFC55),
    .INIT_4B(256'h575FFFFFFFFFFFFFFFFFFFFFFFEFFFD55555555555555555555BFFFFFFFFFFFF),
    .INIT_4C(256'h55555555555496E756FFFFFFFFFFFFFFFFFFFFFFFFEFFFD55555555555555695),
    .INIT_4D(256'hFFFFFABFFFA3FF7D555A3E4BA55FFBFF157FFFFFFFFFFFFFFFFFFFBFFFEFFFF9),
    .INIT_4E(256'hF0FFFFFF07FFFFFFFFFF017BFFEAAAA495FFFFFFFD5FFFFFF5FFFFFFFFFFFFFF),
    .INIT_4F(256'hFFFFFFFFFFFFFFFFFFFFFFF5467FFFFFFFFFA410FFEFFC97FFFFFFFFFFFFFFFF),
    .INIT_50(256'hFFFE0127FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDE859FFFFFFFFC0558FFFFFFFF),
    .INIT_51(256'hFFFFFF555957FFFFFFFE062FFFFFFFFA9FFFFFFFFFFFF3FFFFFFFF156167FFFF),
    .INIT_52(256'hA46FFFFFFFFF71C03FFFFFD5597CFFFFFFF3149FFFFFFF180EFFFFFFFFFFC669),
    .INIT_53(256'hFFF2175FFFFFF6D282A3FFFFFFFF7CD453FFFDE95972FFFFFFF2151FFFFFFE40),
    .INIT_54(256'hE5FFF6562C5EFFFFFFF0452FFFFFD112A2EFFFFFFFFFE9F919FFFE5E699AFFFF),
    .INIT_55(256'hB265FFFFFFFDF0A53BBFC655AD53FFFFFFF4F513FFFF535EA367FFFFFFFDEDAD),
    .INIT_56(256'hFFFE544A7FF8D000B025FFFFFFFE5AA153BFC254A87BFFFFFFFE7146FFF5144A),
    .INIT_57(256'h506215255543FFFFFFFCD211D76951161426FFFFFFFD5F545650F5C69697FFFF),
    .INIT_58(256'hC527FFFFFFFF23097979A545166FFFFFFFFF809457111342AA94FFFFFFFFBDE5),
    .INIT_59(256'hFFFFD8441556419D195FFFFFFFFFC45565616144FB3FFFFFFFFFFCC1D1541051),
    .INIT_5A(256'h4444492FFFFFFFFFFFFFFF000414318EC06FFFFFFFFFFF6105E5797FFFFFFFFF),
    .INIT_5B(256'hFFFFFFFFFFFFFFFF891569BFFFFFFFFFFFFFFE940D054AFF00FFFFFFFFFFFFF5),
    .INIT_5C(256'hFFFFFFF586626FFFFFFFFFFFFFFFFFFFCA1514FFFFFFFFFFFFFFFF64005413FF),
    .INIT_5D(256'hFFFFFFFFFFFFFFFFFFFFFFFF4002FFFFFFFFFFFFFFFFFFFFFC047FFFFFFFFFFF),
    .INIT_5E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_5F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_60(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_61(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_62(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_63(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE93FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_64(256'hC0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF430FFFFFFFFFFFFFF),
    .INIT_65(256'hFFFFFFFFFFFF2A79A3FEAFAAAAAAF1AEABFE93FFFFFFFFFFFFFFFFFFFFFFFFF7),
    .INIT_66(256'hFA0BDFE557BFFFFFFFFFE00FFFFE4FAC73F7CAF3CF7FA206F94833F2ABFFFFFF),
    .INIT_67(256'hF3C32FEBD98CBEAEB0C41F99554FFFFFFFFF9957FFF1FFCBC3C3FFFFCFFF8FF6),
    .INIT_68(256'hFFFE0C84BFF9AAFBC1CF4BDBCF4CB68EB0E7DC6A9967FFFFFFFF4002FFF6E9FB),
    .INIT_69(256'hBEBFBF20C053FFFFFFF70A49AFFB4AF8EC820BEBDF8CBE828F1B1F58D857FFFF),
    .INIT_6A(256'h5FEF1B2BDFCF671BEC947F1DD850FFFFFFF50480AFF6FFFBDFDF2F2BDF8C417D),
    .INIT_6B(256'hFFF40BC0EFFF164E624A76BE6FEA06A3EA1AFF555553FFFFFFF408886FFD2FA7),
    .INIT_6C(256'hFFFFFF5A2553FFFFFFFA00001FFFFFFFFFFFFFFFFFFFFFFFFFFFFCF55D53FFFF),
    .INIT_6D(256'hFFFFFFFFFFFFFFFFFFFFFF045942FFFFFFFD12F21FDAA9F3FFFFFFFFFFFFFFFF),
    .INIT_6E(256'hFFFF80001FFBFFFFFFFFFFC8FFFFFAFFFFFFFFC6658EFFFFFFFD40942FEAAAAA),
    .INIT_6F(256'hBFFFFFF80517FFFFFFFF8A022FFBFFFFFFFBFFE5FFFFFAC5FFFFFFF55D4BFFFF),
    .INIT_70(256'hD7C59FD66D55F5E53FFFFFF255C7FFFFFFFF7000DFFBFFE7CFF4FFD57F17C5F5),
    .INIT_71(256'hFFFFF0001FF9FFE654E51FC76D7575E5FFFFFFD1B5CBFFFFFFFFE0001FFBFFE3),
    .INIT_72(256'h4FEFFFD955FDBCFFFFFFF0002FF1FFE654D257D55F7B75E47FCFFFC1445FFFFF),
    .INIT_73(256'h11D355FDDB917D575FBFFFE5557D903FFFFFF1C0AFFEFFE716D456F55E6D7D15),
    .INIT_74(256'hFFFF80005FFE225BEECB555713E5BD57178FFFF55578D57FFFFF70C01FFEC5E7),
    .INIT_75(256'hD79FFFF55C1C51BFFF1EA000BFFDBF8BFCFFFE2F9BF6FD6FD79FFFE976C955BF),
    .INIT_76(256'hFFFFFFFFFFFFFFFCEB8FFFC5555657FFFF0CCC00BFFFFFFFFFFFFFFFC7FFFFFF),
    .INIT_77(256'hFE18043DBFFFFFFFFFFFFFFFFFFFFFFE80AFFFD9551455FFFE340302FFFFFFFF),
    .INIT_78(256'hFFFFFFFA554543FFFE34000EFFFFFFFFFFFFFFFFFFFFFFFEAA9FFFC1558514FF),
    .INIT_79(256'hD7FD3FFF57FFFF7FFFFFFFFE150DEFFFFD40004BFFFFFFFFFFFFFFFF5BFFFFFF),
    .INIT_7A(256'hFF2BE9FFFFFFFFFE55FD4FFF97FF7F6FFFFFFFFF0BF53FFFFC9400AFFFFFFFFF),
    .INIT_7B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9A8FD13FF57FF3FDFFFFFFFFFFFFFFFFF),
    .INIT_7C(256'hF4FF669557FD56D7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F8FDA6FF57FD7F5F),
    .INIT_7D(256'hFFFFFABFFFFFFFE4F4FF55FF56FD7293FFFFFFFFFFFFFFFFFFFFFFBFFFFFFFF7),
    .INIT_7E(256'hFFFFFFFF07FFFFFFFFFF017BFFFFFFE7F4FF55FF9DFE5F13FFFFFFFFFFFFFFFF),
    .INIT_7F(256'hF4C5F5FF5DFF6FD3FFFFFFF5467FFFFFFFFFA410FFFFFFF6C7D575FF9DFF5F97),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(2),
    .READ_WIDTH_B(2),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(2),
    .WRITE_WIDTH_B(2)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:2],\douta[6] }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_0),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(ena),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized6
   (p_23_out,
    clka,
    ena_array,
    ena,
    addra);
  output [8:0]p_23_out;
  input clka;
  input [0:0]ena_array;
  input ena;
  input [11:0]addra;

  wire [11:0]addra;
  wire clka;
  wire ena;
  wire [0:0]ena_array;
  wire [8:0]p_23_out;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h020000000003F800003C0000000000000003E00000000088C110000000000000),
    .INITP_04(256'h000BBC0001FF800002000000000FFC0000EF0000020000000007FC00007E0000),
    .INITP_05(256'h01FF800000000000000FFC0001EE800002000000000FFC0001EE800002000000),
    .INITP_06(256'h0000000000023C0000E68000000000000007BC0001FF8000000000000007BC00),
    .INITP_07(256'h0001FC00007F800000186AE00001FC00007F8000000000000003FC0000FD8000),
    .INITP_08(256'h003F807EFFFFFFFB0001F800003F80043EFFFFF30001F800003F80000C3DFFF0),
    .INITP_09(256'hFDB8C1F3C003F8F0003F81FFFC39FFE78003F800003F80FFFFFFFFFF8001F800),
    .INITP_0A(256'hF003FFF000FF01FF3C00FB73E003F1F0007F81FD5D3AFA7BE003F0F0003F81FF),
    .INITP_0B(256'h0FFE00FF7E9B7BCFF803FFE00FFF00FF7E1B7BE7F003FFF007FF01FF7E1A7BF3),
    .INITP_0C(256'hFFFFFFFFFC007F000FFC007FFFFFFFE1F801FF800FFE00FF7CFF7BEDF801FFC0),
    .INITP_0D(256'hFE0000000000003FFFFFFFFFFE0000000000003FFFFFFFFFFE00000007F0007F),
    .INITP_0E(256'h00000001FF1FFE78E00000000000001BFF7FFFF9FC0000000000003FFEFFFFFB),
    .INITP_0F(256'h0000000000000000007C00000001801800000000003C00007E03C03C40000000),
    .INIT_00(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_01(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_02(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_03(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_04(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_05(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_06(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_07(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_08(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_09(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_0A(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_0B(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_0C(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_0D(256'h2121003838383838383838383838383838383838383838383838383838383838),
    .INIT_0E(256'h3838383838383838383838383838383838383838383838383838383838383821),
    .INIT_0F(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_10(256'hECDBDC0038383838383838383838383838383838383838383838383838383838),
    .INIT_11(256'h3838383838383838383838383838383838383838383838383838383838382132),
    .INIT_12(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_13(256'hEBDCDC0038383838383838383838383838383838383838383838383838383838),
    .INIT_14(256'h38383838383838383838383838383838383838383838383838383838383821DB),
    .INIT_15(256'h2121103838383821212100383838383838383838383838383838383838383838),
    .INIT_16(256'h2121003838383821212128212121212121212121212121213838212121213821),
    .INIT_17(256'h3838383838383838383838383838383838383838383838380021212121283821),
    .INIT_18(256'hEBEB212143332121ECEA00383838232121212155383838383838383838383838),
    .INIT_19(256'h4D2C00383838213CDBEC211CEBEBECEBEB32EBEBECDBEBEB212100DBEC002121),
    .INIT_1A(256'h3838383838383838383800000000383838383838383838211CECEBEB0C213864),
    .INIT_1B(256'hDAEB2121ECEC21EBEB213338382126D7D7D7D761213838383838383838383838),
    .INIT_1C(256'hEBDC0038380011EBEBDBEBEBDBDBEBEBEB32EBDBDBEBEBEB21ECEBEBEBEBCA21),
    .INIT_1D(256'h3838383838383838282198D8D8D811263838383838381221EBEBEBEBEBEC2153),
    .INIT_1E(256'h43EBEC00EBEC21ECEC21163857C3D7D7D7D7D7D7773438383838383838383838),
    .INIT_1F(256'hEBDB003838002DEB212186EBEB2121DBEB3221212100EBEC21EBEB2121CAEB21),
    .INIT_20(256'h383838383838383811D8D8D8D8D8D83138383838383821DBDB212121EBEB2153),
    .INIT_21(256'h21DBDC00EBDB43EBEB12383963EEFFD7C7FFEED7D75629383838383838383838),
    .INIT_22(256'hEBDC005838001CEB212810DBEB2121DBDB3238384900DBEC21EBDB2121ECEB21),
    .INIT_23(256'h3838383838383821C8D8B732B8D8B95A21383838383821DBCA212721DBEB2153),
    .INIT_24(256'h21ECDBEBECBADBEB22123822DEFFDED7EEFFFFD7D7D721383838383838383838),
    .INIT_25(256'hEBDB210021001DDB332810EBEB2121EBDB3238384800EBEC21EBDB2121ECEC21),
    .INIT_26(256'h38383838383821A8D8D8DEEEDED8EEDECD213838383821CABAB92121EBDB2154),
    .INIT_27(256'h21EBEBDB21EBEBDB21383822DE218CD7EE00EFE7D7D711383838383838383838),
    .INIT_28(256'hDBDB31EBDB212CDB542710EBEC2121EBEB3238384800DBEC21BAECECECEBDB21),
    .INIT_29(256'h38383838383821D8D8D8DE00EED8CE00EE21383838382121DBEBEBEBDBDB2153),
    .INIT_2A(256'h3821DBCB2111DBDB21383822EEBD39D7EEFFEED7D7E700393838383838383838),
    .INIT_2B(256'hDBCB31EBEB211CEB333800DBEC2121EBDB3238384800EBEB2121ECEBECEC2138),
    .INIT_2C(256'h38383838383821D8D8D8DE00DED88B00392138383838382100DBEBEBDB212143),
    .INIT_2D(256'h382121213921212138383822D7E7D7D7D7D7D7D7D7D700383838383838383838),
    .INIT_2E(256'h2121002121002121213821212138282121213838382121210039212121213938),
    .INIT_2F(256'h38383838383821D8D8D877DBA7D8D8B8D7213838383838384921212121393821),
    .INIT_30(256'h38383838383838383838380010D6D7D7D721B7D7D7B400383838383838383838),
    .INIT_31(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_32(256'h38383838383811E8D8D8D8D8D8D8D8D8D8213838383838383838383838383838),
    .INIT_33(256'h38383838383838383838383821D70693D3B1D7D7D6B400383838383838383838),
    .INIT_34(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_35(256'h3838383838383821D8D8D821A3C7D821D8213838383838383838383838383838),
    .INIT_36(256'h3838383838383838383838384911D7111121D6B4B4C500383838383838383838),
    .INIT_37(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_38(256'h3838383838383821A6D8D8D882D331D8D8213838383838383838383838383838),
    .INIT_39(256'h383838383838383838383838380036E7E7B4B4B4D6D772383838383838383838),
    .INIT_3A(256'h383838383838383838383838383838383838383838383838F6F6383838383838),
    .INIT_3B(256'h383838383838383821D8D8D8D8D8D8D8D8213838383838383838383838383838),
    .INIT_3C(256'h383838383838383838383838383821B4B4B4D6D7D7D721383838383838383838),
    .INIT_3D(256'h38383838383838383838382635383838F694163835972697F3F3A43838383838),
    .INIT_3E(256'h383838383838383811B5B5D7D8D8D8D7B5213838383838383838383838383838),
    .INIT_3F(256'h383838383838383838383838383821D7D7D7D7D7D7B421383838383838383838),
    .INIT_40(256'h383838387484383838F674F3F3D33874F3F3F3E3F3F3F3F3F3F3F3A438383838),
    .INIT_41(256'h38383838383838384900D8C6B5B5B5B5D7213838383838383838383838383838),
    .INIT_42(256'h383838383838383838383838383821D7D7D7D7D7D50049383838383838383838),
    .INIT_43(256'h3887B4B4F3F3E34875F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3B738B435),
    .INIT_44(256'h38383838383838383800D8D8D8D8D8D8D8213838383838383838383888B46838),
    .INIT_45(256'h383838383838383838383838382800B4D6E6D6B4B40049383838383838383838),
    .INIT_46(256'hF3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F348F3F3),
    .INIT_47(256'h38383838383838382800D8D8D8D8D8D8D82138383838383838B4F3F3F3F3F338),
    .INIT_48(256'h743838383838383838383838382800D7B4B4B4D7D72138383838383838383838),
    .INIT_49(256'hF3F3F3F3F3F3E3B3D3F3F3F3F35212F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3),
    .INIT_4A(256'h38383838383838383800D8D8D8D8D8D8D821383838383858F3F3F3F3F3F3F3F3),
    .INIT_4B(256'hF3C7383838383838383838383821D7D7D7D7D7D7D71138391110101138383838),
    .INIT_4C(256'hF3F3F3F3F3F3425242F2F3F3F34242B3F3F3F3F3F3F3F3F3F3F3F36242C3F3F3),
    .INIT_4D(256'h38383838383838383800B5D7D7D8D8D8C521383838383825F3F3F3F3F3F3F3F3),
    .INIT_4E(256'hF3F3483838383838383838383821D7D7D7D7D7D715113821B4B4D76800383838),
    .INIT_4F(256'h223273F3F3D362F30242A3F3F342C2B2F3F3424242424232F3F3F3939242F3F3),
    .INIT_50(256'h38383838383838384500D8B5B4B5B5B5C7213838383838F3F3F3F3F3F3F36322),
    .INIT_51(256'hF3F3653838383838383838383831D7D7D7D7D7C521384700D6C5B4D721383838),
    .INIT_52(256'h421242C3F3F342F3724242F3F342C342D3F3525312A2525262F3F3F3D342F3F3),
    .INIT_53(256'h383838383838383811D8D8D8D8D8D8D8D8213838383838C4F3F3F3F3F3F34242),
    .INIT_54(256'hF3F3F33838383838383838383831C5D7D7D6B4B4711211D6D7D7B4B421383838),
    .INIT_55(256'h42C2F3F3F3F34262524242424242A24293F3F3F33252F3F3F2F3F3F3F242F3F3),
    .INIT_56(256'h3838383811235621C7D7D8D8D8D8D8D82138383838383894F3F3F3F3F3F3F3F3),
    .INIT_57(256'hF3F3F3C438383838383838383831B4B4B4B4B4D7D7B4C4B4C5D7D7B421383838),
    .INIT_58(256'h42E3F3F3F3F3F342424242F3E342C34252F3F3F3E342F3F3F3F3F3F35242F3F3),
    .INIT_59(256'h3838380011D8B4D8D7B5D7D8D8D8D8D82138383838383816F3F3F3F3F3F3F3F3),
    .INIT_5A(256'hF3F3F3F338383838383838383842D7D7D7D7D7D7D7B4D7D6B4D7D78459383838),
    .INIT_5B(256'h42F3F3F3F3F3F342424242F3F342F3F342E3F3F3F342F3F3F3F3224252F3F3F3),
    .INIT_5C(256'h38383800C8C6C6D8D8B5B5D7D8D8D8B52138383838383848F3F3F3F3F3F3F3F3),
    .INIT_5D(256'hF3F3F3F394383838383838383821D7D7D7D7D7D7D7B4D7D7B4D7D72138383838),
    .INIT_5E(256'h42F3F3F3F3F3F342F36282F3F34212F352E3F3F3F342F3F3F3F342B2F3F3F3F3),
    .INIT_5F(256'h38383800D8B5D7D8D8D8C6B5B5B4B4212138383838383838E3F3F3F3F3F3F3F3),
    .INIT_60(256'hF3F3F3F3E338383838383838380000D7D7D7D7D7B4B5D7D7B4C5210038383838),
    .INIT_61(256'h42F3F3F3F3D342C2F3F3F3F3F373F3F3B2E3F3F34242F3F3F3F3324232F372F3),
    .INIT_62(256'h38383800D8C6C6D8D8D8D8D8D8D8C710383838383838383865F3F3F3F3F3F3F3),
    .INIT_63(256'hF3F3F3F3F3C7383838383838383821D7D7D7D6B4B4D7D7D7B4008A3838383838),
    .INIT_64(256'h22F3F3F3F3D322F3F3F3F3F3F3F3F3F3F3F3F3F393A3F3F3F3F3F392424282F3),
    .INIT_65(256'h38383821D8D8B5D8D8D8D8D8D8B92128383838383838383838F3F3F3F3F3F3F3),
    .INIT_66(256'hF3F3F3F3F3F3C738383838383838382100B4B4B4D7D7C4A45189383838383838),
    .INIT_67(256'hF3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F37352F3F3),
    .INIT_68(256'h3838385621C8C6B5D8D8D8D872213838383838383838383838C4F3F3F3F3F3F3),
    .INIT_69(256'hF3F3F3F3F3F31638383838383838383800111010000021213938383838383838),
    .INIT_6A(256'hF3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3),
    .INIT_6B(256'h3838383829210000000011212838383838383838383838383878F3F3F3F3F3F3),
    .INIT_6C(256'hF3F3F3F3F3F31638383838383838383838383838383838383838383838383838),
    .INIT_6D(256'hF3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3),
    .INIT_6E(256'h3838383838383828383838383838383838383838383838383838F3F3F3F3F3F3),
    .INIT_6F(256'hF3F3F3F3F3F36538383838383838383838383838383838383838383838383838),
    .INIT_70(256'hF3F3F3F3F3F3F378E3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F338F3F3),
    .INIT_71(256'h3838383838383838383838383838383838383838383838383838F3F3F3C4F3F3),
    .INIT_72(256'hF3F3F39494943838383838383838383838383838383838383838383838383838),
    .INIT_73(256'hF3F3F3F3F3F3F3C3389494F3F3F3F3F3F3F3F3F3F3F3F3A4F3F3F3F3F33868F3),
    .INIT_74(256'h383838383838383838383838383838383838383838383838383838941638C4F3),
    .INIT_75(256'hF3F3F33838383838383838383838383838383838383838383838383838383838),
    .INIT_76(256'hF3F3F3F3F3F3F3F338383835F3F3F3F3F3F3F3F3D355553858F3F3F3F3C73897),
    .INIT_77(256'h38383838383838383828212121113838383838383838383838383838383838C4),
    .INIT_78(256'h3806873838383838383838383838383838383838383838383838383838383838),
    .INIT_79(256'hF6F3F3F345A4F3D6383838383868F3F3F3F33838383838383878F3F3F3F33838),
    .INIT_7A(256'h3838383838383838390167676756213838383838383838383838383838383838),
    .INIT_7B(256'h3838383838383838383838383838383811111138383838383838383838383838),
    .INIT_7C(256'h3868F6C73838383838383838383848160697383838383838383878F3F3873838),
    .INIT_7D(256'h3838383838383838213567676767003938383838383838383838383838383838),
    .INIT_7E(256'h38383838383838383838383838282121FCECFC21213838383838383838383838),
    .INIT_7F(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],p_23_out[7:0]}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],p_23_out[8]}),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(ena),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized7
   (p_19_out,
    clka,
    ena,
    addra);
  output [8:0]p_19_out;
  input clka;
  input ena;
  input [14:0]addra;

  wire [14:0]addra;
  wire clka;
  wire ena;
  wire [1:1]ena_array;
  wire [8:0]p_19_out;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000F80000000000000000000000F80000000000000000000000FC0000),
    .INITP_01(256'h01F8001FF80000600000000001F8000FF00000000000000001F80003C0000000),
    .INITP_02(256'h660000EA0000000000FC003F740000AA0000000001F8001FFC0000AE00000000),
    .INITP_03(256'h0000000000FF03FFF60000000000000000FE01FEFE00000C0000000000FC007F),
    .INITP_04(256'h001FFFFB9800000000000000003FFFFFCC00000C00000000007FCFFE04000000),
    .INITP_05(256'h00000000000000000007FFE00000000000000000001FFFF0F000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000007E0000000000000000000003FF80),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h020000000003F800003C0000000000000003E00000000088C110000000000000),
    .INITP_0C(256'h000BBC0001FF800002000000000FFC0000EF0000020000000007FC00007E0000),
    .INITP_0D(256'h01FF800000000000000FFC0001EE800002000000000FFC0001EE800002000000),
    .INITP_0E(256'h000000000FC23C0000E680000000000001C7BC0001FF8000000000000007BC00),
    .INITP_0F(256'h00C1FC00007F800003E6380C00C1FC00007F8000000000007EC3FC0000FD8000),
    .INIT_00(256'h3838383838383800676767776767213938383838383838383838383838383838),
    .INIT_01(256'h3838383838383838383838383821DBBABAECECECDB2138383838383838383838),
    .INIT_02(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_03(256'h3838383838383821252525256721213838383838383838383838383838383838),
    .INIT_04(256'h38383838383838383838383839D9ECECECBAECECECEB21383838383838383838),
    .INIT_05(256'h2111383838383838383838383838383838383838383838383838393838383838),
    .INIT_06(256'h3838383838383821466725352521383838383838383838383838383838381121),
    .INIT_07(256'h38383838383838383838383821ECECECECECBAECECEC22383838383838383838),
    .INIT_08(256'h6767312111383838383838383838383838383838383838383811216421112111),
    .INIT_09(256'h3838383838380087676767672521383838383838383838383838383822212567),
    .INIT_0A(256'h00573838383838383838383810FCECECECECBAECECEB00393838383838383838),
    .INIT_0B(256'h2828676711223838383838383838383838383838383838383964CBECCAECECEC),
    .INIT_0C(256'h3838383838380087676767676721383838383838383838383838382105676767),
    .INIT_0D(256'hEC5468383838383838383821CABABAECECECBAECECCAEC213838383838383838),
    .INIT_0E(256'h28676728082167383838383838383838383838383838383821EEEECBA9ECECEC),
    .INIT_0F(256'h3838383838380077676767662521383838383838383838383838212556676728),
    .INIT_10(256'hECDB21393838383838383821ECECCABAECBABADBBADBDB213838383838383838),
    .INIT_11(256'hEEEE67EEEEEE213838383838383838383838383838383821EE21EEDBDEEEEEEC),
    .INIT_12(256'h38383838383800366725252525213838383838383838383838116225676767EE),
    .INIT_13(256'hDBBAEC213838383838387721ECECFCBACB21EBECECECEB213838383838383838),
    .INIT_14(256'h21DE67FF21EE213838383838383838383838383838383821EE21FFDBEE21EEEC),
    .INIT_15(256'h38383838383869423535676767250038383838383838383821E52556676756EE),
    .INIT_16(256'hECDBCA3223383838383922EBECECECEC5410CAECECEC98213838383838383838),
    .INIT_17(256'h21EE67F721DE460138383838383838383838383838383821EEFF5BECEE218CEC),
    .INIT_18(256'h38383838383838212566676767672148383838383838362100672567676756EE),
    .INIT_19(256'hECECECCA213838383839C9BAECECECEC2100BAECECDB10383838383838383838),
    .INIT_1A(256'hDEEE67677756250138383838383838383838383838383821ECDBBACA08EEB8EC),
    .INIT_1B(256'h38383838383838212567676725255621483838383828212566676725676767F6),
    .INIT_1C(256'hECECECBAEC2121291110FCDBCAECECCA21FCDBBABADB21383838383838383838),
    .INIT_1D(256'h67676767E525250138383838383838383838383838383822DBECEBEBECECBAEC),
    .INIT_1E(256'h3838383838383800266767562567676710213938211156256767672546676777),
    .INIT_1F(256'hECECCBECECDBEC3287ECECECCBBAEC2121ECECECECDA22383838383838383838),
    .INIT_20(256'h21212121212511253838383838383838383838383838383821CAEBECA72121EC),
    .INIT_21(256'h3838383838383838216767255667676725255231466767256767676625676731),
    .INIT_22(256'hECDBBAECECDBDBECCABAECECECCBDB213921CADB212238383838383838383838),
    .INIT_23(256'hE2F36121365611383838383838383838383838383838383849109821F3F3FCEC),
    .INIT_24(256'h3838383838383838280056256667672556671525676767256767676725256767),
    .INIT_25(256'hDBBACBECECBAECECECBAECECECECB83938381111113838383838383838383838),
    .INIT_26(256'h671111677721383838383838383838383838383838383838384521CBECECECFC),
    .INIT_27(256'h38383838383838383821D4466767672567672546676767352567676756113567),
    .INIT_28(256'hCBECECECEBBAECECECEBBAECECFA223838383838383838383838383838383838),
    .INIT_29(256'h155757472148383838383838383838383838383838383838383838222121CABA),
    .INIT_2A(256'h3838383838383838383821256767672567672567676767672556676721344321),
    .INIT_2B(256'hECECECCBBAECECECECECBAEC2121383838383838383838383838383838383838),
    .INIT_2C(256'h0000000038383838383838383838383838383838383838383838383838387821),
    .INIT_2D(256'h383838383838383838383800E567672546673525676767676725157638383838),
    .INIT_2E(256'h21AABABAECECECECECDBBA212138383838383838383838383838383838383838),
    .INIT_2F(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_30(256'h3838383838383838383838382121672536676725676767676721223838383838),
    .INIT_31(256'h38212121CBECECECEC2121213838383838383838383838383838383838383838),
    .INIT_32(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_33(256'h3838383838383838383838383838211193676725255667212121383838383838),
    .INIT_34(256'h3838383912222212222738383838383838383838383838383838383838383838),
    .INIT_35(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_36(256'h3838383838383838383838383838383812121212121212283838383838383838),
    .INIT_37(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_38(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_39(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_3A(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_3B(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_3C(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_3D(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_3E(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_3F(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_40(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_41(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_42(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_43(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_44(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_45(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_46(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_47(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_48(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_49(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_4A(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_4B(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_4C(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_4D(256'h2121003838383838383838383838383838383838383838383838383838383838),
    .INIT_4E(256'h3838383838383838383838383838383838383838383838383838383838383821),
    .INIT_4F(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_50(256'hECDBDC0038383838383838383838383838383838383838383838383838383838),
    .INIT_51(256'h3838383838383838383838383838383838383838383838383838383838382132),
    .INIT_52(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_53(256'hEBDCDC0038383838383838383838383838383838383838383838383838383838),
    .INIT_54(256'h38383838383838383838383838383838383838383838383838383838383821DB),
    .INIT_55(256'h2121103838383821212100383838383838383838383838383838383838383838),
    .INIT_56(256'h2121003838383821212128212121212121212121212121213838212121213821),
    .INIT_57(256'h3838383838383838383838383838383838383838383838380021212121283821),
    .INIT_58(256'hEBEB212143332121ECEA00383838232121212155383838383838383838383838),
    .INIT_59(256'h4D2C00383838213CDBEC211CEBEBECEBEB32EBEBECDBEBEB212100DBEC002121),
    .INIT_5A(256'h3838383838383838383800000000383838383838383838211CECEBEB0C213864),
    .INIT_5B(256'hDAEB2121ECEC21EBEB213338382126D7D7D7D761213838383838383838383838),
    .INIT_5C(256'hEBDC0038380011EBEBDBEBEBDBDBEBEBEB32EBDBDBEBEBEB21ECEBEBEBEBCA21),
    .INIT_5D(256'h3838383838383838282198D8D8D811263838383838381221EBEBEBEBEBEC2153),
    .INIT_5E(256'h43EBEC00EBEC21ECEC21163857C3D7D7D7D7D7D7773438383838383838383838),
    .INIT_5F(256'hEBDB003838002DEB212186EBEB2121DBEB3221212100EBEC21EBEB2121CAEB21),
    .INIT_60(256'h383838383838383811D8D8D8D8D8D83138383838383821DBDB212121EBEB2153),
    .INIT_61(256'h21DBDC00EBDB43EBEB12383963EEFFD7C7FFEED7D75629383838383838383838),
    .INIT_62(256'hEBDC005838001CEB212810DBEB2121DBDB3238384900DBEC21EBDB2121ECEB21),
    .INIT_63(256'h3838383838383821C8D8B732B8D8B95A21383838383821DBCA212721DBEB2153),
    .INIT_64(256'h21ECDBEBECBADBEB22123822DEFFDED7EEFFFFD7D7D721383838383838383838),
    .INIT_65(256'hEBDB210021001DDB332810EBEB2121EBDB3238384800EBEC21EBDB2121ECEC21),
    .INIT_66(256'h38383838383821A8D8D8DEEEDED8EEDECD213838383821CABAB92121EBDB2154),
    .INIT_67(256'h21EBEBDB21EBEBDB21383822DE218CD7EE00EFE7D7D711383838383838383838),
    .INIT_68(256'hDBDB31EBDB212CDB542710EBEC2121EBEB3238384800DBEC21BAECECECEBDB21),
    .INIT_69(256'h38383838383821D8D8D8DE00EED8CE00EE21383838382121DBEBEBEBDBDB2153),
    .INIT_6A(256'h3821DBCB2111DBDB21383822EEBD39D7EEFFEED7D7E700393838383838383838),
    .INIT_6B(256'hDBCB31EBEB211CEB333800DBEC2121EBDB3238384800EBEB2121ECEBECEC2138),
    .INIT_6C(256'h38383838383821D8D8D8DE00DED88B00392138383838382100DBEBEBDB212143),
    .INIT_6D(256'h382121213921212138383822D7E7D7D7D7D7D7D7D7D700383838383838383838),
    .INIT_6E(256'h2121002121002121213821212138282121213838382121210039212121213938),
    .INIT_6F(256'h38383838383821D8D8D877DBA7D8D8B8D7213838383838384921212121393821),
    .INIT_70(256'h38383838383838383838380010D6D7D7D721B7D7D7B400383838383838383838),
    .INIT_71(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_72(256'h38383838383811E8D8D8D8D8D8D8D8D8D8213838383838383838383838383838),
    .INIT_73(256'h38383838383849BDDEAD383821D70693D3B1D7D7D6B400383838383838383838),
    .INIT_74(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_75(256'h3838383838383821D8D8D821A3C7D821D8213838383838383838383838383838),
    .INIT_76(256'h38383838ADEEEEEEEEEE38384911D7111121D6B4B4C500383838383838383838),
    .INIT_77(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_78(256'h3838383838383821A6D8D8D882D331D8D8213838383838383838383838383838),
    .INIT_79(256'h387DEEEEEEEEEE59EEEE3838380036E7E7B4B4B4D6D772383838383838383838),
    .INIT_7A(256'h3838383838383848384848383848483838384848383838383838383838383838),
    .INIT_7B(256'h383838383838383821D8D8D8D8D8D8D8D8213838383838383838383838383838),
    .INIT_7C(256'h3838383838383838EEEE3838383821B4B4B4D6D7D7D721383838383838383838),
    .INIT_7D(256'h38383838383825F3F3F3F397E6F3F3876838A4F3F338383838383838D3F35838),
    .INIT_7E(256'h383838383838383811B5B5D7D8D8D8D7B5213838383838383838389797383838),
    .INIT_7F(256'h3838383838383838EEEE3838383821D7D7D7D7D7D7B421383838383838383838),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],p_19_out[7:0]}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],p_19_out[8]}),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(ena),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT4 #(
    .INIT(16'h1000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1 
       (.I0(addra[14]),
        .I1(addra[13]),
        .I2(ena),
        .I3(addra[12]),
        .O(ena_array));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized8
   (p_15_out,
    clka,
    ena_array,
    ena,
    addra);
  output [8:0]p_15_out;
  input clka;
  input [0:0]ena_array;
  input ena;
  input [11:0]addra;

  wire [11:0]addra;
  wire clka;
  wire ena;
  wire [0:0]ena_array;
  wire [8:0]p_15_out;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h003F807FFDFFFFFF00C1F800003F803C3FFFFFFF00C1F800003F803803FFFE7E),
    .INITP_01(256'h777C6063E0C3F8F0003F80FFF67CE1E7C0C3F800003F807FF0FCFFFF80C1F800),
    .INITP_02(256'hF803FFF000FF00FFF8317BFDF003F1F0007F80FFF23D7B79F0C3F0F0003F80E0),
    .INITP_03(256'h0FFE007DFB3DBBC7FE03FFE00FFF007DFD3D3BE3FC03FFF007FF00FFFC3C3BF9),
    .INITP_04(256'hEFFFFFC0FF007F000FFC041DF7FFB3CDFF01FF800FFE063DF33DBBCFFF01FFC0),
    .INITP_05(256'hF000000000000407FFFFFFFFFC0000000000040FFFFFFFE1FF00000007F0041F),
    .INITP_06(256'h00000401FF3EFC60F800000000000403FFFFFFF3F000000000000403FFFFFFF7),
    .INITP_07(256'h0000000000000000007C000C0000000030000000003C07FEF0000C0070000000),
    .INITP_08(256'h0000000000F80000000000000000000000F80000000000000000000000FC0000),
    .INITP_09(256'h01F8001FF80000600000000001F8000FF00000000000000001F80003C0000000),
    .INITP_0A(256'h660000EA0000000000FC003F740000AA0000000001F8001FFC0000AE00000000),
    .INITP_0B(256'h0000000000FF03FFF60000000000000000FE01FEFE00000C0000000000FC007F),
    .INITP_0C(256'h001FFFFB9800000000000000003FFFFFCC00000C00000000007FCFFE04000000),
    .INITP_0D(256'h00000000000000000007FFE00000000000000000001FFFF0F000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000007E0000000000000000000003FF80),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h383838D73868A4F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3C43887F3F3F3F3F3F348),
    .INIT_01(256'h38383838383838384900D8C6B5B5B5B5D721383838383838383835F3F3D73838),
    .INIT_02(256'h3838383838383838EEEE3838383821D7D7D7D7D7D50049383838383838383838),
    .INIT_03(256'h3838D3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3B4F3F3F3F3F3F3F355),
    .INIT_04(256'h38383838383838383800D8D8D8D8D8D8D8213838383838383848F3F3F3F33838),
    .INIT_05(256'h6838383838383838EEEE3838382800B4D6E6D6B4B40049383838383838383838),
    .INIT_06(256'h9475F3F3F31242B3F3F3F3F3F3F3C3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3),
    .INIT_07(256'h38383838383838382800D8D8D8D8D8D8D82138383838383838D3F3F3F3F33575),
    .INIT_08(256'hF338383838383838EEEE3838382800D7B4B4B4D7D72138383838383838383838),
    .INIT_09(256'hF3F3F3F3B242824283F3F3F3F3E34272F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3),
    .INIT_0A(256'h38383838383838383800D8D8D8D8D8D8D821383838383838B7F3F3F3F3F3F3F3),
    .INIT_0B(256'hF3E3383838383838EEEE38383821D7D7D7D7D7D7D71138391110101138383838),
    .INIT_0C(256'hF3F3F3F34242F3D242E3F3F3F3E34242B3F3E3424242C2C3F3F3F3424293F3F3),
    .INIT_0D(256'h38383838383838383800B5D7D7D8D8D8C521383838383838F3F3F3F3A3A3A3B3),
    .INIT_0E(256'hF3F3A43838383838EEEE38383821D7D7D7D7D7D715113821B4B4D76800383838),
    .INIT_0F(256'h42F3F3F34252F37342D3F3F3F3E3624292F39362A2425242D2F3F342724232F3),
    .INIT_10(256'h38383838383838384500D8B5B4B5B5B5C721383838383838F3F3F34262A27242),
    .INIT_11(256'hF3F3F306383838387DEE38383831D7D7D7D7D7C521384700D6C5B4D721383838),
    .INIT_12(256'h22A3F3F3824252824292F3F3F3E372C352F3F3F3F342F3F3C2F3F3F3F37242D3),
    .INIT_13(256'h383838383838383811D8D8D8D8D8D8D8D821383838383838F3F3F353F3F3B3D3),
    .INIT_14(256'hF3F3F3F387383838383838383831C5D7D7D6B4B4711211D6D7D7B4B421383838),
    .INIT_15(256'hF3F3F3F3F3D242424242F3F34242525242F3F3F3B342F3F3F3F3F3F3F3524273),
    .INIT_16(256'h3838383811235621C7D7D8D8D8D8D8D82138383838383838F3F3F3F3F3F31242),
    .INIT_17(256'hF3F3F3F3F3783838383838383831B4B4B4B4B4D7D7B4C4B4C5D7D7B421383838),
    .INIT_18(256'hF3F3F3F3F3F362424242F3F3F3E3527242A2F3F37342F3F3F3F3F3F3A3924283),
    .INIT_19(256'h3838380011D8B4D8D7B5D7D8D8D8D8D82138383838383838F3F3F3F3F3F31242),
    .INIT_1A(256'hF3F3F3F3F3F35838383838383842D7D7D7D7D7D7D7B4D7D6B4D7D78459383838),
    .INIT_1B(256'hF3F3F3F3F36342734242F3F3F3E372F3C2A2F3F37342F3F3F3F3F3C2424222F3),
    .INIT_1C(256'h38383800C8C6C6D8D8B5B5D7D8D8D8B52138383838383838F6F3F3F3F3F3C242),
    .INIT_1D(256'hF3F3F3F3F3F3F338383838383821D7D7D7D7D7D7D7B4D7D7B4D7D72138383838),
    .INIT_1E(256'hF3F3F3F3F36202F34242F3F3F3E352F3B352F3F38342F3F3F3F3C242B2C3F3F3),
    .INIT_1F(256'h38383800D8B5D7D8D8D8C6B5B5B4B421213838383869CA383865F3F3F3F34263),
    .INIT_20(256'hF3F3F3F3F3F3F3F338383838380000D7D7D7D7D7B4B5D7D7B4C5210038383838),
    .INIT_21(256'hF3F3F3F3C242F3F36242F3F3F3E342F3B342F3F39342F3F3F36342D2F3F3F3F3),
    .INIT_22(256'h38383800D8C6C6D8D8D8D8D8D8D8C71038383838386C7D383838F3F3F3F342F3),
    .INIT_23(256'hF3F3F3F3F3F3F3F3D6383838383821D7D7D7D6B4B4D7D7D7B4008A3838383838),
    .INIT_24(256'hF3F3F34242C3F3F34222F3F3F3F322F3B372F3F3F242F3F3F37342B2F37382B3),
    .INIT_25(256'h38383821D8D8B5D8D8D8D8D8D8B921283838383838EEDA38383897F3F3D342F3),
    .INIT_26(256'hF3F3F3F3F3F3F3F3383838383838382100B4B4B4D7D7C4A45189383838383838),
    .INIT_27(256'hF3F3B352C3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F34273F3F3F3F3C24242524242),
    .INIT_28(256'h3838385621C8C6B5D8D8D8D8722138383838383849EE383838383816F3F3F3F3),
    .INIT_29(256'hF3F3F3F3F3F3F3E3383838383838383800111010000021213938383838383838),
    .INIT_2A(256'hF3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F2424252C3),
    .INIT_2B(256'h383838382921000000001121283838383838383879EE383838383838C4F3F3F3),
    .INIT_2C(256'hF3F3F3F3F3F3F638383838383838383838383838383838383838383838383838),
    .INIT_2D(256'hF3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3),
    .INIT_2E(256'h383838383838382838383838383838383838383879EE38383838383838F3F3F3),
    .INIT_2F(256'hF3F3F335B7583838383838383838383838383838383838383838383838383838),
    .INIT_30(256'hF3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3E3E6F3F3F3),
    .INIT_31(256'h383838383838383838383838383838383838383879EE38383838383838A7F3F3),
    .INIT_32(256'hF3F3F3E338383838383838383838383838383838383838383838383838383838),
    .INIT_33(256'hF3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3A4B445F3F3E338E6F3D3),
    .INIT_34(256'h383838383838383838383838383838383838383879EE3838383838383838E3F3),
    .INIT_35(256'hB4F3F3F306383838383838383838383838383838383838383838383838383838),
    .INIT_36(256'hF3F3F3F3F3F3A4F3B73884F3F3C4F348F3F3F3F3F3F338383884F33838383838),
    .INIT_37(256'h383838383838383838282121211138383838383879EE493838383838598938F3),
    .INIT_38(256'h38D3F3F3E6383838383838383838383838383838383838383838383838383838),
    .INIT_39(256'hE3F3F3A438383838383838383838383838383868B40638383838383838383838),
    .INIT_3A(256'h383838383838383839016767675621383838383879EEEEEEEEEEEEEEEEEEDE78),
    .INIT_3B(256'h3838651638383838383838383838383811111138383838383838383838383838),
    .INIT_3C(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_3D(256'h3838383838383838213567676767003938383838387979797979798AEE3C5938),
    .INIT_3E(256'h38383838383838383838383838282121FCECFC21213838383838383838383838),
    .INIT_3F(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_40(256'h3838383838383800676767776767213938383838383838383838383838383838),
    .INIT_41(256'h3838383838383838383838383821DBBABAECECECDB2138383838383838383838),
    .INIT_42(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_43(256'h3838383838383821252525256721213838383838383838383838383838383838),
    .INIT_44(256'h38383838383838383838383839D9ECECECBAECECECEB21383838383838383838),
    .INIT_45(256'h2111383838383838383838383838383838383838383838383838393838383838),
    .INIT_46(256'h3838383838383821466725352521383838383838383838383838383838381121),
    .INIT_47(256'h38383838383838383838383821ECECECECECBAECECEC22383838383838383838),
    .INIT_48(256'h6767312111383838383838383838383838383838383838383811216421112111),
    .INIT_49(256'h3838383838380087676767672521383838383838383838383838383822212567),
    .INIT_4A(256'h00573838383838383838383810FCECECECECBAECECEB00393838383838383838),
    .INIT_4B(256'h2828676711223838383838383838383838383838383838383964CBECCAECECEC),
    .INIT_4C(256'h3838383838380087676767676721383838383838383838383838382105676767),
    .INIT_4D(256'hEC5468383838383838383821CABABAECECECBAECECCAEC213838383838383838),
    .INIT_4E(256'h28676728082167383838383838383838383838383838383821EEEECBA9ECECEC),
    .INIT_4F(256'h3838383838380077676767662521383838383838383838383838212556676728),
    .INIT_50(256'hECDB21393838383838383821ECECCABAECBABADBBADBDB213838383838383838),
    .INIT_51(256'hEEEE67EEEEEE213838383838383838383838383838383821EE21EEDBDEEEEEEC),
    .INIT_52(256'h38383838383800366725252525213838383838383838383838116225676767EE),
    .INIT_53(256'hDBBAEC213838383838387721ECECFCBACB21EBECECECEB213838383838383838),
    .INIT_54(256'h21DE67FF21EE213838383838383838383838383838383821EE21FFDBEE21EEEC),
    .INIT_55(256'h38383838383869423535676767250038383838383838383821E52556676756EE),
    .INIT_56(256'hECDBCA3223383838383922EBECECECEC5410CAECECEC98213838383838383838),
    .INIT_57(256'h21EE67F721DE460138383838383838383838383838383821EEFF5BECEE218CEC),
    .INIT_58(256'h38383838383838212566676767672148383838383838362100672567676756EE),
    .INIT_59(256'hECECECCA213838383839C9BAECECECEC2100BAECECDB10383838383838383838),
    .INIT_5A(256'hDEEE67677756250138383838383838383838383838383821ECDBBACA08EEB8EC),
    .INIT_5B(256'h38383838383838212567676725255621483838383828212566676725676767F6),
    .INIT_5C(256'hECECECBAEC2121291110FCDBCAECECCA21FCDBBABADB21383838383838383838),
    .INIT_5D(256'h67676767E525250138383838383838383838383838383822DBECEBEBECECBAEC),
    .INIT_5E(256'h3838383838383800266767562567676710213938211156256767672546676777),
    .INIT_5F(256'hECECCBECECDBEC3287ECECECCBBAEC2121ECECECECDA22383838383838383838),
    .INIT_60(256'h21212121212511253838383838383838383838383838383821CAEBECA72121EC),
    .INIT_61(256'h3838383838383838216767255667676725255231466767256767676625676731),
    .INIT_62(256'hECDBBAECECDBDBECCABAECECECCBDB213921CADB212238383838383838383838),
    .INIT_63(256'hE2F36121365611383838383838383838383838383838383849109821F3F3FCEC),
    .INIT_64(256'h3838383838383838280056256667672556671525676767256767676725256767),
    .INIT_65(256'hDBBACBECECBAECECECBAECECECECB83938381111113838383838383838383838),
    .INIT_66(256'h671111677721383838383838383838383838383838383838384521CBECECECFC),
    .INIT_67(256'h38383838383838383821D4466767672567672546676767352567676756113567),
    .INIT_68(256'hCBECECECEBBAECECECEBBAECECFA223838383838383838383838383838383838),
    .INIT_69(256'h155757472148383838383838383838383838383838383838383838222121CABA),
    .INIT_6A(256'h3838383838383838383821256767672567672567676767672556676721344321),
    .INIT_6B(256'hECECECCBBAECECECECECBAEC2121383838383838383838383838383838383838),
    .INIT_6C(256'h0000000038383838383838383838383838383838383838383838383838387821),
    .INIT_6D(256'h383838383838383838383800E567672546673525676767676725157638383838),
    .INIT_6E(256'h21AABABAECECECECECDBBA212138383838383838383838383838383838383838),
    .INIT_6F(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_70(256'h3838383838383838383838382121672536676725676767676721223838383838),
    .INIT_71(256'h38212121CBECECECEC2121213838383838383838383838383838383838383838),
    .INIT_72(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_73(256'h3838383838383838383838383838211193676725255667212121383838383838),
    .INIT_74(256'h3838383912222212222738383838383838383838383838383838383838383838),
    .INIT_75(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_76(256'h3838383838383838383838383838383812121212121212283838383838383838),
    .INIT_77(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_78(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_79(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_7A(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_7B(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_7C(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_7D(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_7E(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_7F(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],p_15_out[7:0]}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],p_15_out[8]}),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(ena),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized9
   (p_11_out,
    clka,
    ena_array,
    ena,
    addra);
  output [8:0]p_11_out;
  input clka;
  input [0:0]ena_array;
  input ena;
  input [11:0]addra;

  wire [11:0]addra;
  wire clka;
  wire ena;
  wire [0:0]ena_array;
  wire [8:0]p_11_out;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h020000000003F800003C0000000000000003E00000000088C110000000000000),
    .INITP_04(256'h000BBC0001FF800002000000000FFC0000EF0000020000000007FC00007E0000),
    .INITP_05(256'h01FF800000000000000FFC0001EE800002000000000FFC0001EE800002000000),
    .INITP_06(256'h0000000000023C0000E683E0000000000007BC0001FF8000000000000007BC00),
    .INITP_07(256'h0001FC00007F8200000000000001FC00007F8200000000000003FC0000FD87FE),
    .INITP_08(256'h003F8200000000000001F800003F8200000000000001F800003F820000000000),
    .INITP_09(256'h000000000C03F8F0003F8100000000000403F800003F8300000000000401F800),
    .INITP_0A(256'h0803FFF000FF0180000000000803F1F0007F8180000000000C03F0F0003F8100),
    .INITP_0B(256'h0FFE000000000001CC03FFE00FFF0000000000000C03FFF007FF000000000000),
    .INITP_0C(256'h0000000000007F000FFC0000000000000001FF800FFE000000000000FC01FFC0),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000007F00000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000007C00000000000000000000003C00000000000000000000),
    .INIT_00(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_01(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_02(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_03(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_04(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_05(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_06(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_07(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_08(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_09(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_0A(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_0B(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_0C(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_0D(256'h2121003838383838383838383838383838383838383838383838383838383838),
    .INIT_0E(256'h3838383838383838383838383838383838383838383838383838383838383821),
    .INIT_0F(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_10(256'hECDBDC0038383838383838383838383838383838383838383838383838383838),
    .INIT_11(256'h3838383838383838383838383838383838383838383838383838383838382132),
    .INIT_12(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_13(256'hEBDCDC0038383838383838383838383838383838383838383838383838383838),
    .INIT_14(256'h38383838383838383838383838383838383838383838383838383838383821DB),
    .INIT_15(256'h2121103838383821212100383838383838383838383838383838383838383838),
    .INIT_16(256'h2121003838383821212128212121212121212121212121213838212121213821),
    .INIT_17(256'h3838383838383838383838383838383838383838383838380021212121283821),
    .INIT_18(256'hEBEB212143332121ECEA00383838232121212155383838383838383838383838),
    .INIT_19(256'h4D2C00383838213CDBEC211CEBEBECEBEB32EBEBECDBEBEB212100DBEC002121),
    .INIT_1A(256'h3838383838383838383800000000383838383838383838211CECEBEB0C213864),
    .INIT_1B(256'hDAEB2121ECEC21EBEB213338382126D7D7D7D761213838383838383838383838),
    .INIT_1C(256'hEBDC0038380011EBEBDBEBEBDBDBEBEBEB32EBDBDBEBEBEB21ECEBEBEBEBCA21),
    .INIT_1D(256'h3838383838383838282198D8D8D811263838383838381221EBEBEBEBEBEC2153),
    .INIT_1E(256'h43EBEC00EBEC21ECEC21163857C3D7D7D7D7D7D7773438383838383838383838),
    .INIT_1F(256'hEBDB003838002DEB212186EBEB2121DBEB3221212100EBEC21EBEB2121CAEB21),
    .INIT_20(256'h383838383838383811D8D8D8D8D8D83138383838383821DBDB212121EBEB2153),
    .INIT_21(256'h21DBDC00EBDB43EBEB12383963EEFFD7C7FFEED7D75629383838383838383838),
    .INIT_22(256'hEBDC005838001CEB212810DBEB2121DBDB3238384900DBEC21EBDB2121ECEB21),
    .INIT_23(256'h3838383838383821C8D8B732B8D8B95A21383838383821DBCA212721DBEB2153),
    .INIT_24(256'h21ECDBEBECBADBEB22123822DEFFDED7EEFFFFD7D7D721383838383838383838),
    .INIT_25(256'hEBDB210021001DDB332810EBEB2121EBDB3238384800EBEC21EBDB2121ECEC21),
    .INIT_26(256'h38383838383821A8D8D8DEEEDED8EEDECD213838383821CABAB92121EBDB2154),
    .INIT_27(256'h21EBEBDB21EBEBDB21383822DE218CD7EE00EFE7D7D711383838383838383838),
    .INIT_28(256'hDBDB31EBDB212CDB542710EBEC2121EBEB3238384800DBEC21BAECECECEBDB21),
    .INIT_29(256'h38383838383821D8D8D8DE00EED8CE00EE21383838382121DBEBEBEBDBDB2153),
    .INIT_2A(256'h3821DBCB2111DBDB21383822EEBD39D7EEFFEED7D7E700393838383838383838),
    .INIT_2B(256'hDBCB31EBEB211CEB333800DBEC2121EBDB3238384800EBEB2121ECEBECEC2138),
    .INIT_2C(256'h38383838383821D8D8D8DE00DED88B00392138383838382100DBEBEBDB212143),
    .INIT_2D(256'h382121213921212138383822D7E7D7D7D7D7D7D7D7D700383838383838383838),
    .INIT_2E(256'h2121002121002121213821212138282121213838382121210039212121213938),
    .INIT_2F(256'h38383838383821D8D8D877DBA7D8D8B8D7213838383838384921212121393821),
    .INIT_30(256'h38383838383838383838380010D6D7D7D721B7D7D7B400383838383838383838),
    .INIT_31(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_32(256'h38383838383811E8D8D8D8D8D8D8D8D8D8213838383838383838383838383838),
    .INIT_33(256'h38383838383838383838383821D70693D3B1D7D7D6B400383838383838383838),
    .INIT_34(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_35(256'h3838383838383821D8D8D821A3C7D821D82138383859EEEEEEEEEEFB89894938),
    .INIT_36(256'h3838383838383838383838384911D7111121D6B4B4C500383838383838383838),
    .INIT_37(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_38(256'h3838383838383821A6D8D8D882D331D8D8213838384CEEEEEEEEEEEEEEEEEEBA),
    .INIT_39(256'h383838383838383838383838380036E7E7B4B4B4D6D772383838383838383838),
    .INIT_3A(256'h3838383838383838383838383838373838383838383838383838383838384236),
    .INIT_3B(256'h383838383838383821D8D8D8D8D8D8D8D82138383838EE383838383838383838),
    .INIT_3C(256'h383838383838383838383838383821B4B4B4D6D7D7D721383838383838383838),
    .INIT_3D(256'h3838383838383838383838383842424238383838383838383838424238384242),
    .INIT_3E(256'h383838383838383811B5B5D7D8D8D8D7B52138383838EE383838383838383838),
    .INIT_3F(256'h383838383838383838383838383821D7D7D7D7D7D7B421383838383838383838),
    .INIT_40(256'h3837433838364244383838383842424243383838444438383836424238444242),
    .INIT_41(256'h38383838383838384900D8C6B5B5B5B5D72138383838EE383838383838363638),
    .INIT_42(256'h453838383838383838383838383821D7D7D7D7D7D50049383838383838383838),
    .INIT_43(256'h3842423838364242374238383842423542363842424242423844424238444242),
    .INIT_44(256'h38383838383838383800D8D8D8D8D8D8D82138383838EE383838383838363638),
    .INIT_45(256'h423838383838383838383838382800B4D6E6D6B4B40049383838383838383838),
    .INIT_46(256'h3742423838434242434236383843423842453842424442424438434238444242),
    .INIT_47(256'h38383838383838382800D8D8D8D8D8D8D82138383838EEAA3838383838364237),
    .INIT_48(256'h42373838386D383838383838382800D7B4B4B4D7D72138383838383838383838),
    .INIT_49(256'h4242423838424342424242383837424242423842423645424238434238424245),
    .INIT_4A(256'h38383838383838383800D8D8D8D8D8D8D82138383838CEDE3838383838364242),
    .INIT_4B(256'h4236383879EE3838383838383821D7D7D7D7D7D7D71138391110101138383838),
    .INIT_4C(256'h3842423738424338424242383838444242423838424338364238354236424238),
    .INIT_4D(256'h38383838383838383800B5D7D7D8D8D8C52138383838DAEE3838383838364238),
    .INIT_4E(256'h42423838EEAD3838383838383821D7D7D7D7D7D715113821B4B4D76800383838),
    .INIT_4F(256'h3842374237423638424244423838434235423738364243424238384242423638),
    .INIT_50(256'h38383838383838384500D8B5B4B5B5B5C7213838383838EE7938424238364238),
    .INIT_51(256'h36423838EE3C3838383838383831D7D7D7D7D7C521384700D6C5B4D721383838),
    .INIT_52(256'h4442384238443838454238423842424337423738384342423538384242423838),
    .INIT_53(256'h383838383838383811D8D8D8D8D8D8D8D8213838383838EE2C37444242424238),
    .INIT_54(256'h37424238EEEB3838383838383831C5D7D7D6B4B4711211D6D7D7B4B421383838),
    .INIT_55(256'h4243383638383838383838363842443838424238383837363838383642443838),
    .INIT_56(256'h3838383811235621C7D7D8D8D8D8D8D821383838383838DEEE38383845433738),
    .INIT_57(256'h38424238EEFB3838383838383831B4B4B4B4B4D7D7B4C4B4C5D7D7B421383838),
    .INIT_58(256'h3838383838383838383838383838383838434238383838383838383838383838),
    .INIT_59(256'h3838380011D8B4D8D7B5D7D8D8D8D8D821383838383838383838383838383838),
    .INIT_5A(256'h38364238EE7D3838383838383842D7D7D7D7D7D7D7B4D7D6B4D7D78459383838),
    .INIT_5B(256'h38383838383838383838383838383838383838383838383838383838383838DB),
    .INIT_5C(256'h38383800C8C6C6D8D8B5B5D7D8D8D8B521383838383838383838383838383838),
    .INIT_5D(256'hEECE9A9AEEEE3838383838383821D7D7D7D7D7D7D7B4D7D7B4D7D72138383838),
    .INIT_5E(256'h38383838383838383838383838383838383838383838383838383838383838EE),
    .INIT_5F(256'h38383800D8B5D7D8D8D8C6B5B5B4B42121383838383838383838383838383838),
    .INIT_60(256'hEEEEEEEEEEDE383838383838380000D7D7D7D7D7B4B5D7D7B4C5210038383838),
    .INIT_61(256'h3838383838383838383838383838383838383838383838383838383838383869),
    .INIT_62(256'h38383800D8C6C6D8D8D8D8D8D8D8C71038383838383838383838383838383838),
    .INIT_63(256'h383838383838383838383838383821D7D7D7D6B4B4D7D7D7B4008A3838383838),
    .INIT_64(256'h3838383838383838383838383838383837423738383838383838383838383838),
    .INIT_65(256'h38383821D8D8B5D8D8D8D8D8D8B9212838383838383838383838383838383838),
    .INIT_66(256'h3838383838383838383838383838382100B4B4B4D7D7C4A45189383838383838),
    .INIT_67(256'h3838383838383838383838383838383836424238383838383838383842363838),
    .INIT_68(256'h3838385621C8C6B5D8D8D8D87221383838383838383838383838383838383838),
    .INIT_69(256'h3838383838383838383838383838383800111010000021213938383838383838),
    .INIT_6A(256'h4242423638383842424338383838383844424238383838363738383842453838),
    .INIT_6B(256'h3838383829210000000011212838383838383838383838383838383838383838),
    .INIT_6C(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_6D(256'h4237443638383842434244383838383842424238383838354338383842423838),
    .INIT_6E(256'h3838383838383828383838383838383838383838383838383838383838383642),
    .INIT_6F(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_70(256'h3838423838383842434542383838383842424238383838384238383836423838),
    .INIT_71(256'h3838383838383838383838383838383838383838383838383838383838384242),
    .INIT_72(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_73(256'h3838423838383842423542373742424242424236383838384242424235423838),
    .INIT_74(256'h3838383838383838383838383838383838383838383838383838383838364237),
    .INIT_75(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_76(256'h3837423838383838424242423838383842424242383838384243374442423838),
    .INIT_77(256'h3838383838383838382821212111383838383838383838383838383838364238),
    .INIT_78(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_79(256'h3836423838383844424242423838383843424342383838384236383838423838),
    .INIT_7A(256'h3838383838383838390167676756213838383838383838383838383838364237),
    .INIT_7B(256'h3838383838383838383838383838383811111138383838383838383838383838),
    .INIT_7C(256'h3837423638364242423642423838383836423842383838384236383838423738),
    .INIT_7D(256'h3838383838383838213567676767003938383838383838383838383838384243),
    .INIT_7E(256'h38383838383838383838383838282121FCECFC21213838383838383838383838),
    .INIT_7F(256'h3838424338374337383842423838383836423842383838364238383838423738),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],p_11_out[7:0]}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],p_11_out[8]}),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(ena),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_top
   (douta,
    clka,
    ena,
    addra);
  output [15:0]douta;
  input clka;
  input ena;
  input [14:0]addra;

  wire [14:0]addra;
  wire clka;
  wire [15:0]douta;
  wire ena;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_generic_cstr \valid.cstr 
       (.addra(addra),
        .clka(clka),
        .douta(douta),
        .ena(ena));
endmodule

(* C_ADDRA_WIDTH = "15" *) (* C_ADDRB_WIDTH = "15" *) (* C_ALGORITHM = "1" *) 
(* C_AXI_ID_WIDTH = "4" *) (* C_AXI_SLAVE_TYPE = "0" *) (* C_AXI_TYPE = "1" *) 
(* C_BYTE_SIZE = "9" *) (* C_COMMON_CLK = "0" *) (* C_COUNT_18K_BRAM = "3" *) 
(* C_COUNT_36K_BRAM = "10" *) (* C_CTRL_ECC_ALGO = "NONE" *) (* C_DEFAULT_DATA = "0" *) 
(* C_DISABLE_WARN_BHV_COLL = "0" *) (* C_DISABLE_WARN_BHV_RANGE = "0" *) (* C_ELABORATION_DIR = "./" *) 
(* C_ENABLE_32BIT_ADDRESS = "0" *) (* C_EN_DEEPSLEEP_PIN = "0" *) (* C_EN_ECC_PIPE = "0" *) 
(* C_EN_RDADDRA_CHG = "0" *) (* C_EN_RDADDRB_CHG = "0" *) (* C_EN_SAFETY_CKT = "0" *) 
(* C_EN_SHUTDOWN_PIN = "0" *) (* C_EN_SLEEP_PIN = "0" *) (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     10.271133 mW" *) 
(* C_FAMILY = "artix7" *) (* C_HAS_AXI_ID = "0" *) (* C_HAS_ENA = "1" *) 
(* C_HAS_ENB = "0" *) (* C_HAS_INJECTERR = "0" *) (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
(* C_HAS_MEM_OUTPUT_REGS_B = "0" *) (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
(* C_HAS_REGCEA = "0" *) (* C_HAS_REGCEB = "0" *) (* C_HAS_RSTA = "0" *) 
(* C_HAS_RSTB = "0" *) (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
(* C_INITA_VAL = "0" *) (* C_INITB_VAL = "0" *) (* C_INIT_FILE = "blk_mem_gen_1.mem" *) 
(* C_INIT_FILE_NAME = "blk_mem_gen_1.mif" *) (* C_INTERFACE_TYPE = "0" *) (* C_LOAD_INIT_FILE = "1" *) 
(* C_MEM_TYPE = "3" *) (* C_MUX_PIPELINE_STAGES = "0" *) (* C_PRIM_TYPE = "1" *) 
(* C_READ_DEPTH_A = "24576" *) (* C_READ_DEPTH_B = "24576" *) (* C_READ_WIDTH_A = "16" *) 
(* C_READ_WIDTH_B = "16" *) (* C_RSTRAM_A = "0" *) (* C_RSTRAM_B = "0" *) 
(* C_RST_PRIORITY_A = "CE" *) (* C_RST_PRIORITY_B = "CE" *) (* C_SIM_COLLISION_CHECK = "ALL" *) 
(* C_USE_BRAM_BLOCK = "0" *) (* C_USE_BYTE_WEA = "0" *) (* C_USE_BYTE_WEB = "0" *) 
(* C_USE_DEFAULT_DATA = "0" *) (* C_USE_ECC = "0" *) (* C_USE_SOFTECC = "0" *) 
(* C_USE_URAM = "0" *) (* C_WEA_WIDTH = "1" *) (* C_WEB_WIDTH = "1" *) 
(* C_WRITE_DEPTH_A = "24576" *) (* C_WRITE_DEPTH_B = "24576" *) (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
(* C_WRITE_MODE_B = "WRITE_FIRST" *) (* C_WRITE_WIDTH_A = "16" *) (* C_WRITE_WIDTH_B = "16" *) 
(* C_XDEVICEFAMILY = "artix7" *) (* downgradeipidentifiedwarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1
   (clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    douta,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    doutb,
    injectsbiterr,
    injectdbiterr,
    eccpipece,
    sbiterr,
    dbiterr,
    rdaddrecc,
    sleep,
    deepsleep,
    shutdown,
    rsta_busy,
    rstb_busy,
    s_aclk,
    s_aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    s_axi_injectsbiterr,
    s_axi_injectdbiterr,
    s_axi_sbiterr,
    s_axi_dbiterr,
    s_axi_rdaddrecc);
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [0:0]wea;
  input [14:0]addra;
  input [15:0]dina;
  output [15:0]douta;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [14:0]addrb;
  input [15:0]dinb;
  output [15:0]doutb;
  input injectsbiterr;
  input injectdbiterr;
  input eccpipece;
  output sbiterr;
  output dbiterr;
  output [14:0]rdaddrecc;
  input sleep;
  input deepsleep;
  input shutdown;
  output rsta_busy;
  output rstb_busy;
  input s_aclk;
  input s_aresetn;
  input [3:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input s_axi_awvalid;
  output s_axi_awready;
  input [15:0]s_axi_wdata;
  input [0:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [3:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [3:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input s_axi_arvalid;
  output s_axi_arready;
  output [3:0]s_axi_rid;
  output [15:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  input s_axi_injectsbiterr;
  input s_axi_injectdbiterr;
  output s_axi_sbiterr;
  output s_axi_dbiterr;
  output [14:0]s_axi_rdaddrecc;

  wire \<const0> ;
  wire [14:0]addra;
  wire clka;
  wire [15:0]douta;
  wire ena;

  assign dbiterr = \<const0> ;
  assign doutb[15] = \<const0> ;
  assign doutb[14] = \<const0> ;
  assign doutb[13] = \<const0> ;
  assign doutb[12] = \<const0> ;
  assign doutb[11] = \<const0> ;
  assign doutb[10] = \<const0> ;
  assign doutb[9] = \<const0> ;
  assign doutb[8] = \<const0> ;
  assign doutb[7] = \<const0> ;
  assign doutb[6] = \<const0> ;
  assign doutb[5] = \<const0> ;
  assign doutb[4] = \<const0> ;
  assign doutb[3] = \<const0> ;
  assign doutb[2] = \<const0> ;
  assign doutb[1] = \<const0> ;
  assign doutb[0] = \<const0> ;
  assign rdaddrecc[14] = \<const0> ;
  assign rdaddrecc[13] = \<const0> ;
  assign rdaddrecc[12] = \<const0> ;
  assign rdaddrecc[11] = \<const0> ;
  assign rdaddrecc[10] = \<const0> ;
  assign rdaddrecc[9] = \<const0> ;
  assign rdaddrecc[8] = \<const0> ;
  assign rdaddrecc[7] = \<const0> ;
  assign rdaddrecc[6] = \<const0> ;
  assign rdaddrecc[5] = \<const0> ;
  assign rdaddrecc[4] = \<const0> ;
  assign rdaddrecc[3] = \<const0> ;
  assign rdaddrecc[2] = \<const0> ;
  assign rdaddrecc[1] = \<const0> ;
  assign rdaddrecc[0] = \<const0> ;
  assign rsta_busy = \<const0> ;
  assign rstb_busy = \<const0> ;
  assign s_axi_arready = \<const0> ;
  assign s_axi_awready = \<const0> ;
  assign s_axi_bid[3] = \<const0> ;
  assign s_axi_bid[2] = \<const0> ;
  assign s_axi_bid[1] = \<const0> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_bvalid = \<const0> ;
  assign s_axi_dbiterr = \<const0> ;
  assign s_axi_rdaddrecc[14] = \<const0> ;
  assign s_axi_rdaddrecc[13] = \<const0> ;
  assign s_axi_rdaddrecc[12] = \<const0> ;
  assign s_axi_rdaddrecc[11] = \<const0> ;
  assign s_axi_rdaddrecc[10] = \<const0> ;
  assign s_axi_rdaddrecc[9] = \<const0> ;
  assign s_axi_rdaddrecc[8] = \<const0> ;
  assign s_axi_rdaddrecc[7] = \<const0> ;
  assign s_axi_rdaddrecc[6] = \<const0> ;
  assign s_axi_rdaddrecc[5] = \<const0> ;
  assign s_axi_rdaddrecc[4] = \<const0> ;
  assign s_axi_rdaddrecc[3] = \<const0> ;
  assign s_axi_rdaddrecc[2] = \<const0> ;
  assign s_axi_rdaddrecc[1] = \<const0> ;
  assign s_axi_rdaddrecc[0] = \<const0> ;
  assign s_axi_rdata[15] = \<const0> ;
  assign s_axi_rdata[14] = \<const0> ;
  assign s_axi_rdata[13] = \<const0> ;
  assign s_axi_rdata[12] = \<const0> ;
  assign s_axi_rdata[11] = \<const0> ;
  assign s_axi_rdata[10] = \<const0> ;
  assign s_axi_rdata[9] = \<const0> ;
  assign s_axi_rdata[8] = \<const0> ;
  assign s_axi_rdata[7] = \<const0> ;
  assign s_axi_rdata[6] = \<const0> ;
  assign s_axi_rdata[5] = \<const0> ;
  assign s_axi_rdata[4] = \<const0> ;
  assign s_axi_rdata[3] = \<const0> ;
  assign s_axi_rdata[2] = \<const0> ;
  assign s_axi_rdata[1] = \<const0> ;
  assign s_axi_rdata[0] = \<const0> ;
  assign s_axi_rid[3] = \<const0> ;
  assign s_axi_rid[2] = \<const0> ;
  assign s_axi_rid[1] = \<const0> ;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rlast = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_rvalid = \<const0> ;
  assign s_axi_sbiterr = \<const0> ;
  assign s_axi_wready = \<const0> ;
  assign sbiterr = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1_synth inst_blk_mem_gen
       (.addra(addra),
        .clka(clka),
        .douta(douta),
        .ena(ena));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1_synth
   (douta,
    clka,
    ena,
    addra);
  output [15:0]douta;
  input clka;
  input ena;
  input [14:0]addra;

  wire [14:0]addra;
  wire clka;
  wire [15:0]douta;
  wire ena;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_top \gnbram.gnativebmg.native_blk_mem_gen 
       (.addra(addra),
        .clka(clka),
        .douta(douta),
        .ena(ena));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
