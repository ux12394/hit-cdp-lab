-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Fri Aug 30 20:36:22 2024
-- Host        : que running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top regfile_0 -prefix
--               regfile_0_ regfile_0_stub.vhdl
-- Design      : regfile_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a200tfbg676-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity regfile_0 is
  Port ( 
    clk : in STD_LOGIC;
    raddr1 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    raddr2 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    we : in STD_LOGIC;
    waddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    rdata1 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    rdata2 : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end regfile_0;

architecture stub of regfile_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,raddr1[4:0],raddr2[4:0],we,waddr[4:0],wdata[31:0],rdata1[31:0],rdata2[31:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "regfile,Vivado 2019.2";
begin
end;
