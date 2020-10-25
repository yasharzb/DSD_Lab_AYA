//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
//Date        : Tue Oct 20 18:58:43 2020
//Host        : DESKTOP-4NPEG9F running 64-bit major release  (build 9200)
//Command     : generate_target BCD_modulo_3_wrapper.bd
//Design      : BCD_modulo_3_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module BCD_modulo_3_wrapper
   (A0,
    A1,
    A10,
    A11,
    A12,
    A13,
    A14,
    A15,
    A2,
    A3,
    A4,
    A5,
    A6,
    A7,
    A8,
    A9,
    is_mul_of_3);
  input A0;
  input A1;
  input A10;
  input A11;
  input A12;
  input A13;
  input A14;
  input A15;
  input A2;
  input A3;
  input A4;
  input A5;
  input A6;
  input A7;
  input A8;
  input A9;
  output [0:0]is_mul_of_3;

  wire A0;
  wire A1;
  wire A10;
  wire A11;
  wire A12;
  wire A13;
  wire A14;
  wire A15;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire A7;
  wire A8;
  wire A9;
  wire [0:0]is_mul_of_3;

  BCD_modulo_3 BCD_modulo_3_i
       (.A0(A0),
        .A1(A1),
        .A10(A10),
        .A11(A11),
        .A12(A12),
        .A13(A13),
        .A14(A14),
        .A15(A15),
        .A2(A2),
        .A3(A3),
        .A4(A4),
        .A5(A5),
        .A6(A6),
        .A7(A7),
        .A8(A8),
        .A9(A9),
        .is_mul_of_3(is_mul_of_3));
endmodule
