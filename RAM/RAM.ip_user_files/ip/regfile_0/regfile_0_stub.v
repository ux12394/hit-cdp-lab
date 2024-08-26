// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Fri Aug 30 20:36:22 2024
// Host        : que running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top regfile_0 -prefix
//               regfile_0_ regfile_0_stub.v
// Design      : regfile_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a200tfbg676-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "regfile,Vivado 2019.2" *)
module regfile_0(clk, raddr1, raddr2, we, waddr, wdata, rdata1, rdata2)
/* synthesis syn_black_box black_box_pad_pin="clk,raddr1[4:0],raddr2[4:0],we,waddr[4:0],wdata[31:0],rdata1[31:0],rdata2[31:0]" */;
  input clk;
  input [4:0]raddr1;
  input [4:0]raddr2;
  input we;
  input [4:0]waddr;
  input [31:0]wdata;
  output [31:0]rdata1;
  output [31:0]rdata2;
endmodule
