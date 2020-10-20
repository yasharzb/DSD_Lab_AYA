//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
//Date        : Tue Oct 20 10:19:08 2020
//Host        : Arian22 running 64-bit major release  (build 9200)
//Command     : generate_target BCD_modulo_3_wrapper.bd
//Design      : BCD_modulo_3_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module BCD_modulo_3_wrapper
   (inee1,
    inee2,
    outee);
  input inee1;
  input inee2;
  output [0:0]outee;

  wire inee1;
  wire inee2;
  wire [0:0]outee;

  BCD_modulo_3 BCD_modulo_3_i
       (.inee1(inee1),
        .inee2(inee2),
        .outee(outee));
endmodule
