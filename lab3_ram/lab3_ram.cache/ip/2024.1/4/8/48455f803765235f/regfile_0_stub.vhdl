-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Sun Sep  1 14:25:54 2024
-- Host        : LAPTOP-K550ROTT running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ regfile_0_stub.vhdl
-- Design      : regfile_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7k70tfbv676-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    clk : in STD_LOGIC;
    raddr1 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    rdata1 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    raddr2 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    rdata2 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    we : in STD_LOGIC;
    waddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    wdata : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,raddr1[4:0],rdata1[31:0],raddr2[4:0],rdata2[31:0],we,waddr[4:0],wdata[31:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "regfile,Vivado 2024.1";
begin
end;
