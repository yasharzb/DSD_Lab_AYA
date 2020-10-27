// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Tue Oct 27 08:49:56 2020
// Host        : LAPTOP-B8FRIN8D running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top counter_4_util_vector_logic_2_33 -prefix
//               counter_4_util_vector_logic_2_33_ counter_4_util_vector_logic_2_30_stub.v
// Design      : counter_4_util_vector_logic_2_30
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *)
module counter_4_util_vector_logic_2_33(Op1, Res)
/* synthesis syn_black_box black_box_pad_pin="Op1[0:0],Res[0:0]" */;
  input [0:0]Op1;
  output [0:0]Res;
endmodule
