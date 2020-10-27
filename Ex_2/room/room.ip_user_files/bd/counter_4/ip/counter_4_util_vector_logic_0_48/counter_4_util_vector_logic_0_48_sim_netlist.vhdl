-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Tue Oct 27 08:49:56 2020
-- Host        : LAPTOP-B8FRIN8D running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top counter_4_util_vector_logic_0_48 -prefix
--               counter_4_util_vector_logic_0_48_ counter_4_util_vector_logic_0_36_sim_netlist.vhdl
-- Design      : counter_4_util_vector_logic_0_36
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity counter_4_util_vector_logic_0_48 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Op2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of counter_4_util_vector_logic_0_48 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of counter_4_util_vector_logic_0_48 : entity is "counter_4_util_vector_logic_0_36,util_vector_logic_v2_0_1_util_vector_logic,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of counter_4_util_vector_logic_0_48 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of counter_4_util_vector_logic_0_48 : entity is "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1";
end counter_4_util_vector_logic_0_48;

architecture STRUCTURE of counter_4_util_vector_logic_0_48 is
begin
\Res[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Op1(0),
      I1 => Op2(0),
      O => Res(0)
    );
end STRUCTURE;
