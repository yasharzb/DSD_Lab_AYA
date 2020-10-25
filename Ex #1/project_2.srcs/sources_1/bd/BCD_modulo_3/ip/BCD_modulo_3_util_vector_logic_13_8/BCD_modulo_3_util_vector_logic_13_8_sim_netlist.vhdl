-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Tue Oct 20 20:03:17 2020
-- Host        : LAPTOP-B8FRIN8D running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top BCD_modulo_3_util_vector_logic_13_8 -prefix
--               BCD_modulo_3_util_vector_logic_13_8_ BCD_modulo_3_util_vector_logic_23_2_sim_netlist.vhdl
-- Design      : BCD_modulo_3_util_vector_logic_23_2
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity BCD_modulo_3_util_vector_logic_13_8 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Op2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of BCD_modulo_3_util_vector_logic_13_8 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of BCD_modulo_3_util_vector_logic_13_8 : entity is "BCD_modulo_3_util_vector_logic_23_2,util_vector_logic_v2_0_1_util_vector_logic,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of BCD_modulo_3_util_vector_logic_13_8 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of BCD_modulo_3_util_vector_logic_13_8 : entity is "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1";
end BCD_modulo_3_util_vector_logic_13_8;

architecture STRUCTURE of BCD_modulo_3_util_vector_logic_13_8 is
begin
\Res[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Op1(0),
      I1 => Op2(0),
      O => Res(0)
    );
end STRUCTURE;
