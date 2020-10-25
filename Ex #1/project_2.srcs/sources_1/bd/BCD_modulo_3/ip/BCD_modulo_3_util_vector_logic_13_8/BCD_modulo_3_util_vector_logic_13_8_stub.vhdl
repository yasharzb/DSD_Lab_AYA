-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Tue Oct 20 20:03:17 2020
-- Host        : LAPTOP-B8FRIN8D running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top BCD_modulo_3_util_vector_logic_13_8 -prefix
--               BCD_modulo_3_util_vector_logic_13_8_ BCD_modulo_3_util_vector_logic_23_2_stub.vhdl
-- Design      : BCD_modulo_3_util_vector_logic_23_2
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity BCD_modulo_3_util_vector_logic_13_8 is
  Port ( 
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Op2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );

end BCD_modulo_3_util_vector_logic_13_8;

architecture stub of BCD_modulo_3_util_vector_logic_13_8 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "Op1[0:0],Op2[0:0],Res[0:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1";
begin
end;
