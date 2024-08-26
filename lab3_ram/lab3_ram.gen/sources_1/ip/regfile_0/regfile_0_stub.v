// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Sun Sep  1 14:25:54 2024
// Host        : LAPTOP-K550ROTT running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               e:/COLLEGE/homework/hit-cdp-lab/lab3_ram/lab3_ram.gen/sources_1/ip/regfile_0/regfile_0_stub.v
// Design      : regfile_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7k70tfbv676-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "regfile,Vivado 2024.1" *)
module regfile_0(clk, raddr1, rdata1, raddr2, rdata2, we, waddr, wdata)
/* synthesis syn_black_box black_box_pad_pin="raddr1[4:0],rdata1[31:0],raddr2[4:0],rdata2[31:0],we,waddr[4:0],wdata[31:0]" */
/* synthesis syn_force_seq_prim="clk" */;
  input clk /* synthesis syn_isclock = 1 */;
  input [4:0]raddr1;
  output [31:0]rdata1;
  input [4:0]raddr2;
  output [31:0]rdata2;
  input we;
  input [4:0]waddr;
  input [31:0]wdata;
endmodule
