-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Wed Aug 28 14:31:29 2024
-- Host        : LAPTOP-K550ROTT running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               e:/COLLEGE/homework/hit-cdp-lab/lab2_ALU_withip/lab2_ALU_withip.gen/sources_1/ip/add32_0/add32_0_stub.vhdl
-- Design      : add32_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7k70tfbv676-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity add32_0 is
  Port ( 
    A : in STD_LOGIC_VECTOR ( 32 downto 1 );
    B : in STD_LOGIC_VECTOR ( 32 downto 1 );
    Cin : in STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 32 downto 1 );
    C32 : out STD_LOGIC
  );

end add32_0;

architecture stub of add32_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "A[32:1],B[32:1],Cin,S[32:1],C32";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "add32,Vivado 2024.1";
begin
end;
