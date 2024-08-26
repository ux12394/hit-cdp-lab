// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Wed Aug 28 14:31:29 2024
// Host        : LAPTOP-K550ROTT running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ add32_0_sim_netlist.v
// Design      : add32_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k70tfbv676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "add32_0,add32,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "add32,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (A,
    B,
    Cin,
    S,
    C32);
  input [32:1]A;
  input [32:1]B;
  input Cin;
  output [32:1]S;
  output C32;

  wire [32:1]A;
  wire [32:1]B;
  wire C32;
  wire C32_INST_0_i_10_n_0;
  wire C32_INST_0_i_11_n_0;
  wire C32_INST_0_i_12_n_0;
  wire C32_INST_0_i_13_n_0;
  wire C32_INST_0_i_14_n_0;
  wire C32_INST_0_i_1_n_0;
  wire C32_INST_0_i_2_n_0;
  wire C32_INST_0_i_3_n_0;
  wire C32_INST_0_i_4_n_0;
  wire C32_INST_0_i_5_n_0;
  wire C32_INST_0_i_6_n_0;
  wire C32_INST_0_i_7_n_0;
  wire C32_INST_0_i_8_n_0;
  wire C32_INST_0_i_9_n_0;
  wire Cin;
  wire [32:1]S;
  wire \S[11]_INST_0_i_1_n_0 ;
  wire \S[12]_INST_0_i_1_n_0 ;
  wire \S[12]_INST_0_i_2_n_0 ;
  wire \S[12]_INST_0_i_3_n_0 ;
  wire \S[12]_INST_0_i_4_n_0 ;
  wire \S[12]_INST_0_i_5_n_0 ;
  wire \S[15]_INST_0_i_1_n_0 ;
  wire \S[16]_INST_0_i_10_n_0 ;
  wire \S[16]_INST_0_i_11_n_0 ;
  wire \S[16]_INST_0_i_1_n_0 ;
  wire \S[16]_INST_0_i_2_n_0 ;
  wire \S[16]_INST_0_i_3_n_0 ;
  wire \S[16]_INST_0_i_4_n_0 ;
  wire \S[16]_INST_0_i_5_n_0 ;
  wire \S[16]_INST_0_i_6_n_0 ;
  wire \S[16]_INST_0_i_7_n_0 ;
  wire \S[16]_INST_0_i_8_n_0 ;
  wire \S[16]_INST_0_i_9_n_0 ;
  wire \S[19]_INST_0_i_1_n_0 ;
  wire \S[20]_INST_0_i_10_n_0 ;
  wire \S[20]_INST_0_i_1_n_0 ;
  wire \S[20]_INST_0_i_2_n_0 ;
  wire \S[20]_INST_0_i_3_n_0 ;
  wire \S[20]_INST_0_i_4_n_0 ;
  wire \S[20]_INST_0_i_5_n_0 ;
  wire \S[20]_INST_0_i_6_n_0 ;
  wire \S[20]_INST_0_i_7_n_0 ;
  wire \S[20]_INST_0_i_8_n_0 ;
  wire \S[20]_INST_0_i_9_n_0 ;
  wire \S[22]_INST_0_i_1_n_0 ;
  wire \S[22]_INST_0_i_2_n_0 ;
  wire \S[22]_INST_0_i_3_n_0 ;
  wire \S[22]_INST_0_i_4_n_0 ;
  wire \S[22]_INST_0_i_5_n_0 ;
  wire \S[22]_INST_0_i_6_n_0 ;
  wire \S[22]_INST_0_i_7_n_0 ;
  wire \S[22]_INST_0_i_8_n_0 ;
  wire \S[22]_INST_0_i_9_n_0 ;
  wire \S[23]_INST_0_i_1_n_0 ;
  wire \S[24]_INST_0_i_1_n_0 ;
  wire \S[24]_INST_0_i_2_n_0 ;
  wire \S[24]_INST_0_i_3_n_0 ;
  wire \S[24]_INST_0_i_4_n_0 ;
  wire \S[27]_INST_0_i_1_n_0 ;
  wire \S[28]_INST_0_i_1_n_0 ;
  wire \S[28]_INST_0_i_2_n_0 ;
  wire \S[28]_INST_0_i_3_n_0 ;
  wire \S[28]_INST_0_i_4_n_0 ;
  wire \S[28]_INST_0_i_5_n_0 ;
  wire \S[28]_INST_0_i_6_n_0 ;
  wire \S[31]_INST_0_i_1_n_0 ;
  wire \S[32]_INST_0_i_10_n_0 ;
  wire \S[32]_INST_0_i_11_n_0 ;
  wire \S[32]_INST_0_i_1_n_0 ;
  wire \S[32]_INST_0_i_2_n_0 ;
  wire \S[32]_INST_0_i_3_n_0 ;
  wire \S[32]_INST_0_i_4_n_0 ;
  wire \S[32]_INST_0_i_5_n_0 ;
  wire \S[32]_INST_0_i_6_n_0 ;
  wire \S[32]_INST_0_i_7_n_0 ;
  wire \S[32]_INST_0_i_8_n_0 ;
  wire \S[32]_INST_0_i_9_n_0 ;
  wire \S[3]_INST_0_i_1_n_0 ;
  wire \S[4]_INST_0_i_1_n_0 ;
  wire \S[4]_INST_0_i_2_n_0 ;
  wire \S[5]_INST_0_i_1_n_0 ;
  wire \S[7]_INST_0_i_1_n_0 ;
  wire \S[8]_INST_0_i_1_n_0 ;
  wire \S[8]_INST_0_i_2_n_0 ;
  wire \S[8]_INST_0_i_3_n_0 ;
  wire \S[9]_INST_0_i_1_n_0 ;

  LUT5 #(
    .INIT(32'hBAAAAAAA)) 
    C32_INST_0
       (.I0(C32_INST_0_i_1_n_0),
        .I1(C32_INST_0_i_2_n_0),
        .I2(C32_INST_0_i_3_n_0),
        .I3(C32_INST_0_i_4_n_0),
        .I4(\S[22]_INST_0_i_1_n_0 ),
        .O(C32));
  LUT6 #(
    .INIT(64'hAAFEAAFFAAFAAAFA)) 
    C32_INST_0_i_1
       (.I0(C32_INST_0_i_5_n_0),
        .I1(C32_INST_0_i_6_n_0),
        .I2(C32_INST_0_i_7_n_0),
        .I3(C32_INST_0_i_2_n_0),
        .I4(C32_INST_0_i_8_n_0),
        .I5(C32_INST_0_i_3_n_0),
        .O(C32_INST_0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h0660)) 
    C32_INST_0_i_10
       (.I0(B[25]),
        .I1(A[25]),
        .I2(B[26]),
        .I3(A[26]),
        .O(C32_INST_0_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h0660)) 
    C32_INST_0_i_11
       (.I0(B[22]),
        .I1(A[22]),
        .I2(B[23]),
        .I3(A[23]),
        .O(C32_INST_0_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h6000)) 
    C32_INST_0_i_12
       (.I0(B[30]),
        .I1(A[30]),
        .I2(B[29]),
        .I3(A[29]),
        .O(C32_INST_0_i_12_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    C32_INST_0_i_13
       (.I0(A[30]),
        .I1(B[30]),
        .O(C32_INST_0_i_13_n_0));
  LUT6 #(
    .INIT(64'hFFFFF880F8800000)) 
    C32_INST_0_i_14
       (.I0(A[21]),
        .I1(B[21]),
        .I2(B[22]),
        .I3(A[22]),
        .I4(B[23]),
        .I5(A[23]),
        .O(C32_INST_0_i_14_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hFFFFF99F)) 
    C32_INST_0_i_2
       (.I0(A[29]),
        .I1(B[29]),
        .I2(A[30]),
        .I3(B[30]),
        .I4(C32_INST_0_i_9_n_0),
        .O(C32_INST_0_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00282800)) 
    C32_INST_0_i_3
       (.I0(C32_INST_0_i_10_n_0),
        .I1(A[28]),
        .I2(B[28]),
        .I3(A[27]),
        .I4(B[27]),
        .O(C32_INST_0_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00282800)) 
    C32_INST_0_i_4
       (.I0(C32_INST_0_i_11_n_0),
        .I1(A[24]),
        .I2(B[24]),
        .I3(A[21]),
        .I4(B[21]),
        .O(C32_INST_0_i_4_n_0));
  LUT6 #(
    .INIT(64'hFCFCFCC0FCE8E8C0)) 
    C32_INST_0_i_5
       (.I0(C32_INST_0_i_12_n_0),
        .I1(B[32]),
        .I2(A[32]),
        .I3(B[31]),
        .I4(A[31]),
        .I5(C32_INST_0_i_13_n_0),
        .O(C32_INST_0_i_5_n_0));
  LUT6 #(
    .INIT(64'h0000000006600000)) 
    C32_INST_0_i_6
       (.I0(B[21]),
        .I1(A[21]),
        .I2(B[24]),
        .I3(A[24]),
        .I4(C32_INST_0_i_11_n_0),
        .I5(\S[22]_INST_0_i_2_n_0 ),
        .O(C32_INST_0_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFEAEA00)) 
    C32_INST_0_i_7
       (.I0(\S[28]_INST_0_i_6_n_0 ),
        .I1(B[27]),
        .I2(A[27]),
        .I3(B[28]),
        .I4(A[28]),
        .O(C32_INST_0_i_7_n_0));
  LUT3 #(
    .INIT(8'h17)) 
    C32_INST_0_i_8
       (.I0(C32_INST_0_i_14_n_0),
        .I1(A[24]),
        .I2(B[24]),
        .O(C32_INST_0_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hF99F)) 
    C32_INST_0_i_9
       (.I0(B[32]),
        .I1(A[32]),
        .I2(B[31]),
        .I3(A[31]),
        .O(C32_INST_0_i_9_n_0));
  LUT5 #(
    .INIT(32'h99969696)) 
    \S[10]_INST_0 
       (.I0(B[10]),
        .I1(A[10]),
        .I2(\S[12]_INST_0_i_1_n_0 ),
        .I3(A[9]),
        .I4(B[9]),
        .O(S[10]));
  LUT6 #(
    .INIT(64'h5656566A566A566A)) 
    \S[11]_INST_0 
       (.I0(\S[11]_INST_0_i_1_n_0 ),
        .I1(A[10]),
        .I2(B[10]),
        .I3(\S[12]_INST_0_i_1_n_0 ),
        .I4(A[9]),
        .I5(B[9]),
        .O(S[11]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \S[11]_INST_0_i_1 
       (.I0(A[11]),
        .I1(B[11]),
        .O(\S[11]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h711777778EE88888)) 
    \S[12]_INST_0 
       (.I0(A[11]),
        .I1(B[11]),
        .I2(A[10]),
        .I3(B[10]),
        .I4(\S[12]_INST_0_i_1_n_0 ),
        .I5(\S[12]_INST_0_i_2_n_0 ),
        .O(S[12]));
  LUT6 #(
    .INIT(64'h0000006066666666)) 
    \S[12]_INST_0_i_1 
       (.I0(B[9]),
        .I1(A[9]),
        .I2(\S[12]_INST_0_i_3_n_0 ),
        .I3(\S[5]_INST_0_i_1_n_0 ),
        .I4(\S[12]_INST_0_i_4_n_0 ),
        .I5(\S[16]_INST_0_i_6_n_0 ),
        .O(\S[12]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9996969696969696)) 
    \S[12]_INST_0_i_2 
       (.I0(B[12]),
        .I1(A[12]),
        .I2(\S[12]_INST_0_i_5_n_0 ),
        .I3(\S[11]_INST_0_i_1_n_0 ),
        .I4(B[10]),
        .I5(A[10]),
        .O(\S[12]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000066006600000)) 
    \S[12]_INST_0_i_3 
       (.I0(B[6]),
        .I1(A[6]),
        .I2(A[7]),
        .I3(B[7]),
        .I4(A[8]),
        .I5(B[8]),
        .O(\S[12]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \S[12]_INST_0_i_4 
       (.I0(B[5]),
        .I1(A[5]),
        .O(\S[12]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0660000000000000)) 
    \S[12]_INST_0_i_5 
       (.I0(A[11]),
        .I1(B[11]),
        .I2(A[10]),
        .I3(B[10]),
        .I4(B[9]),
        .I5(A[9]),
        .O(\S[12]_INST_0_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \S[13]_INST_0 
       (.I0(B[13]),
        .I1(A[13]),
        .I2(\S[16]_INST_0_i_3_n_0 ),
        .O(S[13]));
  LUT5 #(
    .INIT(32'h99696966)) 
    \S[14]_INST_0 
       (.I0(B[14]),
        .I1(A[14]),
        .I2(\S[16]_INST_0_i_3_n_0 ),
        .I3(B[13]),
        .I4(A[13]),
        .O(S[14]));
  LUT6 #(
    .INIT(64'h002B2BFFFFD4D400)) 
    \S[15]_INST_0 
       (.I0(\S[16]_INST_0_i_3_n_0 ),
        .I1(B[13]),
        .I2(A[13]),
        .I3(B[14]),
        .I4(A[14]),
        .I5(\S[15]_INST_0_i_1_n_0 ),
        .O(S[15]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \S[15]_INST_0_i_1 
       (.I0(A[15]),
        .I1(B[15]),
        .O(\S[15]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hC0C0E8C03F3F173F)) 
    \S[16]_INST_0 
       (.I0(\S[16]_INST_0_i_1_n_0 ),
        .I1(A[15]),
        .I2(B[15]),
        .I3(\S[16]_INST_0_i_2_n_0 ),
        .I4(\S[16]_INST_0_i_3_n_0 ),
        .I5(\S[16]_INST_0_i_4_n_0 ),
        .O(S[16]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \S[16]_INST_0_i_1 
       (.I0(A[14]),
        .I1(B[14]),
        .O(\S[16]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6660600060006000)) 
    \S[16]_INST_0_i_10 
       (.I0(B[8]),
        .I1(A[8]),
        .I2(B[7]),
        .I3(A[7]),
        .I4(B[6]),
        .I5(A[6]),
        .O(\S[16]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000077F077FFFFF)) 
    \S[16]_INST_0_i_11 
       (.I0(A[9]),
        .I1(B[9]),
        .I2(B[10]),
        .I3(A[10]),
        .I4(B[11]),
        .I5(A[11]),
        .O(\S[16]_INST_0_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \S[16]_INST_0_i_2 
       (.I0(A[13]),
        .I1(B[13]),
        .O(\S[16]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEEE0EE0000000000)) 
    \S[16]_INST_0_i_3 
       (.I0(\S[16]_INST_0_i_5_n_0 ),
        .I1(\S[16]_INST_0_i_6_n_0 ),
        .I2(\S[20]_INST_0_i_6_n_0 ),
        .I3(\S[20]_INST_0_i_7_n_0 ),
        .I4(\S[20]_INST_0_i_5_n_0 ),
        .I5(\S[16]_INST_0_i_7_n_0 ),
        .O(\S[16]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \S[16]_INST_0_i_4 
       (.I0(\S[16]_INST_0_i_8_n_0 ),
        .I1(B[16]),
        .I2(A[16]),
        .O(\S[16]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hF99FFFFF)) 
    \S[16]_INST_0_i_5 
       (.I0(A[12]),
        .I1(B[12]),
        .I2(A[9]),
        .I3(B[9]),
        .I4(\S[16]_INST_0_i_9_n_0 ),
        .O(\S[16]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000000007F7F7F)) 
    \S[16]_INST_0_i_6 
       (.I0(\S[12]_INST_0_i_3_n_0 ),
        .I1(B[5]),
        .I2(A[5]),
        .I3(A[8]),
        .I4(B[8]),
        .I5(\S[16]_INST_0_i_10_n_0 ),
        .O(\S[16]_INST_0_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h2B)) 
    \S[16]_INST_0_i_7 
       (.I0(\S[16]_INST_0_i_11_n_0 ),
        .I1(A[12]),
        .I2(B[12]),
        .O(\S[16]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF17771777FFFF)) 
    \S[16]_INST_0_i_8 
       (.I0(A[14]),
        .I1(B[14]),
        .I2(B[13]),
        .I3(A[13]),
        .I4(B[15]),
        .I5(A[15]),
        .O(\S[16]_INST_0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h0660)) 
    \S[16]_INST_0_i_9 
       (.I0(B[10]),
        .I1(A[10]),
        .I2(B[11]),
        .I3(A[11]),
        .O(\S[16]_INST_0_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \S[17]_INST_0 
       (.I0(\S[20]_INST_0_i_3_n_0 ),
        .I1(B[17]),
        .I2(A[17]),
        .O(S[17]));
  LUT5 #(
    .INIT(32'h99969666)) 
    \S[18]_INST_0 
       (.I0(B[18]),
        .I1(A[18]),
        .I2(\S[20]_INST_0_i_3_n_0 ),
        .I3(B[17]),
        .I4(A[17]),
        .O(S[18]));
  LUT6 #(
    .INIT(64'h5656566A566A6A6A)) 
    \S[19]_INST_0 
       (.I0(\S[19]_INST_0_i_1_n_0 ),
        .I1(A[18]),
        .I2(B[18]),
        .I3(\S[20]_INST_0_i_3_n_0 ),
        .I4(B[17]),
        .I5(A[17]),
        .O(S[19]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \S[19]_INST_0_i_1 
       (.I0(A[19]),
        .I1(B[19]),
        .O(\S[19]_INST_0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \S[1]_INST_0 
       (.I0(Cin),
        .I1(B[1]),
        .I2(A[1]),
        .O(S[1]));
  LUT6 #(
    .INIT(64'h17777777E8888888)) 
    \S[20]_INST_0 
       (.I0(A[19]),
        .I1(B[19]),
        .I2(\S[20]_INST_0_i_1_n_0 ),
        .I3(\S[20]_INST_0_i_2_n_0 ),
        .I4(\S[20]_INST_0_i_3_n_0 ),
        .I5(\S[20]_INST_0_i_4_n_0 ),
        .O(S[20]));
  LUT2 #(
    .INIT(4'h6)) 
    \S[20]_INST_0_i_1 
       (.I0(A[18]),
        .I1(B[18]),
        .O(\S[20]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h6000)) 
    \S[20]_INST_0_i_10 
       (.I0(B[2]),
        .I1(A[2]),
        .I2(B[1]),
        .I3(A[1]),
        .O(\S[20]_INST_0_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \S[20]_INST_0_i_2 
       (.I0(A[17]),
        .I1(B[17]),
        .O(\S[20]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCFCFDFFFCFCFCFCF)) 
    \S[20]_INST_0_i_3 
       (.I0(\S[20]_INST_0_i_5_n_0 ),
        .I1(\S[32]_INST_0_i_6_n_0 ),
        .I2(\S[22]_INST_0_i_5_n_0 ),
        .I3(\S[20]_INST_0_i_6_n_0 ),
        .I4(\S[20]_INST_0_i_7_n_0 ),
        .I5(\S[22]_INST_0_i_3_n_0 ),
        .O(\S[20]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9666666696969666)) 
    \S[20]_INST_0_i_4 
       (.I0(B[20]),
        .I1(A[20]),
        .I2(\S[19]_INST_0_i_1_n_0 ),
        .I3(A[18]),
        .I4(B[18]),
        .I5(\S[22]_INST_0_i_7_n_0 ),
        .O(\S[20]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFBBFFBBFFFFF)) 
    \S[20]_INST_0_i_5 
       (.I0(\S[20]_INST_0_i_8_n_0 ),
        .I1(\S[3]_INST_0_i_1_n_0 ),
        .I2(B[2]),
        .I3(A[2]),
        .I4(B[4]),
        .I5(A[4]),
        .O(\S[20]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h000F011F011F055F)) 
    \S[20]_INST_0_i_6 
       (.I0(\S[20]_INST_0_i_9_n_0 ),
        .I1(\S[20]_INST_0_i_10_n_0 ),
        .I2(A[4]),
        .I3(B[4]),
        .I4(A[3]),
        .I5(B[3]),
        .O(\S[20]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFBBF)) 
    \S[20]_INST_0_i_7 
       (.I0(\S[16]_INST_0_i_5_n_0 ),
        .I1(\S[12]_INST_0_i_3_n_0 ),
        .I2(B[5]),
        .I3(A[5]),
        .O(\S[20]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hD7)) 
    \S[20]_INST_0_i_8 
       (.I0(Cin),
        .I1(B[1]),
        .I2(A[1]),
        .O(\S[20]_INST_0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h6000)) 
    \S[20]_INST_0_i_9 
       (.I0(B[3]),
        .I1(A[3]),
        .I2(B[2]),
        .I3(A[2]),
        .O(\S[20]_INST_0_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h9969)) 
    \S[21]_INST_0 
       (.I0(A[21]),
        .I1(B[21]),
        .I2(\S[22]_INST_0_i_2_n_0 ),
        .I3(\S[22]_INST_0_i_1_n_0 ),
        .O(S[21]));
  LUT6 #(
    .INIT(64'h9996966699969996)) 
    \S[22]_INST_0 
       (.I0(B[22]),
        .I1(A[22]),
        .I2(B[21]),
        .I3(A[21]),
        .I4(\S[22]_INST_0_i_1_n_0 ),
        .I5(\S[22]_INST_0_i_2_n_0 ),
        .O(S[22]));
  LUT6 #(
    .INIT(64'h00000000FF2FFFAF)) 
    \S[22]_INST_0_i_1 
       (.I0(\S[22]_INST_0_i_3_n_0 ),
        .I1(\S[22]_INST_0_i_4_n_0 ),
        .I2(\S[22]_INST_0_i_5_n_0 ),
        .I3(\S[32]_INST_0_i_6_n_0 ),
        .I4(\S[22]_INST_0_i_6_n_0 ),
        .I5(\S[32]_INST_0_i_8_n_0 ),
        .O(\S[22]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000077771777)) 
    \S[22]_INST_0_i_2 
       (.I0(B[20]),
        .I1(A[20]),
        .I2(\S[19]_INST_0_i_1_n_0 ),
        .I3(\S[20]_INST_0_i_1_n_0 ),
        .I4(\S[22]_INST_0_i_7_n_0 ),
        .I5(\S[22]_INST_0_i_8_n_0 ),
        .O(\S[22]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h00000660)) 
    \S[22]_INST_0_i_3 
       (.I0(A[16]),
        .I1(B[16]),
        .I2(A[15]),
        .I3(B[15]),
        .I4(\S[22]_INST_0_i_9_n_0 ),
        .O(\S[22]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hFFFFEBFF)) 
    \S[22]_INST_0_i_4 
       (.I0(\S[20]_INST_0_i_6_n_0 ),
        .I1(A[5]),
        .I2(B[5]),
        .I3(\S[12]_INST_0_i_3_n_0 ),
        .I4(\S[16]_INST_0_i_5_n_0 ),
        .O(\S[22]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h077F000F)) 
    \S[22]_INST_0_i_5 
       (.I0(B[15]),
        .I1(A[15]),
        .I2(B[16]),
        .I3(A[16]),
        .I4(\S[16]_INST_0_i_8_n_0 ),
        .O(\S[22]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hFFFFFF9F)) 
    \S[22]_INST_0_i_6 
       (.I0(A[5]),
        .I1(B[5]),
        .I2(\S[12]_INST_0_i_3_n_0 ),
        .I3(\S[16]_INST_0_i_5_n_0 ),
        .I4(\S[20]_INST_0_i_5_n_0 ),
        .O(\S[22]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \S[22]_INST_0_i_7 
       (.I0(A[17]),
        .I1(B[17]),
        .O(\S[22]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h6660600060006000)) 
    \S[22]_INST_0_i_8 
       (.I0(B[20]),
        .I1(A[20]),
        .I2(B[19]),
        .I3(A[19]),
        .I4(B[18]),
        .I5(A[18]),
        .O(\S[22]_INST_0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hF99F)) 
    \S[22]_INST_0_i_9 
       (.I0(B[14]),
        .I1(A[14]),
        .I2(B[13]),
        .I3(A[13]),
        .O(\S[22]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h5656566A566A566A)) 
    \S[23]_INST_0 
       (.I0(\S[23]_INST_0_i_1_n_0 ),
        .I1(A[22]),
        .I2(B[22]),
        .I3(\S[24]_INST_0_i_1_n_0 ),
        .I4(A[21]),
        .I5(B[21]),
        .O(S[23]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \S[23]_INST_0_i_1 
       (.I0(A[23]),
        .I1(B[23]),
        .O(\S[23]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h711777778EE88888)) 
    \S[24]_INST_0 
       (.I0(A[23]),
        .I1(B[23]),
        .I2(A[22]),
        .I3(B[22]),
        .I4(\S[24]_INST_0_i_1_n_0 ),
        .I5(\S[24]_INST_0_i_2_n_0 ),
        .O(S[24]));
  LUT6 #(
    .INIT(64'h0000AAA2AAAAAAAA)) 
    \S[24]_INST_0_i_1 
       (.I0(\S[24]_INST_0_i_3_n_0 ),
        .I1(\S[32]_INST_0_i_5_n_0 ),
        .I2(\S[32]_INST_0_i_6_n_0 ),
        .I3(\S[32]_INST_0_i_7_n_0 ),
        .I4(\S[32]_INST_0_i_8_n_0 ),
        .I5(\S[22]_INST_0_i_2_n_0 ),
        .O(\S[24]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9996969696969696)) 
    \S[24]_INST_0_i_2 
       (.I0(B[24]),
        .I1(A[24]),
        .I2(\S[24]_INST_0_i_4_n_0 ),
        .I3(\S[23]_INST_0_i_1_n_0 ),
        .I4(B[22]),
        .I5(A[22]),
        .O(\S[24]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \S[24]_INST_0_i_3 
       (.I0(A[21]),
        .I1(B[21]),
        .O(\S[24]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0660000000000000)) 
    \S[24]_INST_0_i_4 
       (.I0(A[23]),
        .I1(B[23]),
        .I2(A[22]),
        .I3(B[22]),
        .I4(B[21]),
        .I5(A[21]),
        .O(\S[24]_INST_0_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \S[25]_INST_0 
       (.I0(A[25]),
        .I1(B[25]),
        .I2(\S[28]_INST_0_i_1_n_0 ),
        .O(S[25]));
  LUT5 #(
    .INIT(32'h96669996)) 
    \S[26]_INST_0 
       (.I0(B[26]),
        .I1(A[26]),
        .I2(B[25]),
        .I3(A[25]),
        .I4(\S[28]_INST_0_i_1_n_0 ),
        .O(S[26]));
  LUT6 #(
    .INIT(64'h002B2BFFFFD4D400)) 
    \S[27]_INST_0 
       (.I0(\S[28]_INST_0_i_1_n_0 ),
        .I1(B[25]),
        .I2(A[25]),
        .I3(B[26]),
        .I4(A[26]),
        .I5(\S[27]_INST_0_i_1_n_0 ),
        .O(S[27]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \S[27]_INST_0_i_1 
       (.I0(A[27]),
        .I1(B[27]),
        .O(\S[27]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0BBF0FFFF440F000)) 
    \S[28]_INST_0 
       (.I0(\S[28]_INST_0_i_1_n_0 ),
        .I1(\S[28]_INST_0_i_2_n_0 ),
        .I2(A[27]),
        .I3(B[27]),
        .I4(\S[28]_INST_0_i_3_n_0 ),
        .I5(\S[28]_INST_0_i_4_n_0 ),
        .O(S[28]));
  LUT6 #(
    .INIT(64'hAAAA0008AAAAAAAA)) 
    \S[28]_INST_0_i_1 
       (.I0(\S[28]_INST_0_i_5_n_0 ),
        .I1(\S[32]_INST_0_i_5_n_0 ),
        .I2(\S[32]_INST_0_i_6_n_0 ),
        .I3(\S[32]_INST_0_i_7_n_0 ),
        .I4(\S[32]_INST_0_i_8_n_0 ),
        .I5(C32_INST_0_i_4_n_0),
        .O(\S[28]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \S[28]_INST_0_i_2 
       (.I0(A[25]),
        .I1(B[25]),
        .O(\S[28]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \S[28]_INST_0_i_3 
       (.I0(A[26]),
        .I1(B[26]),
        .O(\S[28]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \S[28]_INST_0_i_4 
       (.I0(B[28]),
        .I1(A[28]),
        .I2(\S[28]_INST_0_i_6_n_0 ),
        .O(\S[28]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \S[28]_INST_0_i_5 
       (.I0(C32_INST_0_i_8_n_0),
        .I1(\S[22]_INST_0_i_2_n_0 ),
        .I2(C32_INST_0_i_4_n_0),
        .O(\S[28]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h6666600060000000)) 
    \S[28]_INST_0_i_6 
       (.I0(B[27]),
        .I1(A[27]),
        .I2(B[25]),
        .I3(A[25]),
        .I4(B[26]),
        .I5(A[26]),
        .O(\S[28]_INST_0_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \S[29]_INST_0 
       (.I0(\S[32]_INST_0_i_3_n_0 ),
        .I1(B[29]),
        .I2(A[29]),
        .O(S[29]));
  LUT5 #(
    .INIT(32'h99969666)) 
    \S[2]_INST_0 
       (.I0(B[2]),
        .I1(A[2]),
        .I2(Cin),
        .I3(B[1]),
        .I4(A[1]),
        .O(S[2]));
  LUT5 #(
    .INIT(32'h99969666)) 
    \S[30]_INST_0 
       (.I0(B[30]),
        .I1(A[30]),
        .I2(A[29]),
        .I3(B[29]),
        .I4(\S[32]_INST_0_i_3_n_0 ),
        .O(S[30]));
  LUT6 #(
    .INIT(64'h011F077FFEE0F880)) 
    \S[31]_INST_0 
       (.I0(A[29]),
        .I1(B[29]),
        .I2(A[30]),
        .I3(B[30]),
        .I4(\S[32]_INST_0_i_3_n_0 ),
        .I5(\S[31]_INST_0_i_1_n_0 ),
        .O(S[31]));
  LUT2 #(
    .INIT(4'h6)) 
    \S[31]_INST_0_i_1 
       (.I0(A[31]),
        .I1(B[31]),
        .O(\S[31]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h565656566A566A6A)) 
    \S[32]_INST_0 
       (.I0(\S[32]_INST_0_i_1_n_0 ),
        .I1(B[31]),
        .I2(A[31]),
        .I3(\S[32]_INST_0_i_2_n_0 ),
        .I4(\S[32]_INST_0_i_3_n_0 ),
        .I5(\S[32]_INST_0_i_4_n_0 ),
        .O(S[32]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \S[32]_INST_0_i_1 
       (.I0(A[32]),
        .I1(B[32]),
        .O(\S[32]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFF7500)) 
    \S[32]_INST_0_i_10 
       (.I0(C32_INST_0_i_8_n_0),
        .I1(\S[22]_INST_0_i_2_n_0 ),
        .I2(C32_INST_0_i_4_n_0),
        .I3(C32_INST_0_i_3_n_0),
        .I4(C32_INST_0_i_7_n_0),
        .O(\S[32]_INST_0_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hF99F)) 
    \S[32]_INST_0_i_11 
       (.I0(B[20]),
        .I1(A[20]),
        .I2(B[19]),
        .I3(A[19]),
        .O(\S[32]_INST_0_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hF99F)) 
    \S[32]_INST_0_i_2 
       (.I0(B[30]),
        .I1(A[30]),
        .I2(B[29]),
        .I3(A[29]),
        .O(\S[32]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00FD0000)) 
    \S[32]_INST_0_i_3 
       (.I0(\S[32]_INST_0_i_5_n_0 ),
        .I1(\S[32]_INST_0_i_6_n_0 ),
        .I2(\S[32]_INST_0_i_7_n_0 ),
        .I3(\S[32]_INST_0_i_8_n_0 ),
        .I4(\S[32]_INST_0_i_9_n_0 ),
        .I5(\S[32]_INST_0_i_10_n_0 ),
        .O(\S[32]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hF880)) 
    \S[32]_INST_0_i_4 
       (.I0(A[29]),
        .I1(B[29]),
        .I2(A[30]),
        .I3(B[30]),
        .O(\S[32]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA8AAAAAAAAAA)) 
    \S[32]_INST_0_i_5 
       (.I0(\S[22]_INST_0_i_5_n_0 ),
        .I1(\S[20]_INST_0_i_6_n_0 ),
        .I2(\S[12]_INST_0_i_4_n_0 ),
        .I3(\S[12]_INST_0_i_3_n_0 ),
        .I4(\S[16]_INST_0_i_5_n_0 ),
        .I5(\S[22]_INST_0_i_3_n_0 ),
        .O(\S[32]_INST_0_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h1F00)) 
    \S[32]_INST_0_i_6 
       (.I0(\S[16]_INST_0_i_6_n_0 ),
        .I1(\S[16]_INST_0_i_5_n_0 ),
        .I2(\S[16]_INST_0_i_7_n_0 ),
        .I3(\S[22]_INST_0_i_3_n_0 ),
        .O(\S[32]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000020002000000)) 
    \S[32]_INST_0_i_7 
       (.I0(\S[22]_INST_0_i_3_n_0 ),
        .I1(\S[20]_INST_0_i_5_n_0 ),
        .I2(\S[16]_INST_0_i_5_n_0 ),
        .I3(\S[12]_INST_0_i_3_n_0 ),
        .I4(B[5]),
        .I5(A[5]),
        .O(\S[32]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFFEBEBFF)) 
    \S[32]_INST_0_i_8 
       (.I0(\S[32]_INST_0_i_11_n_0 ),
        .I1(A[17]),
        .I2(B[17]),
        .I3(A[18]),
        .I4(B[18]),
        .O(\S[32]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0660000000000000)) 
    \S[32]_INST_0_i_9 
       (.I0(B[21]),
        .I1(A[21]),
        .I2(B[24]),
        .I3(A[24]),
        .I4(C32_INST_0_i_11_n_0),
        .I5(C32_INST_0_i_3_n_0),
        .O(\S[32]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0317173FFCE8E8C0)) 
    \S[3]_INST_0 
       (.I0(Cin),
        .I1(B[2]),
        .I2(A[2]),
        .I3(B[1]),
        .I4(A[1]),
        .I5(\S[3]_INST_0_i_1_n_0 ),
        .O(S[3]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \S[3]_INST_0_i_1 
       (.I0(A[3]),
        .I1(B[3]),
        .O(\S[3]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9996969699999999)) 
    \S[4]_INST_0 
       (.I0(B[4]),
        .I1(A[4]),
        .I2(\S[4]_INST_0_i_1_n_0 ),
        .I3(B[3]),
        .I4(A[3]),
        .I5(\S[4]_INST_0_i_2_n_0 ),
        .O(S[4]));
  LUT6 #(
    .INIT(64'h0000E888E8880000)) 
    \S[4]_INST_0_i_1 
       (.I0(B[2]),
        .I1(A[2]),
        .I2(B[1]),
        .I3(A[1]),
        .I4(A[3]),
        .I5(B[3]),
        .O(\S[4]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF9F9FFFFFFFFFFF)) 
    \S[4]_INST_0_i_2 
       (.I0(A[2]),
        .I1(B[2]),
        .I2(\S[3]_INST_0_i_1_n_0 ),
        .I3(A[1]),
        .I4(B[1]),
        .I5(Cin),
        .O(\S[4]_INST_0_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \S[5]_INST_0 
       (.I0(A[5]),
        .I1(B[5]),
        .I2(\S[5]_INST_0_i_1_n_0 ),
        .O(S[5]));
  LUT4 #(
    .INIT(16'hAA82)) 
    \S[5]_INST_0_i_1 
       (.I0(\S[20]_INST_0_i_6_n_0 ),
        .I1(A[4]),
        .I2(B[4]),
        .I3(\S[4]_INST_0_i_2_n_0 ),
        .O(\S[5]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h99696969)) 
    \S[6]_INST_0 
       (.I0(B[6]),
        .I1(A[6]),
        .I2(\S[8]_INST_0_i_1_n_0 ),
        .I3(A[5]),
        .I4(B[5]),
        .O(S[6]));
  LUT6 #(
    .INIT(64'h9666999699969996)) 
    \S[7]_INST_0 
       (.I0(B[7]),
        .I1(A[7]),
        .I2(A[6]),
        .I3(B[6]),
        .I4(\S[8]_INST_0_i_1_n_0 ),
        .I5(\S[7]_INST_0_i_1_n_0 ),
        .O(S[7]));
  LUT2 #(
    .INIT(4'h7)) 
    \S[7]_INST_0_i_1 
       (.I0(A[5]),
        .I1(B[5]),
        .O(\S[7]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3F2B2B3FC0D4D4C0)) 
    \S[8]_INST_0 
       (.I0(\S[8]_INST_0_i_1_n_0 ),
        .I1(A[7]),
        .I2(B[7]),
        .I3(A[6]),
        .I4(B[6]),
        .I5(\S[8]_INST_0_i_2_n_0 ),
        .O(S[8]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hF9)) 
    \S[8]_INST_0_i_1 
       (.I0(A[5]),
        .I1(B[5]),
        .I2(\S[5]_INST_0_i_1_n_0 ),
        .O(\S[8]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9666666696969666)) 
    \S[8]_INST_0_i_2 
       (.I0(B[8]),
        .I1(A[8]),
        .I2(\S[8]_INST_0_i_3_n_0 ),
        .I3(A[6]),
        .I4(B[6]),
        .I5(\S[7]_INST_0_i_1_n_0 ),
        .O(\S[8]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \S[8]_INST_0_i_3 
       (.I0(A[7]),
        .I1(B[7]),
        .O(\S[8]_INST_0_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \S[9]_INST_0 
       (.I0(A[9]),
        .I1(B[9]),
        .I2(\S[9]_INST_0_i_1_n_0 ),
        .O(S[9]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hAA82AAAA)) 
    \S[9]_INST_0_i_1 
       (.I0(\S[16]_INST_0_i_6_n_0 ),
        .I1(A[5]),
        .I2(B[5]),
        .I3(\S[5]_INST_0_i_1_n_0 ),
        .I4(\S[12]_INST_0_i_3_n_0 ),
        .O(\S[9]_INST_0_i_1_n_0 ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
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
    reg GRESTORE_int;

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
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
