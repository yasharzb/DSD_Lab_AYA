//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
//Date        : Tue Oct 20 14:30:22 2020
//Host        : DESKTOP-4NPEG9F running 64-bit major release  (build 9200)
//Command     : generate_target BCD_modulo_3.bd
//Design      : BCD_modulo_3
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "BCD_modulo_3,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=BCD_modulo_3,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=184,numReposBlks=177,numNonXlnxBlks=0,numHierBlks=7,maxHierDepth=1,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "BCD_modulo_3.hwdef" *) 
module BCD_modulo_3
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

  wire A0_1;
  wire A0_2;
  wire A1_1;
  wire A1_2;
  wire A2_1;
  wire A2_2;
  wire A3_1;
  wire A3_2;
  wire A4_1;
  wire A4_2;
  wire A5_1;
  wire A5_2;
  wire A6_1;
  wire A6_2;
  wire A7_1;
  wire A7_2;
  wire [0:0]ONE_BCD_DIGIT_MOD1_MOD_0;
  wire [0:0]ONE_BCD_DIGIT_MOD1_MOD_1;
  wire [0:0]ONE_BCD_DIGIT_MOD1_MOD_2;
  wire [0:0]ONE_BCD_DIGIT_MOD1_MOD_3;
  wire [0:0]ONE_BCD_DIGIT_MOD_MOD_0;
  wire [0:0]ONE_BCD_DIGIT_MOD_MOD_1;
  wire [0:0]ONE_BCD_DIGIT_MOD_MOD_2;
  wire [0:0]ONE_BCD_DIGIT_MOD_MOD_3;
  wire [0:0]add_mode_3_mod_0;
  wire [0:0]add_mode_3_mod_1;
  wire [0:0]add_mode_4_mod_0;
  wire [0:0]add_mode_4_mod_1;
  wire [0:0]add_mode_5_mod_0;
  wire [0:0]add_mode_5_mod_1;
  wire [0:0]util_vector_logic_0_Res;
  wire [0:0]util_vector_logic_1_Res;
  wire [0:0]util_vector_logic_2_Res;

  assign A0_1 = A0;
  assign A0_2 = A8;
  assign A1_1 = A1;
  assign A1_2 = A9;
  assign A2_1 = A2;
  assign A2_2 = A10;
  assign A3_1 = A3;
  assign A3_2 = A11;
  assign A4_1 = A4;
  assign A4_2 = A12;
  assign A5_1 = A5;
  assign A5_2 = A13;
  assign A6_1 = A6;
  assign A6_2 = A14;
  assign A7_1 = A7;
  assign A7_2 = A15;
  assign is_mul_of_3[0] = util_vector_logic_2_Res;
  ONE_BCD_DIGIT_MOD_imp_IL4AD9 ONE_BCD_DIGIT_MOD
       (.A0(A0_1),
        .A1(A1_1),
        .A2(A2_1),
        .A3(A3_1),
        .MOD_0(ONE_BCD_DIGIT_MOD_MOD_0),
        .MOD_1(ONE_BCD_DIGIT_MOD_MOD_1));
  ONE_BCD_DIGIT_MOD1_imp_ED28PU ONE_BCD_DIGIT_MOD1
       (.A0(A4_1),
        .A1(A5_1),
        .A2(A6_1),
        .A3(A7_1),
        .MOD_0(ONE_BCD_DIGIT_MOD1_MOD_0),
        .MOD_1(ONE_BCD_DIGIT_MOD1_MOD_1));
  ONE_BCD_DIGIT_MOD2_imp_13ES4TO ONE_BCD_DIGIT_MOD2
       (.A0(A0_2),
        .A1(A1_2),
        .A2(A2_2),
        .A3(A3_2),
        .MOD_0(ONE_BCD_DIGIT_MOD_MOD_2),
        .MOD_1(ONE_BCD_DIGIT_MOD_MOD_3));
  ONE_BCD_DIGIT_MOD3_imp_N79OTL ONE_BCD_DIGIT_MOD3
       (.A0(A4_2),
        .A1(A5_2),
        .A2(A6_2),
        .A3(A7_2),
        .MOD_0(ONE_BCD_DIGIT_MOD1_MOD_2),
        .MOD_1(ONE_BCD_DIGIT_MOD1_MOD_3));
  add_mode_3_imp_ABO60A add_mode_3
       (.A0(ONE_BCD_DIGIT_MOD_MOD_0),
        .A1(ONE_BCD_DIGIT_MOD_MOD_1),
        .B0(ONE_BCD_DIGIT_MOD1_MOD_0),
        .B1(ONE_BCD_DIGIT_MOD1_MOD_1),
        .mod_0(add_mode_3_mod_0),
        .mod_1(add_mode_3_mod_1));
  add_mode_4_imp_OHRAYA add_mode_4
       (.A0(ONE_BCD_DIGIT_MOD_MOD_2),
        .A1(ONE_BCD_DIGIT_MOD_MOD_3),
        .B0(ONE_BCD_DIGIT_MOD1_MOD_2),
        .B1(ONE_BCD_DIGIT_MOD1_MOD_3),
        .mod_0(add_mode_4_mod_0),
        .mod_1(add_mode_4_mod_1));
  add_mode_5_imp_114MNJR add_mode_5
       (.A0(add_mode_3_mod_0),
        .A1(add_mode_3_mod_1),
        .B0(add_mode_4_mod_0),
        .B1(add_mode_4_mod_1),
        .mod_0(add_mode_5_mod_0),
        .mod_1(add_mode_5_mod_1));
  BCD_modulo_3_util_vector_logic_0_15 util_vector_logic_0
       (.Op1(add_mode_5_mod_1),
        .Res(util_vector_logic_0_Res));
  BCD_modulo_3_util_vector_logic_0_16 util_vector_logic_1
       (.Op1(add_mode_5_mod_0),
        .Res(util_vector_logic_1_Res));
  BCD_modulo_3_util_vector_logic_0_17 util_vector_logic_2
       (.Op1(util_vector_logic_0_Res),
        .Op2(util_vector_logic_1_Res),
        .Res(util_vector_logic_2_Res));
endmodule

module ONE_BCD_DIGIT_MOD1_imp_ED28PU
   (A0,
    A1,
    A2,
    A3,
    MOD_0,
    MOD_1);
  input A0;
  input A1;
  input A2;
  input A3;
  output [0:0]MOD_0;
  output [0:0]MOD_1;

  wire A0_1;
  wire A1_1;
  wire A2_1;
  wire A3_1;
  wire [0:0]util_vector_logic_0_Res;
  wire [0:0]util_vector_logic_10_Res;
  wire [0:0]util_vector_logic_11_Res;
  wire [0:0]util_vector_logic_12_Res;
  wire [0:0]util_vector_logic_13_Res;
  wire [0:0]util_vector_logic_14_Res;
  wire [0:0]util_vector_logic_15_Res;
  wire [0:0]util_vector_logic_16_Res;
  wire [0:0]util_vector_logic_17_Res;
  wire [0:0]util_vector_logic_18_Res;
  wire [0:0]util_vector_logic_19_Res;
  wire [0:0]util_vector_logic_1_Res;
  wire [0:0]util_vector_logic_20_Res;
  wire [0:0]util_vector_logic_21_Res;
  wire [0:0]util_vector_logic_22_Res;
  wire [0:0]util_vector_logic_23_Res;
  wire [0:0]util_vector_logic_2_Res;
  wire [0:0]util_vector_logic_3_Res;
  wire [0:0]util_vector_logic_4_Res;
  wire [0:0]util_vector_logic_5_Res;
  wire [0:0]util_vector_logic_6_Res;
  wire [0:0]util_vector_logic_7_Res;
  wire [0:0]util_vector_logic_8_Res;
  wire [0:0]util_vector_logic_9_Res;

  assign A0_1 = A0;
  assign A1_1 = A1;
  assign A2_1 = A2;
  assign A3_1 = A3;
  assign MOD_0[0] = util_vector_logic_12_Res;
  assign MOD_1[0] = util_vector_logic_23_Res;
  BCD_modulo_3_util_vector_logic_0_6 util_vector_logic_0
       (.Op1(A0_1),
        .Res(util_vector_logic_0_Res));
  BCD_modulo_3_util_vector_logic_1_0 util_vector_logic_1
       (.Op1(A1_1),
        .Res(util_vector_logic_1_Res));
  BCD_modulo_3_util_vector_logic_10_2 util_vector_logic_10
       (.Op1(util_vector_logic_5_Res),
        .Op2(util_vector_logic_6_Res),
        .Res(util_vector_logic_10_Res));
  BCD_modulo_3_util_vector_logic_11_0 util_vector_logic_11
       (.Op1(util_vector_logic_10_Res),
        .Op2(util_vector_logic_9_Res),
        .Res(util_vector_logic_11_Res));
  BCD_modulo_3_util_vector_logic_12_1 util_vector_logic_12
       (.Op1(util_vector_logic_11_Res),
        .Op2(util_vector_logic_3_Res),
        .Res(util_vector_logic_12_Res));
  BCD_modulo_3_util_vector_logic_13_5 util_vector_logic_13
       (.Op1(util_vector_logic_0_Res),
        .Op2(A1_1),
        .Res(util_vector_logic_13_Res));
  BCD_modulo_3_util_vector_logic_14_2 util_vector_logic_14
       (.Op1(util_vector_logic_2_Res),
        .Op2(util_vector_logic_3_Res),
        .Res(util_vector_logic_14_Res));
  BCD_modulo_3_util_vector_logic_15_2 util_vector_logic_15
       (.Op1(util_vector_logic_13_Res),
        .Op2(util_vector_logic_14_Res),
        .Res(util_vector_logic_15_Res));
  BCD_modulo_3_util_vector_logic_16_0 util_vector_logic_16
       (.Op1(util_vector_logic_17_Res),
        .Op2(util_vector_logic_18_Res),
        .Res(util_vector_logic_16_Res));
  BCD_modulo_3_util_vector_logic_17_0 util_vector_logic_17
       (.Op1(A0_1),
        .Op2(util_vector_logic_1_Res),
        .Res(util_vector_logic_17_Res));
  BCD_modulo_3_util_vector_logic_18_0 util_vector_logic_18
       (.Op1(A2_1),
        .Op2(util_vector_logic_3_Res),
        .Res(util_vector_logic_18_Res));
  BCD_modulo_3_util_vector_logic_19_0 util_vector_logic_19
       (.Op1(util_vector_logic_21_Res),
        .Op2(util_vector_logic_20_Res),
        .Res(util_vector_logic_19_Res));
  BCD_modulo_3_util_vector_logic_2_0 util_vector_logic_2
       (.Op1(A2_1),
        .Res(util_vector_logic_2_Res));
  BCD_modulo_3_util_vector_logic_20_0 util_vector_logic_20
       (.Op1(util_vector_logic_2_Res),
        .Op2(A3_1),
        .Res(util_vector_logic_20_Res));
  BCD_modulo_3_util_vector_logic_21_0 util_vector_logic_21
       (.Op1(util_vector_logic_0_Res),
        .Op2(util_vector_logic_1_Res),
        .Res(util_vector_logic_21_Res));
  BCD_modulo_3_util_vector_logic_22_2 util_vector_logic_22
       (.Op1(util_vector_logic_15_Res),
        .Op2(util_vector_logic_16_Res),
        .Res(util_vector_logic_22_Res));
  BCD_modulo_3_util_vector_logic_23_0 util_vector_logic_23
       (.Op1(util_vector_logic_22_Res),
        .Op2(util_vector_logic_19_Res),
        .Res(util_vector_logic_23_Res));
  BCD_modulo_3_util_vector_logic_3_0 util_vector_logic_3
       (.Op1(A3_1),
        .Res(util_vector_logic_3_Res));
  BCD_modulo_3_util_vector_logic_4_7 util_vector_logic_4
       (.Op1(A0_1),
        .Op2(util_vector_logic_1_Res),
        .Res(util_vector_logic_4_Res));
  BCD_modulo_3_util_vector_logic_5_0 util_vector_logic_5
       (.Op1(util_vector_logic_4_Res),
        .Op2(util_vector_logic_2_Res),
        .Res(util_vector_logic_5_Res));
  BCD_modulo_3_util_vector_logic_6_0 util_vector_logic_6
       (.Op1(util_vector_logic_0_Res),
        .Op2(util_vector_logic_7_Res),
        .Res(util_vector_logic_6_Res));
  BCD_modulo_3_util_vector_logic_7_0 util_vector_logic_7
       (.Op1(A2_1),
        .Op2(util_vector_logic_1_Res),
        .Res(util_vector_logic_7_Res));
  BCD_modulo_3_util_vector_logic_8_0 util_vector_logic_8
       (.Op1(A0_1),
        .Op2(A1_1),
        .Res(util_vector_logic_8_Res));
  BCD_modulo_3_util_vector_logic_9_0 util_vector_logic_9
       (.Op1(util_vector_logic_8_Res),
        .Op2(A2_1),
        .Res(util_vector_logic_9_Res));
endmodule

module ONE_BCD_DIGIT_MOD2_imp_13ES4TO
   (A0,
    A1,
    A2,
    A3,
    MOD_0,
    MOD_1);
  input A0;
  input A1;
  input A2;
  input A3;
  output [0:0]MOD_0;
  output [0:0]MOD_1;

  wire A0_1;
  wire A1_1;
  wire A2_1;
  wire A3_1;
  wire [0:0]util_vector_logic_0_Res;
  wire [0:0]util_vector_logic_10_Res;
  wire [0:0]util_vector_logic_11_Res;
  wire [0:0]util_vector_logic_12_Res;
  wire [0:0]util_vector_logic_13_Res;
  wire [0:0]util_vector_logic_14_Res;
  wire [0:0]util_vector_logic_15_Res;
  wire [0:0]util_vector_logic_16_Res;
  wire [0:0]util_vector_logic_17_Res;
  wire [0:0]util_vector_logic_18_Res;
  wire [0:0]util_vector_logic_19_Res;
  wire [0:0]util_vector_logic_1_Res;
  wire [0:0]util_vector_logic_20_Res;
  wire [0:0]util_vector_logic_21_Res;
  wire [0:0]util_vector_logic_22_Res;
  wire [0:0]util_vector_logic_23_Res;
  wire [0:0]util_vector_logic_2_Res;
  wire [0:0]util_vector_logic_3_Res;
  wire [0:0]util_vector_logic_4_Res;
  wire [0:0]util_vector_logic_5_Res;
  wire [0:0]util_vector_logic_6_Res;
  wire [0:0]util_vector_logic_7_Res;
  wire [0:0]util_vector_logic_8_Res;
  wire [0:0]util_vector_logic_9_Res;

  assign A0_1 = A0;
  assign A1_1 = A1;
  assign A2_1 = A2;
  assign A3_1 = A3;
  assign MOD_0[0] = util_vector_logic_12_Res;
  assign MOD_1[0] = util_vector_logic_23_Res;
  BCD_modulo_3_util_vector_logic_0_11 util_vector_logic_0
       (.Op1(A0_1),
        .Res(util_vector_logic_0_Res));
  BCD_modulo_3_util_vector_logic_1_1 util_vector_logic_1
       (.Op1(A1_1),
        .Res(util_vector_logic_1_Res));
  BCD_modulo_3_util_vector_logic_10_3 util_vector_logic_10
       (.Op1(util_vector_logic_5_Res),
        .Op2(util_vector_logic_6_Res),
        .Res(util_vector_logic_10_Res));
  BCD_modulo_3_util_vector_logic_11_1 util_vector_logic_11
       (.Op1(util_vector_logic_10_Res),
        .Op2(util_vector_logic_9_Res),
        .Res(util_vector_logic_11_Res));
  BCD_modulo_3_util_vector_logic_12_2 util_vector_logic_12
       (.Op1(util_vector_logic_11_Res),
        .Op2(util_vector_logic_3_Res),
        .Res(util_vector_logic_12_Res));
  BCD_modulo_3_util_vector_logic_13_10 util_vector_logic_13
       (.Op1(util_vector_logic_0_Res),
        .Op2(A1_1),
        .Res(util_vector_logic_13_Res));
  BCD_modulo_3_util_vector_logic_14_4 util_vector_logic_14
       (.Op1(util_vector_logic_2_Res),
        .Op2(util_vector_logic_3_Res),
        .Res(util_vector_logic_14_Res));
  BCD_modulo_3_util_vector_logic_15_5 util_vector_logic_15
       (.Op1(util_vector_logic_13_Res),
        .Op2(util_vector_logic_14_Res),
        .Res(util_vector_logic_15_Res));
  BCD_modulo_3_util_vector_logic_16_3 util_vector_logic_16
       (.Op1(util_vector_logic_17_Res),
        .Op2(util_vector_logic_18_Res),
        .Res(util_vector_logic_16_Res));
  BCD_modulo_3_util_vector_logic_17_3 util_vector_logic_17
       (.Op1(A0_1),
        .Op2(util_vector_logic_1_Res),
        .Res(util_vector_logic_17_Res));
  BCD_modulo_3_util_vector_logic_18_1 util_vector_logic_18
       (.Op1(A2_1),
        .Op2(util_vector_logic_3_Res),
        .Res(util_vector_logic_18_Res));
  BCD_modulo_3_util_vector_logic_19_1 util_vector_logic_19
       (.Op1(util_vector_logic_21_Res),
        .Op2(util_vector_logic_20_Res),
        .Res(util_vector_logic_19_Res));
  BCD_modulo_3_util_vector_logic_2_1 util_vector_logic_2
       (.Op1(A2_1),
        .Res(util_vector_logic_2_Res));
  BCD_modulo_3_util_vector_logic_20_1 util_vector_logic_20
       (.Op1(util_vector_logic_2_Res),
        .Op2(A3_1),
        .Res(util_vector_logic_20_Res));
  BCD_modulo_3_util_vector_logic_21_1 util_vector_logic_21
       (.Op1(util_vector_logic_0_Res),
        .Op2(util_vector_logic_1_Res),
        .Res(util_vector_logic_21_Res));
  BCD_modulo_3_util_vector_logic_22_3 util_vector_logic_22
       (.Op1(util_vector_logic_15_Res),
        .Op2(util_vector_logic_16_Res),
        .Res(util_vector_logic_22_Res));
  BCD_modulo_3_util_vector_logic_23_1 util_vector_logic_23
       (.Op1(util_vector_logic_22_Res),
        .Op2(util_vector_logic_19_Res),
        .Res(util_vector_logic_23_Res));
  BCD_modulo_3_util_vector_logic_3_1 util_vector_logic_3
       (.Op1(A3_1),
        .Res(util_vector_logic_3_Res));
  BCD_modulo_3_util_vector_logic_4_18 util_vector_logic_4
       (.Op1(A0_1),
        .Op2(util_vector_logic_1_Res),
        .Res(util_vector_logic_4_Res));
  BCD_modulo_3_util_vector_logic_5_2 util_vector_logic_5
       (.Op1(util_vector_logic_4_Res),
        .Op2(util_vector_logic_2_Res),
        .Res(util_vector_logic_5_Res));
  BCD_modulo_3_util_vector_logic_6_1 util_vector_logic_6
       (.Op1(util_vector_logic_0_Res),
        .Op2(util_vector_logic_7_Res),
        .Res(util_vector_logic_6_Res));
  BCD_modulo_3_util_vector_logic_7_2 util_vector_logic_7
       (.Op1(A2_1),
        .Op2(util_vector_logic_1_Res),
        .Res(util_vector_logic_7_Res));
  BCD_modulo_3_util_vector_logic_8_1 util_vector_logic_8
       (.Op1(A0_1),
        .Op2(A1_1),
        .Res(util_vector_logic_8_Res));
  BCD_modulo_3_util_vector_logic_9_1 util_vector_logic_9
       (.Op1(util_vector_logic_8_Res),
        .Op2(A2_1),
        .Res(util_vector_logic_9_Res));
endmodule

module ONE_BCD_DIGIT_MOD3_imp_N79OTL
   (A0,
    A1,
    A2,
    A3,
    MOD_0,
    MOD_1);
  input A0;
  input A1;
  input A2;
  input A3;
  output [0:0]MOD_0;
  output [0:0]MOD_1;

  wire A0_1;
  wire A1_1;
  wire A2_1;
  wire A3_1;
  wire [0:0]util_vector_logic_0_Res;
  wire [0:0]util_vector_logic_10_Res;
  wire [0:0]util_vector_logic_11_Res;
  wire [0:0]util_vector_logic_12_Res;
  wire [0:0]util_vector_logic_13_Res;
  wire [0:0]util_vector_logic_14_Res;
  wire [0:0]util_vector_logic_15_Res;
  wire [0:0]util_vector_logic_16_Res;
  wire [0:0]util_vector_logic_17_Res;
  wire [0:0]util_vector_logic_18_Res;
  wire [0:0]util_vector_logic_19_Res;
  wire [0:0]util_vector_logic_1_Res;
  wire [0:0]util_vector_logic_20_Res;
  wire [0:0]util_vector_logic_21_Res;
  wire [0:0]util_vector_logic_22_Res;
  wire [0:0]util_vector_logic_23_Res;
  wire [0:0]util_vector_logic_2_Res;
  wire [0:0]util_vector_logic_3_Res;
  wire [0:0]util_vector_logic_4_Res;
  wire [0:0]util_vector_logic_5_Res;
  wire [0:0]util_vector_logic_6_Res;
  wire [0:0]util_vector_logic_7_Res;
  wire [0:0]util_vector_logic_8_Res;
  wire [0:0]util_vector_logic_9_Res;

  assign A0_1 = A0;
  assign A1_1 = A1;
  assign A2_1 = A2;
  assign A3_1 = A3;
  assign MOD_0[0] = util_vector_logic_12_Res;
  assign MOD_1[0] = util_vector_logic_23_Res;
  BCD_modulo_3_util_vector_logic_0_12 util_vector_logic_0
       (.Op1(A0_1),
        .Res(util_vector_logic_0_Res));
  BCD_modulo_3_util_vector_logic_1_2 util_vector_logic_1
       (.Op1(A1_1),
        .Res(util_vector_logic_1_Res));
  BCD_modulo_3_util_vector_logic_10_4 util_vector_logic_10
       (.Op1(util_vector_logic_5_Res),
        .Op2(util_vector_logic_6_Res),
        .Res(util_vector_logic_10_Res));
  BCD_modulo_3_util_vector_logic_11_2 util_vector_logic_11
       (.Op1(util_vector_logic_10_Res),
        .Op2(util_vector_logic_9_Res),
        .Res(util_vector_logic_11_Res));
  BCD_modulo_3_util_vector_logic_12_3 util_vector_logic_12
       (.Op1(util_vector_logic_11_Res),
        .Op2(util_vector_logic_3_Res),
        .Res(util_vector_logic_12_Res));
  BCD_modulo_3_util_vector_logic_13_11 util_vector_logic_13
       (.Op1(util_vector_logic_0_Res),
        .Op2(A1_1),
        .Res(util_vector_logic_13_Res));
  BCD_modulo_3_util_vector_logic_14_5 util_vector_logic_14
       (.Op1(util_vector_logic_2_Res),
        .Op2(util_vector_logic_3_Res),
        .Res(util_vector_logic_14_Res));
  BCD_modulo_3_util_vector_logic_15_6 util_vector_logic_15
       (.Op1(util_vector_logic_13_Res),
        .Op2(util_vector_logic_14_Res),
        .Res(util_vector_logic_15_Res));
  BCD_modulo_3_util_vector_logic_16_4 util_vector_logic_16
       (.Op1(util_vector_logic_17_Res),
        .Op2(util_vector_logic_18_Res),
        .Res(util_vector_logic_16_Res));
  BCD_modulo_3_util_vector_logic_17_4 util_vector_logic_17
       (.Op1(A0_1),
        .Op2(util_vector_logic_1_Res),
        .Res(util_vector_logic_17_Res));
  BCD_modulo_3_util_vector_logic_18_2 util_vector_logic_18
       (.Op1(A2_1),
        .Op2(util_vector_logic_3_Res),
        .Res(util_vector_logic_18_Res));
  BCD_modulo_3_util_vector_logic_19_2 util_vector_logic_19
       (.Op1(util_vector_logic_21_Res),
        .Op2(util_vector_logic_20_Res),
        .Res(util_vector_logic_19_Res));
  BCD_modulo_3_util_vector_logic_2_2 util_vector_logic_2
       (.Op1(A2_1),
        .Res(util_vector_logic_2_Res));
  BCD_modulo_3_util_vector_logic_20_2 util_vector_logic_20
       (.Op1(util_vector_logic_2_Res),
        .Op2(A3_1),
        .Res(util_vector_logic_20_Res));
  BCD_modulo_3_util_vector_logic_21_2 util_vector_logic_21
       (.Op1(util_vector_logic_0_Res),
        .Op2(util_vector_logic_1_Res),
        .Res(util_vector_logic_21_Res));
  BCD_modulo_3_util_vector_logic_22_4 util_vector_logic_22
       (.Op1(util_vector_logic_15_Res),
        .Op2(util_vector_logic_16_Res),
        .Res(util_vector_logic_22_Res));
  BCD_modulo_3_util_vector_logic_23_2 util_vector_logic_23
       (.Op1(util_vector_logic_22_Res),
        .Op2(util_vector_logic_19_Res),
        .Res(util_vector_logic_23_Res));
  BCD_modulo_3_util_vector_logic_3_2 util_vector_logic_3
       (.Op1(A3_1),
        .Res(util_vector_logic_3_Res));
  BCD_modulo_3_util_vector_logic_4_19 util_vector_logic_4
       (.Op1(A0_1),
        .Op2(util_vector_logic_1_Res),
        .Res(util_vector_logic_4_Res));
  BCD_modulo_3_util_vector_logic_5_3 util_vector_logic_5
       (.Op1(util_vector_logic_4_Res),
        .Op2(util_vector_logic_2_Res),
        .Res(util_vector_logic_5_Res));
  BCD_modulo_3_util_vector_logic_6_2 util_vector_logic_6
       (.Op1(util_vector_logic_0_Res),
        .Op2(util_vector_logic_7_Res),
        .Res(util_vector_logic_6_Res));
  BCD_modulo_3_util_vector_logic_7_3 util_vector_logic_7
       (.Op1(A2_1),
        .Op2(util_vector_logic_1_Res),
        .Res(util_vector_logic_7_Res));
  BCD_modulo_3_util_vector_logic_8_2 util_vector_logic_8
       (.Op1(A0_1),
        .Op2(A1_1),
        .Res(util_vector_logic_8_Res));
  BCD_modulo_3_util_vector_logic_9_2 util_vector_logic_9
       (.Op1(util_vector_logic_8_Res),
        .Op2(A2_1),
        .Res(util_vector_logic_9_Res));
endmodule

module ONE_BCD_DIGIT_MOD_imp_IL4AD9
   (A0,
    A1,
    A2,
    A3,
    MOD_0,
    MOD_1);
  input A0;
  input A1;
  input A2;
  input A3;
  output [0:0]MOD_0;
  output [0:0]MOD_1;

  wire A0_1;
  wire A1_1;
  wire A2_1;
  wire A3_1;
  wire [0:0]util_vector_logic_0_Res;
  wire [0:0]util_vector_logic_10_Res;
  wire [0:0]util_vector_logic_11_Res;
  wire [0:0]util_vector_logic_12_Res;
  wire [0:0]util_vector_logic_13_Res;
  wire [0:0]util_vector_logic_14_Res;
  wire [0:0]util_vector_logic_15_Res;
  wire [0:0]util_vector_logic_16_Res;
  wire [0:0]util_vector_logic_17_Res;
  wire [0:0]util_vector_logic_18_Res;
  wire [0:0]util_vector_logic_19_Res;
  wire [0:0]util_vector_logic_1_Res;
  wire [0:0]util_vector_logic_20_Res;
  wire [0:0]util_vector_logic_21_Res;
  wire [0:0]util_vector_logic_22_Res;
  wire [0:0]util_vector_logic_23_Res;
  wire [0:0]util_vector_logic_2_Res;
  wire [0:0]util_vector_logic_3_Res;
  wire [0:0]util_vector_logic_4_Res;
  wire [0:0]util_vector_logic_5_Res;
  wire [0:0]util_vector_logic_6_Res;
  wire [0:0]util_vector_logic_7_Res;
  wire [0:0]util_vector_logic_8_Res;
  wire [0:0]util_vector_logic_9_Res;

  assign A0_1 = A0;
  assign A1_1 = A1;
  assign A2_1 = A2;
  assign A3_1 = A3;
  assign MOD_0[0] = util_vector_logic_12_Res;
  assign MOD_1[0] = util_vector_logic_23_Res;
  BCD_modulo_3_util_vector_logic_0_2 util_vector_logic_0
       (.Op1(A0_1),
        .Res(util_vector_logic_0_Res));
  BCD_modulo_3_util_vector_logic_0_3 util_vector_logic_1
       (.Op1(A1_1),
        .Res(util_vector_logic_1_Res));
  BCD_modulo_3_util_vector_logic_10_0 util_vector_logic_10
       (.Op1(util_vector_logic_5_Res),
        .Op2(util_vector_logic_6_Res),
        .Res(util_vector_logic_10_Res));
  BCD_modulo_3_util_vector_logic_10_1 util_vector_logic_11
       (.Op1(util_vector_logic_10_Res),
        .Op2(util_vector_logic_9_Res),
        .Res(util_vector_logic_11_Res));
  BCD_modulo_3_util_vector_logic_12_0 util_vector_logic_12
       (.Op1(util_vector_logic_11_Res),
        .Op2(util_vector_logic_3_Res),
        .Res(util_vector_logic_12_Res));
  BCD_modulo_3_util_vector_logic_13_0 util_vector_logic_13
       (.Op1(util_vector_logic_0_Res),
        .Op2(A1_1),
        .Res(util_vector_logic_13_Res));
  BCD_modulo_3_util_vector_logic_13_1 util_vector_logic_14
       (.Op1(util_vector_logic_2_Res),
        .Op2(util_vector_logic_3_Res),
        .Res(util_vector_logic_14_Res));
  BCD_modulo_3_util_vector_logic_13_2 util_vector_logic_15
       (.Op1(util_vector_logic_13_Res),
        .Op2(util_vector_logic_14_Res),
        .Res(util_vector_logic_15_Res));
  BCD_modulo_3_util_vector_logic_13_3 util_vector_logic_16
       (.Op1(util_vector_logic_17_Res),
        .Op2(util_vector_logic_18_Res),
        .Res(util_vector_logic_16_Res));
  BCD_modulo_3_util_vector_logic_14_0 util_vector_logic_17
       (.Op1(A0_1),
        .Op2(util_vector_logic_1_Res),
        .Res(util_vector_logic_17_Res));
  BCD_modulo_3_util_vector_logic_15_0 util_vector_logic_18
       (.Op1(A2_1),
        .Op2(util_vector_logic_3_Res),
        .Res(util_vector_logic_18_Res));
  BCD_modulo_3_util_vector_logic_13_4 util_vector_logic_19
       (.Op1(util_vector_logic_21_Res),
        .Op2(util_vector_logic_20_Res),
        .Res(util_vector_logic_19_Res));
  BCD_modulo_3_util_vector_logic_0_4 util_vector_logic_2
       (.Op1(A2_1),
        .Res(util_vector_logic_2_Res));
  BCD_modulo_3_util_vector_logic_14_1 util_vector_logic_20
       (.Op1(util_vector_logic_2_Res),
        .Op2(A3_1),
        .Res(util_vector_logic_20_Res));
  BCD_modulo_3_util_vector_logic_15_1 util_vector_logic_21
       (.Op1(util_vector_logic_0_Res),
        .Op2(util_vector_logic_1_Res),
        .Res(util_vector_logic_21_Res));
  BCD_modulo_3_util_vector_logic_22_0 util_vector_logic_22
       (.Op1(util_vector_logic_15_Res),
        .Op2(util_vector_logic_16_Res),
        .Res(util_vector_logic_22_Res));
  BCD_modulo_3_util_vector_logic_22_1 util_vector_logic_23
       (.Op1(util_vector_logic_22_Res),
        .Op2(util_vector_logic_19_Res),
        .Res(util_vector_logic_23_Res));
  BCD_modulo_3_util_vector_logic_0_5 util_vector_logic_3
       (.Op1(A3_1),
        .Res(util_vector_logic_3_Res));
  BCD_modulo_3_util_vector_logic_4_1 util_vector_logic_4
       (.Op1(A0_1),
        .Op2(util_vector_logic_1_Res),
        .Res(util_vector_logic_4_Res));
  BCD_modulo_3_util_vector_logic_4_2 util_vector_logic_5
       (.Op1(util_vector_logic_4_Res),
        .Op2(util_vector_logic_2_Res),
        .Res(util_vector_logic_5_Res));
  BCD_modulo_3_util_vector_logic_4_3 util_vector_logic_6
       (.Op1(util_vector_logic_0_Res),
        .Op2(util_vector_logic_7_Res),
        .Res(util_vector_logic_6_Res));
  BCD_modulo_3_util_vector_logic_4_4 util_vector_logic_7
       (.Op1(A2_1),
        .Op2(util_vector_logic_1_Res),
        .Res(util_vector_logic_7_Res));
  BCD_modulo_3_util_vector_logic_4_5 util_vector_logic_8
       (.Op1(A0_1),
        .Op2(A1_1),
        .Res(util_vector_logic_8_Res));
  BCD_modulo_3_util_vector_logic_4_6 util_vector_logic_9
       (.Op1(util_vector_logic_8_Res),
        .Op2(A2_1),
        .Res(util_vector_logic_9_Res));
endmodule

module add_mode_3_imp_ABO60A
   (A0,
    A1,
    B0,
    B1,
    mod_0,
    mod_1);
  input A0;
  input A1;
  input B0;
  input B1;
  output [0:0]mod_0;
  output [0:0]mod_1;

  wire A0_1;
  wire A1_1;
  wire B0_1;
  wire B1_1;
  wire [0:0]util_vector_logic_0_Res;
  wire [0:0]util_vector_logic_10_Res;
  wire [0:0]util_vector_logic_11_Res;
  wire [0:0]util_vector_logic_12_Res;
  wire [0:0]util_vector_logic_13_Res;
  wire [0:0]util_vector_logic_14_Res;
  wire [0:0]util_vector_logic_15_Res;
  wire [0:0]util_vector_logic_16_Res;
  wire [0:0]util_vector_logic_17_Res;
  wire [0:0]util_vector_logic_18_Res;
  wire [0:0]util_vector_logic_19_Res;
  wire [0:0]util_vector_logic_1_Res;
  wire [0:0]util_vector_logic_20_Res;
  wire [0:0]util_vector_logic_21_Res;
  wire [0:0]util_vector_logic_22_Res;
  wire [0:0]util_vector_logic_23_Res;
  wire [0:0]util_vector_logic_24_Res;
  wire [0:0]util_vector_logic_25_Res;
  wire [0:0]util_vector_logic_2_Res;
  wire [0:0]util_vector_logic_3_Res;
  wire [0:0]util_vector_logic_4_Res;
  wire [0:0]util_vector_logic_5_Res;
  wire [0:0]util_vector_logic_6_Res;
  wire [0:0]util_vector_logic_7_Res;
  wire [0:0]util_vector_logic_8_Res;
  wire [0:0]util_vector_logic_9_Res;

  assign A0_1 = A0;
  assign A1_1 = A1;
  assign B0_1 = B0;
  assign B1_1 = B1;
  assign mod_0[0] = util_vector_logic_24_Res;
  assign mod_1[0] = util_vector_logic_14_Res;
  BCD_modulo_3_util_vector_logic_0_7 util_vector_logic_0
       (.Op1(A0_1),
        .Res(util_vector_logic_0_Res));
  BCD_modulo_3_util_vector_logic_0_8 util_vector_logic_1
       (.Op1(A1_1),
        .Res(util_vector_logic_1_Res));
  BCD_modulo_3_util_vector_logic_4_14 util_vector_logic_10
       (.Op1(util_vector_logic_0_Res),
        .Op2(util_vector_logic_1_Res),
        .Res(util_vector_logic_10_Res));
  BCD_modulo_3_util_vector_logic_4_15 util_vector_logic_11
       (.Op1(util_vector_logic_3_Res),
        .Op2(B1_1),
        .Res(util_vector_logic_11_Res));
  BCD_modulo_3_util_vector_logic_4_16 util_vector_logic_12
       (.Op1(util_vector_logic_10_Res),
        .Op2(util_vector_logic_11_Res),
        .Res(util_vector_logic_12_Res));
  BCD_modulo_3_util_vector_logic_13_7 util_vector_logic_13
       (.Op1(util_vector_logic_6_Res),
        .Op2(util_vector_logic_9_Res),
        .Res(util_vector_logic_13_Res));
  BCD_modulo_3_util_vector_logic_13_8 util_vector_logic_14
       (.Op1(util_vector_logic_13_Res),
        .Op2(util_vector_logic_12_Res),
        .Res(util_vector_logic_14_Res));
  BCD_modulo_3_util_vector_logic_4_17 util_vector_logic_15
       (.Op1(A0_1),
        .Op2(util_vector_logic_1_Res),
        .Res(util_vector_logic_15_Res));
  BCD_modulo_3_util_vector_logic_5_1 util_vector_logic_16
       (.Op1(util_vector_logic_2_Res),
        .Op2(util_vector_logic_3_Res),
        .Res(util_vector_logic_16_Res));
  BCD_modulo_3_util_vector_logic_7_1 util_vector_logic_17
       (.Op1(util_vector_logic_15_Res),
        .Op2(util_vector_logic_16_Res),
        .Res(util_vector_logic_17_Res));
  BCD_modulo_3_util_vector_logic_15_3 util_vector_logic_18
       (.Op1(util_vector_logic_20_Res),
        .Op2(util_vector_logic_19_Res),
        .Res(util_vector_logic_18_Res));
  BCD_modulo_3_util_vector_logic_16_1 util_vector_logic_19
       (.Op1(B0_1),
        .Op2(util_vector_logic_3_Res),
        .Res(util_vector_logic_19_Res));
  BCD_modulo_3_util_vector_logic_0_9 util_vector_logic_2
       (.Op1(B0_1),
        .Res(util_vector_logic_2_Res));
  BCD_modulo_3_util_vector_logic_17_1 util_vector_logic_20
       (.Op1(util_vector_logic_0_Res),
        .Op2(util_vector_logic_1_Res),
        .Res(util_vector_logic_20_Res));
  BCD_modulo_3_util_vector_logic_15_4 util_vector_logic_21
       (.Op1(util_vector_logic_23_Res),
        .Op2(util_vector_logic_22_Res),
        .Res(util_vector_logic_21_Res));
  BCD_modulo_3_util_vector_logic_16_2 util_vector_logic_22
       (.Op1(util_vector_logic_2_Res),
        .Op2(B1_1),
        .Res(util_vector_logic_22_Res));
  BCD_modulo_3_util_vector_logic_17_2 util_vector_logic_23
       (.Op1(util_vector_logic_0_Res),
        .Op2(A1_1),
        .Res(util_vector_logic_23_Res));
  BCD_modulo_3_util_vector_logic_13_9 util_vector_logic_24
       (.Op1(util_vector_logic_25_Res),
        .Op2(util_vector_logic_21_Res),
        .Res(util_vector_logic_24_Res));
  BCD_modulo_3_util_vector_logic_14_3 util_vector_logic_25
       (.Op1(util_vector_logic_17_Res),
        .Op2(util_vector_logic_18_Res),
        .Res(util_vector_logic_25_Res));
  BCD_modulo_3_util_vector_logic_0_10 util_vector_logic_3
       (.Op1(B1_1),
        .Res(util_vector_logic_3_Res));
  BCD_modulo_3_util_vector_logic_4_8 util_vector_logic_4
       (.Op1(util_vector_logic_2_Res),
        .Op2(util_vector_logic_3_Res),
        .Res(util_vector_logic_4_Res));
  BCD_modulo_3_util_vector_logic_4_9 util_vector_logic_5
       (.Op1(util_vector_logic_0_Res),
        .Op2(A1_1),
        .Res(util_vector_logic_5_Res));
  BCD_modulo_3_util_vector_logic_4_10 util_vector_logic_6
       (.Op1(util_vector_logic_4_Res),
        .Op2(util_vector_logic_5_Res),
        .Res(util_vector_logic_6_Res));
  BCD_modulo_3_util_vector_logic_4_11 util_vector_logic_7
       (.Op1(A0_1),
        .Op2(util_vector_logic_1_Res),
        .Res(util_vector_logic_7_Res));
  BCD_modulo_3_util_vector_logic_4_12 util_vector_logic_8
       (.Op1(B0_1),
        .Op2(util_vector_logic_3_Res),
        .Res(util_vector_logic_8_Res));
  BCD_modulo_3_util_vector_logic_4_13 util_vector_logic_9
       (.Op1(util_vector_logic_7_Res),
        .Op2(util_vector_logic_8_Res),
        .Res(util_vector_logic_9_Res));
endmodule

module add_mode_4_imp_OHRAYA
   (A0,
    A1,
    B0,
    B1,
    mod_0,
    mod_1);
  input A0;
  input A1;
  input B0;
  input B1;
  output [0:0]mod_0;
  output [0:0]mod_1;

  wire A0_1;
  wire A1_1;
  wire B0_1;
  wire B1_1;
  wire [0:0]util_vector_logic_0_Res;
  wire [0:0]util_vector_logic_10_Res;
  wire [0:0]util_vector_logic_11_Res;
  wire [0:0]util_vector_logic_12_Res;
  wire [0:0]util_vector_logic_13_Res;
  wire [0:0]util_vector_logic_14_Res;
  wire [0:0]util_vector_logic_15_Res;
  wire [0:0]util_vector_logic_16_Res;
  wire [0:0]util_vector_logic_17_Res;
  wire [0:0]util_vector_logic_18_Res;
  wire [0:0]util_vector_logic_19_Res;
  wire [0:0]util_vector_logic_1_Res;
  wire [0:0]util_vector_logic_20_Res;
  wire [0:0]util_vector_logic_21_Res;
  wire [0:0]util_vector_logic_22_Res;
  wire [0:0]util_vector_logic_23_Res;
  wire [0:0]util_vector_logic_24_Res;
  wire [0:0]util_vector_logic_25_Res;
  wire [0:0]util_vector_logic_2_Res;
  wire [0:0]util_vector_logic_3_Res;
  wire [0:0]util_vector_logic_4_Res;
  wire [0:0]util_vector_logic_5_Res;
  wire [0:0]util_vector_logic_6_Res;
  wire [0:0]util_vector_logic_7_Res;
  wire [0:0]util_vector_logic_8_Res;
  wire [0:0]util_vector_logic_9_Res;

  assign A0_1 = A0;
  assign A1_1 = A1;
  assign B0_1 = B0;
  assign B1_1 = B1;
  assign mod_0[0] = util_vector_logic_24_Res;
  assign mod_1[0] = util_vector_logic_14_Res;
  BCD_modulo_3_util_vector_logic_0_13 util_vector_logic_0
       (.Op1(A0_1),
        .Res(util_vector_logic_0_Res));
  BCD_modulo_3_util_vector_logic_1_3 util_vector_logic_1
       (.Op1(A1_1),
        .Res(util_vector_logic_1_Res));
  BCD_modulo_3_util_vector_logic_10_5 util_vector_logic_10
       (.Op1(util_vector_logic_0_Res),
        .Op2(util_vector_logic_1_Res),
        .Res(util_vector_logic_10_Res));
  BCD_modulo_3_util_vector_logic_11_3 util_vector_logic_11
       (.Op1(util_vector_logic_3_Res),
        .Op2(B1_1),
        .Res(util_vector_logic_11_Res));
  BCD_modulo_3_util_vector_logic_12_4 util_vector_logic_12
       (.Op1(util_vector_logic_10_Res),
        .Op2(util_vector_logic_11_Res),
        .Res(util_vector_logic_12_Res));
  BCD_modulo_3_util_vector_logic_13_12 util_vector_logic_13
       (.Op1(util_vector_logic_6_Res),
        .Op2(util_vector_logic_9_Res),
        .Res(util_vector_logic_13_Res));
  BCD_modulo_3_util_vector_logic_14_6 util_vector_logic_14
       (.Op1(util_vector_logic_13_Res),
        .Op2(util_vector_logic_12_Res),
        .Res(util_vector_logic_14_Res));
  BCD_modulo_3_util_vector_logic_15_7 util_vector_logic_15
       (.Op1(A0_1),
        .Op2(util_vector_logic_1_Res),
        .Res(util_vector_logic_15_Res));
  BCD_modulo_3_util_vector_logic_16_5 util_vector_logic_16
       (.Op1(util_vector_logic_2_Res),
        .Op2(util_vector_logic_3_Res),
        .Res(util_vector_logic_16_Res));
  BCD_modulo_3_util_vector_logic_17_5 util_vector_logic_17
       (.Op1(util_vector_logic_15_Res),
        .Op2(util_vector_logic_16_Res),
        .Res(util_vector_logic_17_Res));
  BCD_modulo_3_util_vector_logic_18_3 util_vector_logic_18
       (.Op1(util_vector_logic_20_Res),
        .Op2(util_vector_logic_19_Res),
        .Res(util_vector_logic_18_Res));
  BCD_modulo_3_util_vector_logic_19_3 util_vector_logic_19
       (.Op1(B0_1),
        .Op2(util_vector_logic_3_Res),
        .Res(util_vector_logic_19_Res));
  BCD_modulo_3_util_vector_logic_2_3 util_vector_logic_2
       (.Op1(B0_1),
        .Res(util_vector_logic_2_Res));
  BCD_modulo_3_util_vector_logic_20_3 util_vector_logic_20
       (.Op1(util_vector_logic_0_Res),
        .Op2(util_vector_logic_1_Res),
        .Res(util_vector_logic_20_Res));
  BCD_modulo_3_util_vector_logic_21_3 util_vector_logic_21
       (.Op1(util_vector_logic_23_Res),
        .Op2(util_vector_logic_22_Res),
        .Res(util_vector_logic_21_Res));
  BCD_modulo_3_util_vector_logic_22_5 util_vector_logic_22
       (.Op1(util_vector_logic_2_Res),
        .Op2(B1_1),
        .Res(util_vector_logic_22_Res));
  BCD_modulo_3_util_vector_logic_23_3 util_vector_logic_23
       (.Op1(util_vector_logic_0_Res),
        .Op2(A1_1),
        .Res(util_vector_logic_23_Res));
  BCD_modulo_3_util_vector_logic_24_0 util_vector_logic_24
       (.Op1(util_vector_logic_25_Res),
        .Op2(util_vector_logic_21_Res),
        .Res(util_vector_logic_24_Res));
  BCD_modulo_3_util_vector_logic_25_0 util_vector_logic_25
       (.Op1(util_vector_logic_17_Res),
        .Op2(util_vector_logic_18_Res),
        .Res(util_vector_logic_25_Res));
  BCD_modulo_3_util_vector_logic_3_3 util_vector_logic_3
       (.Op1(B1_1),
        .Res(util_vector_logic_3_Res));
  BCD_modulo_3_util_vector_logic_4_20 util_vector_logic_4
       (.Op1(util_vector_logic_2_Res),
        .Op2(util_vector_logic_3_Res),
        .Res(util_vector_logic_4_Res));
  BCD_modulo_3_util_vector_logic_5_4 util_vector_logic_5
       (.Op1(util_vector_logic_0_Res),
        .Op2(A1_1),
        .Res(util_vector_logic_5_Res));
  BCD_modulo_3_util_vector_logic_6_3 util_vector_logic_6
       (.Op1(util_vector_logic_4_Res),
        .Op2(util_vector_logic_5_Res),
        .Res(util_vector_logic_6_Res));
  BCD_modulo_3_util_vector_logic_7_4 util_vector_logic_7
       (.Op1(A0_1),
        .Op2(util_vector_logic_1_Res),
        .Res(util_vector_logic_7_Res));
  BCD_modulo_3_util_vector_logic_8_3 util_vector_logic_8
       (.Op1(B0_1),
        .Op2(util_vector_logic_3_Res),
        .Res(util_vector_logic_8_Res));
  BCD_modulo_3_util_vector_logic_9_3 util_vector_logic_9
       (.Op1(util_vector_logic_7_Res),
        .Op2(util_vector_logic_8_Res),
        .Res(util_vector_logic_9_Res));
endmodule

module add_mode_5_imp_114MNJR
   (A0,
    A1,
    B0,
    B1,
    mod_0,
    mod_1);
  input A0;
  input A1;
  input B0;
  input B1;
  output [0:0]mod_0;
  output [0:0]mod_1;

  wire A0_1;
  wire A1_1;
  wire B0_1;
  wire B1_1;
  wire [0:0]util_vector_logic_0_Res;
  wire [0:0]util_vector_logic_10_Res;
  wire [0:0]util_vector_logic_11_Res;
  wire [0:0]util_vector_logic_12_Res;
  wire [0:0]util_vector_logic_13_Res;
  wire [0:0]util_vector_logic_14_Res;
  wire [0:0]util_vector_logic_15_Res;
  wire [0:0]util_vector_logic_16_Res;
  wire [0:0]util_vector_logic_17_Res;
  wire [0:0]util_vector_logic_18_Res;
  wire [0:0]util_vector_logic_19_Res;
  wire [0:0]util_vector_logic_1_Res;
  wire [0:0]util_vector_logic_20_Res;
  wire [0:0]util_vector_logic_21_Res;
  wire [0:0]util_vector_logic_22_Res;
  wire [0:0]util_vector_logic_23_Res;
  wire [0:0]util_vector_logic_24_Res;
  wire [0:0]util_vector_logic_25_Res;
  wire [0:0]util_vector_logic_2_Res;
  wire [0:0]util_vector_logic_3_Res;
  wire [0:0]util_vector_logic_4_Res;
  wire [0:0]util_vector_logic_5_Res;
  wire [0:0]util_vector_logic_6_Res;
  wire [0:0]util_vector_logic_7_Res;
  wire [0:0]util_vector_logic_8_Res;
  wire [0:0]util_vector_logic_9_Res;

  assign A0_1 = A0;
  assign A1_1 = A1;
  assign B0_1 = B0;
  assign B1_1 = B1;
  assign mod_0[0] = util_vector_logic_24_Res;
  assign mod_1[0] = util_vector_logic_14_Res;
  BCD_modulo_3_util_vector_logic_0_14 util_vector_logic_0
       (.Op1(A0_1),
        .Res(util_vector_logic_0_Res));
  BCD_modulo_3_util_vector_logic_1_4 util_vector_logic_1
       (.Op1(A1_1),
        .Res(util_vector_logic_1_Res));
  BCD_modulo_3_util_vector_logic_10_6 util_vector_logic_10
       (.Op1(util_vector_logic_0_Res),
        .Op2(util_vector_logic_1_Res),
        .Res(util_vector_logic_10_Res));
  BCD_modulo_3_util_vector_logic_11_4 util_vector_logic_11
       (.Op1(util_vector_logic_3_Res),
        .Op2(B1_1),
        .Res(util_vector_logic_11_Res));
  BCD_modulo_3_util_vector_logic_12_5 util_vector_logic_12
       (.Op1(util_vector_logic_10_Res),
        .Op2(util_vector_logic_11_Res),
        .Res(util_vector_logic_12_Res));
  BCD_modulo_3_util_vector_logic_13_13 util_vector_logic_13
       (.Op1(util_vector_logic_6_Res),
        .Op2(util_vector_logic_9_Res),
        .Res(util_vector_logic_13_Res));
  BCD_modulo_3_util_vector_logic_14_7 util_vector_logic_14
       (.Op1(util_vector_logic_13_Res),
        .Op2(util_vector_logic_12_Res),
        .Res(util_vector_logic_14_Res));
  BCD_modulo_3_util_vector_logic_15_8 util_vector_logic_15
       (.Op1(A0_1),
        .Op2(util_vector_logic_1_Res),
        .Res(util_vector_logic_15_Res));
  BCD_modulo_3_util_vector_logic_16_6 util_vector_logic_16
       (.Op1(util_vector_logic_2_Res),
        .Op2(util_vector_logic_3_Res),
        .Res(util_vector_logic_16_Res));
  BCD_modulo_3_util_vector_logic_17_6 util_vector_logic_17
       (.Op1(util_vector_logic_15_Res),
        .Op2(util_vector_logic_16_Res),
        .Res(util_vector_logic_17_Res));
  BCD_modulo_3_util_vector_logic_18_4 util_vector_logic_18
       (.Op1(util_vector_logic_20_Res),
        .Op2(util_vector_logic_19_Res),
        .Res(util_vector_logic_18_Res));
  BCD_modulo_3_util_vector_logic_19_4 util_vector_logic_19
       (.Op1(B0_1),
        .Op2(util_vector_logic_3_Res),
        .Res(util_vector_logic_19_Res));
  BCD_modulo_3_util_vector_logic_2_4 util_vector_logic_2
       (.Op1(B0_1),
        .Res(util_vector_logic_2_Res));
  BCD_modulo_3_util_vector_logic_20_4 util_vector_logic_20
       (.Op1(util_vector_logic_0_Res),
        .Op2(util_vector_logic_1_Res),
        .Res(util_vector_logic_20_Res));
  BCD_modulo_3_util_vector_logic_21_4 util_vector_logic_21
       (.Op1(util_vector_logic_23_Res),
        .Op2(util_vector_logic_22_Res),
        .Res(util_vector_logic_21_Res));
  BCD_modulo_3_util_vector_logic_22_6 util_vector_logic_22
       (.Op1(util_vector_logic_2_Res),
        .Op2(B1_1),
        .Res(util_vector_logic_22_Res));
  BCD_modulo_3_util_vector_logic_23_4 util_vector_logic_23
       (.Op1(util_vector_logic_0_Res),
        .Op2(A1_1),
        .Res(util_vector_logic_23_Res));
  BCD_modulo_3_util_vector_logic_24_1 util_vector_logic_24
       (.Op1(util_vector_logic_25_Res),
        .Op2(util_vector_logic_21_Res),
        .Res(util_vector_logic_24_Res));
  BCD_modulo_3_util_vector_logic_25_1 util_vector_logic_25
       (.Op1(util_vector_logic_17_Res),
        .Op2(util_vector_logic_18_Res),
        .Res(util_vector_logic_25_Res));
  BCD_modulo_3_util_vector_logic_3_4 util_vector_logic_3
       (.Op1(B1_1),
        .Res(util_vector_logic_3_Res));
  BCD_modulo_3_util_vector_logic_4_21 util_vector_logic_4
       (.Op1(util_vector_logic_2_Res),
        .Op2(util_vector_logic_3_Res),
        .Res(util_vector_logic_4_Res));
  BCD_modulo_3_util_vector_logic_5_5 util_vector_logic_5
       (.Op1(util_vector_logic_0_Res),
        .Op2(A1_1),
        .Res(util_vector_logic_5_Res));
  BCD_modulo_3_util_vector_logic_6_4 util_vector_logic_6
       (.Op1(util_vector_logic_4_Res),
        .Op2(util_vector_logic_5_Res),
        .Res(util_vector_logic_6_Res));
  BCD_modulo_3_util_vector_logic_7_5 util_vector_logic_7
       (.Op1(A0_1),
        .Op2(util_vector_logic_1_Res),
        .Res(util_vector_logic_7_Res));
  BCD_modulo_3_util_vector_logic_8_4 util_vector_logic_8
       (.Op1(B0_1),
        .Op2(util_vector_logic_3_Res),
        .Res(util_vector_logic_8_Res));
  BCD_modulo_3_util_vector_logic_9_4 util_vector_logic_9
       (.Op1(util_vector_logic_7_Res),
        .Op2(util_vector_logic_8_Res),
        .Res(util_vector_logic_9_Res));
endmodule
