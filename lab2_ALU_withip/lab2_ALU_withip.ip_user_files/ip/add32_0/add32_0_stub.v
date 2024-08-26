// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Wed Aug 28 14:31:29 2024
// Host        : LAPTOP-K550ROTT running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               e:/COLLEGE/homework/hit-cdp-lab/lab2_ALU_withip/lab2_ALU_withip.gen/sources_1/ip/add32_0/add32_0_stub.v
// Design      : add32_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7k70tfbv676-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "add32,Vivado 2024.1" *)
module add32_0(A, B, Cin, S, C32)
/* synthesis syn_black_box black_box_pad_pin="A[32:1],B[32:1],Cin,S[32:1],C32" */;
  input [32:1]A;
  input [32:1]B;
  input Cin;
  output [32:1]S;
  output C32;
endmodule
