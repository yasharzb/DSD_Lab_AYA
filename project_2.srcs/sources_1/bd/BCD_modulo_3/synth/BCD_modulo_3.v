//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
//Date        : Tue Oct 20 12:11:00 2020
//Host        : DESKTOP-4NPEG9F running 64-bit major release  (build 9200)
//Command     : generate_target BCD_modulo_3.bd
//Design      : BCD_modulo_3
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "BCD_modulo_3,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=BCD_modulo_3,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=25,numReposBlks=24,numNonXlnxBlks=0,numHierBlks=1,maxHierDepth=1,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "BCD_modulo_3.hwdef" *) 
module BCD_modulo_3
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

  wire A0_1;
  wire A1_1;
  wire A2_1;
  wire A3_1;
  wire [0:0]ONE_BCD_DIGIT_MOD_MOD_0;
  wire [0:0]ONE_BCD_DIGIT_MOD_MOD_1;

  assign A0_1 = A0;
  assign A1_1 = A1;
  assign A2_1 = A2;
  assign A3_1 = A3;
  assign mod_0[0] = ONE_BCD_DIGIT_MOD_MOD_0;
  assign mod_1[0] = ONE_BCD_DIGIT_MOD_MOD_1;
  ONE_BCD_DIGIT_MOD_imp_IL4AD9 ONE_BCD_DIGIT_MOD
       (.A0(A0_1),
        .A1(A1_1),
        .A2(A2_1),
        .A3(A3_1),
        .MOD_0(ONE_BCD_DIGIT_MOD_MOD_0),
        .MOD_1(ONE_BCD_DIGIT_MOD_MOD_1));
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
