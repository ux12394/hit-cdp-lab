-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Wed Aug 28 14:31:29 2024
-- Host        : LAPTOP-K550ROTT running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               e:/COLLEGE/homework/hit-cdp-lab/lab2_ALU_withip/lab2_ALU_withip.gen/sources_1/ip/add32_0/add32_0_sim_netlist.vhdl
-- Design      : add32_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7k70tfbv676-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity add32_0 is
  port (
    A : in STD_LOGIC_VECTOR ( 32 downto 1 );
    B : in STD_LOGIC_VECTOR ( 32 downto 1 );
    Cin : in STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 32 downto 1 );
    C32 : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of add32_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of add32_0 : entity is "add32_0,add32,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of add32_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of add32_0 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of add32_0 : entity is "add32,Vivado 2024.1";
end add32_0;

architecture STRUCTURE of add32_0 is
  signal C32_INST_0_i_10_n_0 : STD_LOGIC;
  signal C32_INST_0_i_11_n_0 : STD_LOGIC;
  signal C32_INST_0_i_12_n_0 : STD_LOGIC;
  signal C32_INST_0_i_13_n_0 : STD_LOGIC;
  signal C32_INST_0_i_14_n_0 : STD_LOGIC;
  signal C32_INST_0_i_1_n_0 : STD_LOGIC;
  signal C32_INST_0_i_2_n_0 : STD_LOGIC;
  signal C32_INST_0_i_3_n_0 : STD_LOGIC;
  signal C32_INST_0_i_4_n_0 : STD_LOGIC;
  signal C32_INST_0_i_5_n_0 : STD_LOGIC;
  signal C32_INST_0_i_6_n_0 : STD_LOGIC;
  signal C32_INST_0_i_7_n_0 : STD_LOGIC;
  signal C32_INST_0_i_8_n_0 : STD_LOGIC;
  signal C32_INST_0_i_9_n_0 : STD_LOGIC;
  signal \S[11]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \S[12]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \S[12]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \S[12]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \S[12]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \S[12]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \S[15]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \S[16]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \S[16]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \S[16]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \S[16]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \S[16]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \S[16]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \S[16]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \S[16]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \S[16]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \S[16]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \S[16]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \S[19]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \S[20]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \S[20]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \S[20]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \S[20]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \S[20]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \S[20]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \S[20]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \S[20]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \S[20]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \S[20]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \S[22]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \S[22]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \S[22]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \S[22]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \S[22]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \S[22]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \S[22]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \S[22]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \S[22]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \S[23]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \S[24]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \S[24]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \S[24]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \S[24]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \S[27]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \S[28]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \S[28]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \S[28]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \S[28]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \S[28]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \S[28]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \S[31]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \S[32]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \S[32]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \S[32]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \S[32]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \S[32]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \S[32]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \S[32]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \S[32]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \S[32]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \S[32]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \S[32]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \S[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \S[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \S[4]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \S[5]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \S[7]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \S[8]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \S[8]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \S[8]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \S[9]_INST_0_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of C32_INST_0_i_10 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of C32_INST_0_i_11 : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of C32_INST_0_i_12 : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of C32_INST_0_i_2 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of C32_INST_0_i_3 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of C32_INST_0_i_4 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of C32_INST_0_i_7 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of C32_INST_0_i_9 : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \S[11]_INST_0_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \S[12]_INST_0_i_4\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \S[15]_INST_0_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \S[16]_INST_0_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \S[16]_INST_0_i_4\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \S[16]_INST_0_i_9\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \S[19]_INST_0_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \S[20]_INST_0_i_10\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \S[20]_INST_0_i_7\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \S[20]_INST_0_i_8\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \S[20]_INST_0_i_9\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \S[22]_INST_0_i_3\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \S[22]_INST_0_i_4\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \S[22]_INST_0_i_5\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \S[22]_INST_0_i_6\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \S[22]_INST_0_i_7\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \S[22]_INST_0_i_9\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \S[23]_INST_0_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \S[24]_INST_0_i_3\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \S[27]_INST_0_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \S[28]_INST_0_i_2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \S[28]_INST_0_i_4\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \S[28]_INST_0_i_5\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \S[32]_INST_0_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \S[32]_INST_0_i_10\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \S[32]_INST_0_i_11\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \S[32]_INST_0_i_2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \S[32]_INST_0_i_4\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \S[32]_INST_0_i_8\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \S[3]_INST_0_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \S[8]_INST_0_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \S[9]_INST_0_i_1\ : label is "soft_lutpair9";
begin
C32_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAAAAAAA"
    )
        port map (
      I0 => C32_INST_0_i_1_n_0,
      I1 => C32_INST_0_i_2_n_0,
      I2 => C32_INST_0_i_3_n_0,
      I3 => C32_INST_0_i_4_n_0,
      I4 => \S[22]_INST_0_i_1_n_0\,
      O => C32
    );
C32_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFEAAFFAAFAAAFA"
    )
        port map (
      I0 => C32_INST_0_i_5_n_0,
      I1 => C32_INST_0_i_6_n_0,
      I2 => C32_INST_0_i_7_n_0,
      I3 => C32_INST_0_i_2_n_0,
      I4 => C32_INST_0_i_8_n_0,
      I5 => C32_INST_0_i_3_n_0,
      O => C32_INST_0_i_1_n_0
    );
C32_INST_0_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0660"
    )
        port map (
      I0 => B(25),
      I1 => A(25),
      I2 => B(26),
      I3 => A(26),
      O => C32_INST_0_i_10_n_0
    );
C32_INST_0_i_11: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0660"
    )
        port map (
      I0 => B(22),
      I1 => A(22),
      I2 => B(23),
      I3 => A(23),
      O => C32_INST_0_i_11_n_0
    );
C32_INST_0_i_12: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6000"
    )
        port map (
      I0 => B(30),
      I1 => A(30),
      I2 => B(29),
      I3 => A(29),
      O => C32_INST_0_i_12_n_0
    );
C32_INST_0_i_13: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => A(30),
      I1 => B(30),
      O => C32_INST_0_i_13_n_0
    );
C32_INST_0_i_14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF880F8800000"
    )
        port map (
      I0 => A(21),
      I1 => B(21),
      I2 => B(22),
      I3 => A(22),
      I4 => B(23),
      I5 => A(23),
      O => C32_INST_0_i_14_n_0
    );
C32_INST_0_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF99F"
    )
        port map (
      I0 => A(29),
      I1 => B(29),
      I2 => A(30),
      I3 => B(30),
      I4 => C32_INST_0_i_9_n_0,
      O => C32_INST_0_i_2_n_0
    );
C32_INST_0_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00282800"
    )
        port map (
      I0 => C32_INST_0_i_10_n_0,
      I1 => A(28),
      I2 => B(28),
      I3 => A(27),
      I4 => B(27),
      O => C32_INST_0_i_3_n_0
    );
C32_INST_0_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00282800"
    )
        port map (
      I0 => C32_INST_0_i_11_n_0,
      I1 => A(24),
      I2 => B(24),
      I3 => A(21),
      I4 => B(21),
      O => C32_INST_0_i_4_n_0
    );
C32_INST_0_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCFCFCC0FCE8E8C0"
    )
        port map (
      I0 => C32_INST_0_i_12_n_0,
      I1 => B(32),
      I2 => A(32),
      I3 => B(31),
      I4 => A(31),
      I5 => C32_INST_0_i_13_n_0,
      O => C32_INST_0_i_5_n_0
    );
C32_INST_0_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000006600000"
    )
        port map (
      I0 => B(21),
      I1 => A(21),
      I2 => B(24),
      I3 => A(24),
      I4 => C32_INST_0_i_11_n_0,
      I5 => \S[22]_INST_0_i_2_n_0\,
      O => C32_INST_0_i_6_n_0
    );
C32_INST_0_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEA00"
    )
        port map (
      I0 => \S[28]_INST_0_i_6_n_0\,
      I1 => B(27),
      I2 => A(27),
      I3 => B(28),
      I4 => A(28),
      O => C32_INST_0_i_7_n_0
    );
C32_INST_0_i_8: unisim.vcomponents.LUT3
    generic map(
      INIT => X"17"
    )
        port map (
      I0 => C32_INST_0_i_14_n_0,
      I1 => A(24),
      I2 => B(24),
      O => C32_INST_0_i_8_n_0
    );
C32_INST_0_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F99F"
    )
        port map (
      I0 => B(32),
      I1 => A(32),
      I2 => B(31),
      I3 => A(31),
      O => C32_INST_0_i_9_n_0
    );
\S[10]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99969696"
    )
        port map (
      I0 => B(10),
      I1 => A(10),
      I2 => \S[12]_INST_0_i_1_n_0\,
      I3 => A(9),
      I4 => B(9),
      O => S(10)
    );
\S[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5656566A566A566A"
    )
        port map (
      I0 => \S[11]_INST_0_i_1_n_0\,
      I1 => A(10),
      I2 => B(10),
      I3 => \S[12]_INST_0_i_1_n_0\,
      I4 => A(9),
      I5 => B(9),
      O => S(11)
    );
\S[11]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A(11),
      I1 => B(11),
      O => \S[11]_INST_0_i_1_n_0\
    );
\S[12]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"711777778EE88888"
    )
        port map (
      I0 => A(11),
      I1 => B(11),
      I2 => A(10),
      I3 => B(10),
      I4 => \S[12]_INST_0_i_1_n_0\,
      I5 => \S[12]_INST_0_i_2_n_0\,
      O => S(12)
    );
\S[12]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000006066666666"
    )
        port map (
      I0 => B(9),
      I1 => A(9),
      I2 => \S[12]_INST_0_i_3_n_0\,
      I3 => \S[5]_INST_0_i_1_n_0\,
      I4 => \S[12]_INST_0_i_4_n_0\,
      I5 => \S[16]_INST_0_i_6_n_0\,
      O => \S[12]_INST_0_i_1_n_0\
    );
\S[12]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9996969696969696"
    )
        port map (
      I0 => B(12),
      I1 => A(12),
      I2 => \S[12]_INST_0_i_5_n_0\,
      I3 => \S[11]_INST_0_i_1_n_0\,
      I4 => B(10),
      I5 => A(10),
      O => \S[12]_INST_0_i_2_n_0\
    );
\S[12]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000066006600000"
    )
        port map (
      I0 => B(6),
      I1 => A(6),
      I2 => A(7),
      I3 => B(7),
      I4 => A(8),
      I5 => B(8),
      O => \S[12]_INST_0_i_3_n_0\
    );
\S[12]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => B(5),
      I1 => A(5),
      O => \S[12]_INST_0_i_4_n_0\
    );
\S[12]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0660000000000000"
    )
        port map (
      I0 => A(11),
      I1 => B(11),
      I2 => A(10),
      I3 => B(10),
      I4 => B(9),
      I5 => A(9),
      O => \S[12]_INST_0_i_5_n_0\
    );
\S[13]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => B(13),
      I1 => A(13),
      I2 => \S[16]_INST_0_i_3_n_0\,
      O => S(13)
    );
\S[14]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99696966"
    )
        port map (
      I0 => B(14),
      I1 => A(14),
      I2 => \S[16]_INST_0_i_3_n_0\,
      I3 => B(13),
      I4 => A(13),
      O => S(14)
    );
\S[15]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"002B2BFFFFD4D400"
    )
        port map (
      I0 => \S[16]_INST_0_i_3_n_0\,
      I1 => B(13),
      I2 => A(13),
      I3 => B(14),
      I4 => A(14),
      I5 => \S[15]_INST_0_i_1_n_0\,
      O => S(15)
    );
\S[15]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A(15),
      I1 => B(15),
      O => \S[15]_INST_0_i_1_n_0\
    );
\S[16]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C0C0E8C03F3F173F"
    )
        port map (
      I0 => \S[16]_INST_0_i_1_n_0\,
      I1 => A(15),
      I2 => B(15),
      I3 => \S[16]_INST_0_i_2_n_0\,
      I4 => \S[16]_INST_0_i_3_n_0\,
      I5 => \S[16]_INST_0_i_4_n_0\,
      O => S(16)
    );
\S[16]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A(14),
      I1 => B(14),
      O => \S[16]_INST_0_i_1_n_0\
    );
\S[16]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6660600060006000"
    )
        port map (
      I0 => B(8),
      I1 => A(8),
      I2 => B(7),
      I3 => A(7),
      I4 => B(6),
      I5 => A(6),
      O => \S[16]_INST_0_i_10_n_0\
    );
\S[16]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000077F077FFFFF"
    )
        port map (
      I0 => A(9),
      I1 => B(9),
      I2 => B(10),
      I3 => A(10),
      I4 => B(11),
      I5 => A(11),
      O => \S[16]_INST_0_i_11_n_0\
    );
\S[16]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A(13),
      I1 => B(13),
      O => \S[16]_INST_0_i_2_n_0\
    );
\S[16]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEE0EE0000000000"
    )
        port map (
      I0 => \S[16]_INST_0_i_5_n_0\,
      I1 => \S[16]_INST_0_i_6_n_0\,
      I2 => \S[20]_INST_0_i_6_n_0\,
      I3 => \S[20]_INST_0_i_7_n_0\,
      I4 => \S[20]_INST_0_i_5_n_0\,
      I5 => \S[16]_INST_0_i_7_n_0\,
      O => \S[16]_INST_0_i_3_n_0\
    );
\S[16]_INST_0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \S[16]_INST_0_i_8_n_0\,
      I1 => B(16),
      I2 => A(16),
      O => \S[16]_INST_0_i_4_n_0\
    );
\S[16]_INST_0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F99FFFFF"
    )
        port map (
      I0 => A(12),
      I1 => B(12),
      I2 => A(9),
      I3 => B(9),
      I4 => \S[16]_INST_0_i_9_n_0\,
      O => \S[16]_INST_0_i_5_n_0\
    );
\S[16]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000007F7F7F"
    )
        port map (
      I0 => \S[12]_INST_0_i_3_n_0\,
      I1 => B(5),
      I2 => A(5),
      I3 => A(8),
      I4 => B(8),
      I5 => \S[16]_INST_0_i_10_n_0\,
      O => \S[16]_INST_0_i_6_n_0\
    );
\S[16]_INST_0_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2B"
    )
        port map (
      I0 => \S[16]_INST_0_i_11_n_0\,
      I1 => A(12),
      I2 => B(12),
      O => \S[16]_INST_0_i_7_n_0\
    );
\S[16]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF17771777FFFF"
    )
        port map (
      I0 => A(14),
      I1 => B(14),
      I2 => B(13),
      I3 => A(13),
      I4 => B(15),
      I5 => A(15),
      O => \S[16]_INST_0_i_8_n_0\
    );
\S[16]_INST_0_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0660"
    )
        port map (
      I0 => B(10),
      I1 => A(10),
      I2 => B(11),
      I3 => A(11),
      O => \S[16]_INST_0_i_9_n_0\
    );
\S[17]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \S[20]_INST_0_i_3_n_0\,
      I1 => B(17),
      I2 => A(17),
      O => S(17)
    );
\S[18]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99969666"
    )
        port map (
      I0 => B(18),
      I1 => A(18),
      I2 => \S[20]_INST_0_i_3_n_0\,
      I3 => B(17),
      I4 => A(17),
      O => S(18)
    );
\S[19]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5656566A566A6A6A"
    )
        port map (
      I0 => \S[19]_INST_0_i_1_n_0\,
      I1 => A(18),
      I2 => B(18),
      I3 => \S[20]_INST_0_i_3_n_0\,
      I4 => B(17),
      I5 => A(17),
      O => S(19)
    );
\S[19]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A(19),
      I1 => B(19),
      O => \S[19]_INST_0_i_1_n_0\
    );
\S[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => Cin,
      I1 => B(1),
      I2 => A(1),
      O => S(1)
    );
\S[20]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17777777E8888888"
    )
        port map (
      I0 => A(19),
      I1 => B(19),
      I2 => \S[20]_INST_0_i_1_n_0\,
      I3 => \S[20]_INST_0_i_2_n_0\,
      I4 => \S[20]_INST_0_i_3_n_0\,
      I5 => \S[20]_INST_0_i_4_n_0\,
      O => S(20)
    );
\S[20]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A(18),
      I1 => B(18),
      O => \S[20]_INST_0_i_1_n_0\
    );
\S[20]_INST_0_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6000"
    )
        port map (
      I0 => B(2),
      I1 => A(2),
      I2 => B(1),
      I3 => A(1),
      O => \S[20]_INST_0_i_10_n_0\
    );
\S[20]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A(17),
      I1 => B(17),
      O => \S[20]_INST_0_i_2_n_0\
    );
\S[20]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFCFDFFFCFCFCFCF"
    )
        port map (
      I0 => \S[20]_INST_0_i_5_n_0\,
      I1 => \S[32]_INST_0_i_6_n_0\,
      I2 => \S[22]_INST_0_i_5_n_0\,
      I3 => \S[20]_INST_0_i_6_n_0\,
      I4 => \S[20]_INST_0_i_7_n_0\,
      I5 => \S[22]_INST_0_i_3_n_0\,
      O => \S[20]_INST_0_i_3_n_0\
    );
\S[20]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9666666696969666"
    )
        port map (
      I0 => B(20),
      I1 => A(20),
      I2 => \S[19]_INST_0_i_1_n_0\,
      I3 => A(18),
      I4 => B(18),
      I5 => \S[22]_INST_0_i_7_n_0\,
      O => \S[20]_INST_0_i_4_n_0\
    );
\S[20]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFBBFFBBFFFFF"
    )
        port map (
      I0 => \S[20]_INST_0_i_8_n_0\,
      I1 => \S[3]_INST_0_i_1_n_0\,
      I2 => B(2),
      I3 => A(2),
      I4 => B(4),
      I5 => A(4),
      O => \S[20]_INST_0_i_5_n_0\
    );
\S[20]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000F011F011F055F"
    )
        port map (
      I0 => \S[20]_INST_0_i_9_n_0\,
      I1 => \S[20]_INST_0_i_10_n_0\,
      I2 => A(4),
      I3 => B(4),
      I4 => A(3),
      I5 => B(3),
      O => \S[20]_INST_0_i_6_n_0\
    );
\S[20]_INST_0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBBF"
    )
        port map (
      I0 => \S[16]_INST_0_i_5_n_0\,
      I1 => \S[12]_INST_0_i_3_n_0\,
      I2 => B(5),
      I3 => A(5),
      O => \S[20]_INST_0_i_7_n_0\
    );
\S[20]_INST_0_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D7"
    )
        port map (
      I0 => Cin,
      I1 => B(1),
      I2 => A(1),
      O => \S[20]_INST_0_i_8_n_0\
    );
\S[20]_INST_0_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6000"
    )
        port map (
      I0 => B(3),
      I1 => A(3),
      I2 => B(2),
      I3 => A(2),
      O => \S[20]_INST_0_i_9_n_0\
    );
\S[21]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9969"
    )
        port map (
      I0 => A(21),
      I1 => B(21),
      I2 => \S[22]_INST_0_i_2_n_0\,
      I3 => \S[22]_INST_0_i_1_n_0\,
      O => S(21)
    );
\S[22]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9996966699969996"
    )
        port map (
      I0 => B(22),
      I1 => A(22),
      I2 => B(21),
      I3 => A(21),
      I4 => \S[22]_INST_0_i_1_n_0\,
      I5 => \S[22]_INST_0_i_2_n_0\,
      O => S(22)
    );
\S[22]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF2FFFAF"
    )
        port map (
      I0 => \S[22]_INST_0_i_3_n_0\,
      I1 => \S[22]_INST_0_i_4_n_0\,
      I2 => \S[22]_INST_0_i_5_n_0\,
      I3 => \S[32]_INST_0_i_6_n_0\,
      I4 => \S[22]_INST_0_i_6_n_0\,
      I5 => \S[32]_INST_0_i_8_n_0\,
      O => \S[22]_INST_0_i_1_n_0\
    );
\S[22]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000077771777"
    )
        port map (
      I0 => B(20),
      I1 => A(20),
      I2 => \S[19]_INST_0_i_1_n_0\,
      I3 => \S[20]_INST_0_i_1_n_0\,
      I4 => \S[22]_INST_0_i_7_n_0\,
      I5 => \S[22]_INST_0_i_8_n_0\,
      O => \S[22]_INST_0_i_2_n_0\
    );
\S[22]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000660"
    )
        port map (
      I0 => A(16),
      I1 => B(16),
      I2 => A(15),
      I3 => B(15),
      I4 => \S[22]_INST_0_i_9_n_0\,
      O => \S[22]_INST_0_i_3_n_0\
    );
\S[22]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFEBFF"
    )
        port map (
      I0 => \S[20]_INST_0_i_6_n_0\,
      I1 => A(5),
      I2 => B(5),
      I3 => \S[12]_INST_0_i_3_n_0\,
      I4 => \S[16]_INST_0_i_5_n_0\,
      O => \S[22]_INST_0_i_4_n_0\
    );
\S[22]_INST_0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"077F000F"
    )
        port map (
      I0 => B(15),
      I1 => A(15),
      I2 => B(16),
      I3 => A(16),
      I4 => \S[16]_INST_0_i_8_n_0\,
      O => \S[22]_INST_0_i_5_n_0\
    );
\S[22]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFF9F"
    )
        port map (
      I0 => A(5),
      I1 => B(5),
      I2 => \S[12]_INST_0_i_3_n_0\,
      I3 => \S[16]_INST_0_i_5_n_0\,
      I4 => \S[20]_INST_0_i_5_n_0\,
      O => \S[22]_INST_0_i_6_n_0\
    );
\S[22]_INST_0_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => A(17),
      I1 => B(17),
      O => \S[22]_INST_0_i_7_n_0\
    );
\S[22]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6660600060006000"
    )
        port map (
      I0 => B(20),
      I1 => A(20),
      I2 => B(19),
      I3 => A(19),
      I4 => B(18),
      I5 => A(18),
      O => \S[22]_INST_0_i_8_n_0\
    );
\S[22]_INST_0_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F99F"
    )
        port map (
      I0 => B(14),
      I1 => A(14),
      I2 => B(13),
      I3 => A(13),
      O => \S[22]_INST_0_i_9_n_0\
    );
\S[23]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5656566A566A566A"
    )
        port map (
      I0 => \S[23]_INST_0_i_1_n_0\,
      I1 => A(22),
      I2 => B(22),
      I3 => \S[24]_INST_0_i_1_n_0\,
      I4 => A(21),
      I5 => B(21),
      O => S(23)
    );
\S[23]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A(23),
      I1 => B(23),
      O => \S[23]_INST_0_i_1_n_0\
    );
\S[24]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"711777778EE88888"
    )
        port map (
      I0 => A(23),
      I1 => B(23),
      I2 => A(22),
      I3 => B(22),
      I4 => \S[24]_INST_0_i_1_n_0\,
      I5 => \S[24]_INST_0_i_2_n_0\,
      O => S(24)
    );
\S[24]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AAA2AAAAAAAA"
    )
        port map (
      I0 => \S[24]_INST_0_i_3_n_0\,
      I1 => \S[32]_INST_0_i_5_n_0\,
      I2 => \S[32]_INST_0_i_6_n_0\,
      I3 => \S[32]_INST_0_i_7_n_0\,
      I4 => \S[32]_INST_0_i_8_n_0\,
      I5 => \S[22]_INST_0_i_2_n_0\,
      O => \S[24]_INST_0_i_1_n_0\
    );
\S[24]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9996969696969696"
    )
        port map (
      I0 => B(24),
      I1 => A(24),
      I2 => \S[24]_INST_0_i_4_n_0\,
      I3 => \S[23]_INST_0_i_1_n_0\,
      I4 => B(22),
      I5 => A(22),
      O => \S[24]_INST_0_i_2_n_0\
    );
\S[24]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A(21),
      I1 => B(21),
      O => \S[24]_INST_0_i_3_n_0\
    );
\S[24]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0660000000000000"
    )
        port map (
      I0 => A(23),
      I1 => B(23),
      I2 => A(22),
      I3 => B(22),
      I4 => B(21),
      I5 => A(21),
      O => \S[24]_INST_0_i_4_n_0\
    );
\S[25]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => A(25),
      I1 => B(25),
      I2 => \S[28]_INST_0_i_1_n_0\,
      O => S(25)
    );
\S[26]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96669996"
    )
        port map (
      I0 => B(26),
      I1 => A(26),
      I2 => B(25),
      I3 => A(25),
      I4 => \S[28]_INST_0_i_1_n_0\,
      O => S(26)
    );
\S[27]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"002B2BFFFFD4D400"
    )
        port map (
      I0 => \S[28]_INST_0_i_1_n_0\,
      I1 => B(25),
      I2 => A(25),
      I3 => B(26),
      I4 => A(26),
      I5 => \S[27]_INST_0_i_1_n_0\,
      O => S(27)
    );
\S[27]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A(27),
      I1 => B(27),
      O => \S[27]_INST_0_i_1_n_0\
    );
\S[28]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0BBF0FFFF440F000"
    )
        port map (
      I0 => \S[28]_INST_0_i_1_n_0\,
      I1 => \S[28]_INST_0_i_2_n_0\,
      I2 => A(27),
      I3 => B(27),
      I4 => \S[28]_INST_0_i_3_n_0\,
      I5 => \S[28]_INST_0_i_4_n_0\,
      O => S(28)
    );
\S[28]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0008AAAAAAAA"
    )
        port map (
      I0 => \S[28]_INST_0_i_5_n_0\,
      I1 => \S[32]_INST_0_i_5_n_0\,
      I2 => \S[32]_INST_0_i_6_n_0\,
      I3 => \S[32]_INST_0_i_7_n_0\,
      I4 => \S[32]_INST_0_i_8_n_0\,
      I5 => C32_INST_0_i_4_n_0,
      O => \S[28]_INST_0_i_1_n_0\
    );
\S[28]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A(25),
      I1 => B(25),
      O => \S[28]_INST_0_i_2_n_0\
    );
\S[28]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A(26),
      I1 => B(26),
      O => \S[28]_INST_0_i_3_n_0\
    );
\S[28]_INST_0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => B(28),
      I1 => A(28),
      I2 => \S[28]_INST_0_i_6_n_0\,
      O => \S[28]_INST_0_i_4_n_0\
    );
\S[28]_INST_0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => C32_INST_0_i_8_n_0,
      I1 => \S[22]_INST_0_i_2_n_0\,
      I2 => C32_INST_0_i_4_n_0,
      O => \S[28]_INST_0_i_5_n_0\
    );
\S[28]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6666600060000000"
    )
        port map (
      I0 => B(27),
      I1 => A(27),
      I2 => B(25),
      I3 => A(25),
      I4 => B(26),
      I5 => A(26),
      O => \S[28]_INST_0_i_6_n_0\
    );
\S[29]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \S[32]_INST_0_i_3_n_0\,
      I1 => B(29),
      I2 => A(29),
      O => S(29)
    );
\S[2]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99969666"
    )
        port map (
      I0 => B(2),
      I1 => A(2),
      I2 => Cin,
      I3 => B(1),
      I4 => A(1),
      O => S(2)
    );
\S[30]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99969666"
    )
        port map (
      I0 => B(30),
      I1 => A(30),
      I2 => A(29),
      I3 => B(29),
      I4 => \S[32]_INST_0_i_3_n_0\,
      O => S(30)
    );
\S[31]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"011F077FFEE0F880"
    )
        port map (
      I0 => A(29),
      I1 => B(29),
      I2 => A(30),
      I3 => B(30),
      I4 => \S[32]_INST_0_i_3_n_0\,
      I5 => \S[31]_INST_0_i_1_n_0\,
      O => S(31)
    );
\S[31]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A(31),
      I1 => B(31),
      O => \S[31]_INST_0_i_1_n_0\
    );
\S[32]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"565656566A566A6A"
    )
        port map (
      I0 => \S[32]_INST_0_i_1_n_0\,
      I1 => B(31),
      I2 => A(31),
      I3 => \S[32]_INST_0_i_2_n_0\,
      I4 => \S[32]_INST_0_i_3_n_0\,
      I5 => \S[32]_INST_0_i_4_n_0\,
      O => S(32)
    );
\S[32]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A(32),
      I1 => B(32),
      O => \S[32]_INST_0_i_1_n_0\
    );
\S[32]_INST_0_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF7500"
    )
        port map (
      I0 => C32_INST_0_i_8_n_0,
      I1 => \S[22]_INST_0_i_2_n_0\,
      I2 => C32_INST_0_i_4_n_0,
      I3 => C32_INST_0_i_3_n_0,
      I4 => C32_INST_0_i_7_n_0,
      O => \S[32]_INST_0_i_10_n_0\
    );
\S[32]_INST_0_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F99F"
    )
        port map (
      I0 => B(20),
      I1 => A(20),
      I2 => B(19),
      I3 => A(19),
      O => \S[32]_INST_0_i_11_n_0\
    );
\S[32]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F99F"
    )
        port map (
      I0 => B(30),
      I1 => A(30),
      I2 => B(29),
      I3 => A(29),
      O => \S[32]_INST_0_i_2_n_0\
    );
\S[32]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00FD0000"
    )
        port map (
      I0 => \S[32]_INST_0_i_5_n_0\,
      I1 => \S[32]_INST_0_i_6_n_0\,
      I2 => \S[32]_INST_0_i_7_n_0\,
      I3 => \S[32]_INST_0_i_8_n_0\,
      I4 => \S[32]_INST_0_i_9_n_0\,
      I5 => \S[32]_INST_0_i_10_n_0\,
      O => \S[32]_INST_0_i_3_n_0\
    );
\S[32]_INST_0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F880"
    )
        port map (
      I0 => A(29),
      I1 => B(29),
      I2 => A(30),
      I3 => B(30),
      O => \S[32]_INST_0_i_4_n_0\
    );
\S[32]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA8AAAAAAAAAA"
    )
        port map (
      I0 => \S[22]_INST_0_i_5_n_0\,
      I1 => \S[20]_INST_0_i_6_n_0\,
      I2 => \S[12]_INST_0_i_4_n_0\,
      I3 => \S[12]_INST_0_i_3_n_0\,
      I4 => \S[16]_INST_0_i_5_n_0\,
      I5 => \S[22]_INST_0_i_3_n_0\,
      O => \S[32]_INST_0_i_5_n_0\
    );
\S[32]_INST_0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1F00"
    )
        port map (
      I0 => \S[16]_INST_0_i_6_n_0\,
      I1 => \S[16]_INST_0_i_5_n_0\,
      I2 => \S[16]_INST_0_i_7_n_0\,
      I3 => \S[22]_INST_0_i_3_n_0\,
      O => \S[32]_INST_0_i_6_n_0\
    );
\S[32]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000020002000000"
    )
        port map (
      I0 => \S[22]_INST_0_i_3_n_0\,
      I1 => \S[20]_INST_0_i_5_n_0\,
      I2 => \S[16]_INST_0_i_5_n_0\,
      I3 => \S[12]_INST_0_i_3_n_0\,
      I4 => B(5),
      I5 => A(5),
      O => \S[32]_INST_0_i_7_n_0\
    );
\S[32]_INST_0_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEBEBFF"
    )
        port map (
      I0 => \S[32]_INST_0_i_11_n_0\,
      I1 => A(17),
      I2 => B(17),
      I3 => A(18),
      I4 => B(18),
      O => \S[32]_INST_0_i_8_n_0\
    );
\S[32]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0660000000000000"
    )
        port map (
      I0 => B(21),
      I1 => A(21),
      I2 => B(24),
      I3 => A(24),
      I4 => C32_INST_0_i_11_n_0,
      I5 => C32_INST_0_i_3_n_0,
      O => \S[32]_INST_0_i_9_n_0\
    );
\S[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0317173FFCE8E8C0"
    )
        port map (
      I0 => Cin,
      I1 => B(2),
      I2 => A(2),
      I3 => B(1),
      I4 => A(1),
      I5 => \S[3]_INST_0_i_1_n_0\,
      O => S(3)
    );
\S[3]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A(3),
      I1 => B(3),
      O => \S[3]_INST_0_i_1_n_0\
    );
\S[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9996969699999999"
    )
        port map (
      I0 => B(4),
      I1 => A(4),
      I2 => \S[4]_INST_0_i_1_n_0\,
      I3 => B(3),
      I4 => A(3),
      I5 => \S[4]_INST_0_i_2_n_0\,
      O => S(4)
    );
\S[4]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000E888E8880000"
    )
        port map (
      I0 => B(2),
      I1 => A(2),
      I2 => B(1),
      I3 => A(1),
      I4 => A(3),
      I5 => B(3),
      O => \S[4]_INST_0_i_1_n_0\
    );
\S[4]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF9F9FFFFFFFFFFF"
    )
        port map (
      I0 => A(2),
      I1 => B(2),
      I2 => \S[3]_INST_0_i_1_n_0\,
      I3 => A(1),
      I4 => B(1),
      I5 => Cin,
      O => \S[4]_INST_0_i_2_n_0\
    );
\S[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => A(5),
      I1 => B(5),
      I2 => \S[5]_INST_0_i_1_n_0\,
      O => S(5)
    );
\S[5]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA82"
    )
        port map (
      I0 => \S[20]_INST_0_i_6_n_0\,
      I1 => A(4),
      I2 => B(4),
      I3 => \S[4]_INST_0_i_2_n_0\,
      O => \S[5]_INST_0_i_1_n_0\
    );
\S[6]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99696969"
    )
        port map (
      I0 => B(6),
      I1 => A(6),
      I2 => \S[8]_INST_0_i_1_n_0\,
      I3 => A(5),
      I4 => B(5),
      O => S(6)
    );
\S[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9666999699969996"
    )
        port map (
      I0 => B(7),
      I1 => A(7),
      I2 => A(6),
      I3 => B(6),
      I4 => \S[8]_INST_0_i_1_n_0\,
      I5 => \S[7]_INST_0_i_1_n_0\,
      O => S(7)
    );
\S[7]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => A(5),
      I1 => B(5),
      O => \S[7]_INST_0_i_1_n_0\
    );
\S[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3F2B2B3FC0D4D4C0"
    )
        port map (
      I0 => \S[8]_INST_0_i_1_n_0\,
      I1 => A(7),
      I2 => B(7),
      I3 => A(6),
      I4 => B(6),
      I5 => \S[8]_INST_0_i_2_n_0\,
      O => S(8)
    );
\S[8]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F9"
    )
        port map (
      I0 => A(5),
      I1 => B(5),
      I2 => \S[5]_INST_0_i_1_n_0\,
      O => \S[8]_INST_0_i_1_n_0\
    );
\S[8]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9666666696969666"
    )
        port map (
      I0 => B(8),
      I1 => A(8),
      I2 => \S[8]_INST_0_i_3_n_0\,
      I3 => A(6),
      I4 => B(6),
      I5 => \S[7]_INST_0_i_1_n_0\,
      O => \S[8]_INST_0_i_2_n_0\
    );
\S[8]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A(7),
      I1 => B(7),
      O => \S[8]_INST_0_i_3_n_0\
    );
\S[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => A(9),
      I1 => B(9),
      I2 => \S[9]_INST_0_i_1_n_0\,
      O => S(9)
    );
\S[9]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA82AAAA"
    )
        port map (
      I0 => \S[16]_INST_0_i_6_n_0\,
      I1 => A(5),
      I2 => B(5),
      I3 => \S[5]_INST_0_i_1_n_0\,
      I4 => \S[12]_INST_0_i_3_n_0\,
      O => \S[9]_INST_0_i_1_n_0\
    );
end STRUCTURE;
