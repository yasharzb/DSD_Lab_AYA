-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Tue Oct 27 08:49:56 2020
-- Host        : LAPTOP-B8FRIN8D running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top counter_4_util_vector_logic_2_38 -prefix
--               counter_4_util_vector_logic_2_38_ counter_4_util_vector_logic_2_30_stub.vhdl
-- Design      : counter_4_util_vector_logic_2_30
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity counter_4_util_vector_logic_2_38 is
  Port ( 
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );

end counter_4_util_vector_logic_2_38;

architecture stub of counter_4_util_vector_logic_2_38 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "Op1[0:0],Res[0:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1";
begin
end;
