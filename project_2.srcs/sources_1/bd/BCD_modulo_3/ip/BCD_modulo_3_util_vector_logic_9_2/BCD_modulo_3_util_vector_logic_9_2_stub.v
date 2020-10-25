// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Tue Oct 20 20:03:17 2020
// Host        : LAPTOP-B8FRIN8D running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top BCD_modulo_3_util_vector_logic_9_2 -prefix
//               BCD_modulo_3_util_vector_logic_9_2_ BCD_modulo_3_util_vector_logic_17_4_stub.v
// Design      : BCD_modulo_3_util_vector_logic_17_4
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *)
module BCD_modulo_3_util_vector_logic_9_2(Op1, Op2, Res)
/* synthesis syn_black_box black_box_pad_pin="Op1[0:0],Op2[0:0],Res[0:0]" */;
  input [0:0]Op1;
  input [0:0]Op2;
  output [0:0]Res;
endmodule
