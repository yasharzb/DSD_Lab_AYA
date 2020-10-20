//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
//Date        : Tue Oct 20 12:11:00 2020
//Host        : DESKTOP-4NPEG9F running 64-bit major release  (build 9200)
//Command     : generate_target BCD_modulo_3_wrapper.bd
//Design      : BCD_modulo_3_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module BCD_modulo_3_wrapper
   (A0,
    A1,
    A2,
    A3,
    mod_0,
    mod_1);
  input A0;
  input A1;
  input A2;
  input A3;
  output [0:0]mod_0;
  output [0:0]mod_1;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire [0:0]mod_0;
  wire [0:0]mod_1;

  BCD_modulo_3 BCD_modulo_3_i
       (.A0(A0),
        .A1(A1),
        .A2(A2),
        .A3(A3),
        .mod_0(mod_0),
        .mod_1(mod_1));
endmodule
