//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
//Date        : Mon Oct 26 10:39:37 2020
//Host        : DESKTOP-4NPEG9F running 64-bit major release  (build 9200)
//Command     : generate_target counter_4.bd
//Design      : counter_4
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module DFF_imp_KIICIG
   (D,
    Q,
    Q_bar,
    clear_bar,
    clock);
  input D;
  output [0:0]Q;
  output [0:0]Q_bar;
  input clear_bar;
  input clock;

  wire D_1;
  wire clear_bar_1;
  wire clock_1;
  wire [0:0]in1_1;
  wire [0:0]in1_2;
  wire [0:0]in2_1;
  wire [0:0]in2_2;
  wire [0:0]nand_3_1_n_out;
  wire [0:0]nand_3_2_out_n;
  wire [0:0]nand_3_3_out_n;
  wire [0:0]nand_3_6_out_n;
  wire [0:0]nand_3_7_out_n;
  wire [0:0]util_vector_logic_0_Res;

  assign D_1 = D;
  assign Q[0] = nand_3_7_out_n;
  assign Q_bar[0] = nand_3_6_out_n;
  assign clear_bar_1 = clear_bar;
  assign clock_1 = clock;
  nand_3_0_imp_17H4RY0 nand_3_0
       (.in1(clear_bar_1),
        .in2(util_vector_logic_0_Res),
        .out_n(in1_2));
  nand_3_1_imp_W16JBA nand_3_1
       (.in1(in1_1),
        .in2(D_1),
        .n_out(nand_3_1_n_out));
  nand_3_2_imp_168ZU4L nand_3_2
       (.in1(nand_3_1_n_out),
        .in2(in2_1),
        .out_n(nand_3_2_out_n));
  nand_3_3_imp_X5XG1N nand_3_3
       (.in1(clear_bar_1),
        .in2(nand_3_2_out_n),
        .out_n(nand_3_3_out_n));
  nand_3_4_imp_15FVCAQ nand_3_4
       (.in1(in1_2),
        .in2(nand_3_3_out_n),
        .out_n(in1_1));
  nand_3_5_imp_Y0LY64 nand_3_5
       (.in1(in1_2),
        .in2(in2_2),
        .out_n(in2_1));
  nand_3_6_imp_14F6P1B nand_3_6
       (.in1(in1_1),
        .in2(nand_3_7_out_n),
        .out_n(nand_3_6_out_n));
  nand_3_7_imp_Z2TJWH nand_3_7
       (.in1(nand_3_6_out_n),
        .in2(in2_1),
        .out_n(nand_3_7_out_n));
  counter_4_not_0_1 not_0
       (.Op1(nand_3_3_out_n),
        .Res(in2_2));
  counter_4_not_1_1 not_1
       (.Op1(clock_1),
        .Res(util_vector_logic_0_Res));
endmodule

module JK_FF_imp_12BQQ8E
   (J,
    K,
    Q,
    Q_bar,
    clear_bar,
    clock);
  input J;
  input K;
  output [0:0]Q;
  output [0:0]Q_bar;
  input clear_bar;
  input clock;

  wire [0:0]DFF_Q;
  wire [0:0]DFF_Q_bar;
  wire J_1;
  wire K_1;
  wire [0:0]and_0_Res;
  wire [0:0]and_1_Res;
  wire clear_bar_1;
  wire clock_1;
  wire [0:0]or_0_Res;
  wire [0:0]util_vector_logic_0_Res;

  assign J_1 = J;
  assign K_1 = K;
  assign Q[0] = DFF_Q;
  assign Q_bar[0] = DFF_Q_bar;
  assign clear_bar_1 = clear_bar;
  assign clock_1 = clock;
  DFF_imp_KIICIG DFF
       (.D(or_0_Res),
        .Q(DFF_Q),
        .Q_bar(DFF_Q_bar),
        .clear_bar(clear_bar_1),
        .clock(clock_1));
  counter_4_util_vector_logic_0_41 and_0
       (.Op1(J_1),
        .Op2(DFF_Q_bar),
        .Res(and_0_Res));
  counter_4_and_0_0 and_1
       (.Op1(util_vector_logic_0_Res),
        .Op2(DFF_Q),
        .Res(and_1_Res));
  counter_4_util_vector_logic_0_42 or_0
       (.Op1(and_0_Res),
        .Op2(and_1_Res),
        .Res(or_0_Res));
  counter_4_util_vector_logic_0_43 util_vector_logic_0
       (.Op1(K_1),
        .Res(util_vector_logic_0_Res));
endmodule

(* CORE_GENERATION_INFO = "counter_4,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=counter_4,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=32,numReposBlks=22,numNonXlnxBlks=0,numHierBlks=10,maxHierDepth=3,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "counter_4.hwdef" *) 
module counter_4
   (D,
    Q,
    Q_bar,
    clear_bar,
    clock);
  input D;
  output [0:0]Q;
  output [0:0]Q_bar;
  input clear_bar;
  input clock;

  wire D_1;
  wire [0:0]JK_FF_Q;
  wire [0:0]JK_FF_Q_bar;
  wire clear_bar_1;
  wire clock_1;

  assign D_1 = D;
  assign Q[0] = JK_FF_Q;
  assign Q_bar[0] = JK_FF_Q_bar;
  assign clear_bar_1 = clear_bar;
  assign clock_1 = clock;
  JK_FF_imp_12BQQ8E JK_FF
       (.J(D_1),
        .K(D_1),
        .Q(JK_FF_Q),
        .Q_bar(JK_FF_Q_bar),
        .clear_bar(clear_bar_1),
        .clock(clock_1));
endmodule

module nand_3_0_imp_17H4RY0
   (in1,
    in2,
    out_n);
  input in1;
  input in2;
  output [0:0]out_n;

  wire in1_1;
  wire in2_1;
  wire [0:0]util_vector_logic_0_Res;
  wire [0:0]util_vector_logic_2_Res;

  assign in1_1 = in1;
  assign in2_1 = in2;
  assign out_n[0] = util_vector_logic_2_Res;
  counter_4_util_vector_logic_0_33 util_vector_logic_0
       (.Op1(in1_1),
        .Op2(in2_1),
        .Res(util_vector_logic_0_Res));
  counter_4_util_vector_logic_2_30 util_vector_logic_2
       (.Op1(util_vector_logic_0_Res),
        .Res(util_vector_logic_2_Res));
endmodule

module nand_3_1_imp_W16JBA
   (in1,
    in2,
    n_out);
  input [0:0]in1;
  input in2;
  output [0:0]n_out;

  wire [0:0]in1_1;
  wire in2_1;
  wire [0:0]util_vector_logic_0_Res;
  wire [0:0]util_vector_logic_2_Res;

  assign in1_1 = in1[0];
  assign in2_1 = in2;
  assign n_out[0] = util_vector_logic_2_Res;
  counter_4_util_vector_logic_0_34 util_vector_logic_0
       (.Op1(in1_1),
        .Op2(in2_1),
        .Res(util_vector_logic_0_Res));
  counter_4_util_vector_logic_2_31 util_vector_logic_2
       (.Op1(util_vector_logic_0_Res),
        .Res(util_vector_logic_2_Res));
endmodule

module nand_3_2_imp_168ZU4L
   (in1,
    in2,
    out_n);
  input in1;
  input in2;
  output [0:0]out_n;

  wire in1_1;
  wire in2_1;
  wire [0:0]util_vector_logic_0_Res;
  wire [0:0]util_vector_logic_2_Res;

  assign in1_1 = in1;
  assign in2_1 = in2;
  assign out_n[0] = util_vector_logic_2_Res;
  counter_4_util_vector_logic_0_35 util_vector_logic_0
       (.Op1(in1_1),
        .Op2(in2_1),
        .Res(util_vector_logic_0_Res));
  counter_4_util_vector_logic_2_32 util_vector_logic_2
       (.Op1(util_vector_logic_0_Res),
        .Res(util_vector_logic_2_Res));
endmodule

module nand_3_3_imp_X5XG1N
   (in1,
    in2,
    out_n);
  input in1;
  input in2;
  output [0:0]out_n;

  wire in1_1;
  wire in2_1;
  wire [0:0]util_vector_logic_0_Res;
  wire [0:0]util_vector_logic_2_Res;

  assign in1_1 = in1;
  assign in2_1 = in2;
  assign out_n[0] = util_vector_logic_2_Res;
  counter_4_util_vector_logic_0_36 util_vector_logic_0
       (.Op1(in1_1),
        .Op2(in2_1),
        .Res(util_vector_logic_0_Res));
  counter_4_util_vector_logic_2_33 util_vector_logic_2
       (.Op1(util_vector_logic_0_Res),
        .Res(util_vector_logic_2_Res));
endmodule

module nand_3_4_imp_15FVCAQ
   (in1,
    in2,
    out_n);
  input in1;
  input in2;
  output [0:0]out_n;

  wire in1_1;
  wire in2_1;
  wire [0:0]util_vector_logic_0_Res;
  wire [0:0]util_vector_logic_2_Res;

  assign in1_1 = in1;
  assign in2_1 = in2;
  assign out_n[0] = util_vector_logic_2_Res;
  counter_4_util_vector_logic_0_37 util_vector_logic_0
       (.Op1(in1_1),
        .Op2(in2_1),
        .Res(util_vector_logic_0_Res));
  counter_4_util_vector_logic_2_34 util_vector_logic_2
       (.Op1(util_vector_logic_0_Res),
        .Res(util_vector_logic_2_Res));
endmodule

module nand_3_5_imp_Y0LY64
   (in1,
    in2,
    out_n);
  input in1;
  input in2;
  output [0:0]out_n;

  wire in1_1;
  wire in2_1;
  wire [0:0]util_vector_logic_0_Res;
  wire [0:0]util_vector_logic_2_Res;

  assign in1_1 = in1;
  assign in2_1 = in2;
  assign out_n[0] = util_vector_logic_2_Res;
  counter_4_util_vector_logic_0_38 util_vector_logic_0
       (.Op1(in1_1),
        .Op2(in2_1),
        .Res(util_vector_logic_0_Res));
  counter_4_util_vector_logic_2_35 util_vector_logic_2
       (.Op1(util_vector_logic_0_Res),
        .Res(util_vector_logic_2_Res));
endmodule

module nand_3_6_imp_14F6P1B
   (in1,
    in2,
    out_n);
  input in1;
  input in2;
  output [0:0]out_n;

  wire in1_1;
  wire in2_1;
  wire [0:0]util_vector_logic_0_Res;
  wire [0:0]util_vector_logic_2_Res;

  assign in1_1 = in1;
  assign in2_1 = in2;
  assign out_n[0] = util_vector_logic_2_Res;
  counter_4_util_vector_logic_0_39 util_vector_logic_0
       (.Op1(in1_1),
        .Op2(in2_1),
        .Res(util_vector_logic_0_Res));
  counter_4_util_vector_logic_2_36 util_vector_logic_2
       (.Op1(util_vector_logic_0_Res),
        .Res(util_vector_logic_2_Res));
endmodule

module nand_3_7_imp_Z2TJWH
   (in1,
    in2,
    out_n);
  input in1;
  input in2;
  output [0:0]out_n;

  wire in1_1;
  wire in2_1;
  wire [0:0]util_vector_logic_0_Res;
  wire [0:0]util_vector_logic_2_Res;

  assign in1_1 = in1;
  assign in2_1 = in2;
  assign out_n[0] = util_vector_logic_2_Res;
  counter_4_util_vector_logic_0_40 util_vector_logic_0
       (.Op1(in1_1),
        .Op2(in2_1),
        .Res(util_vector_logic_0_Res));
  counter_4_util_vector_logic_2_37 util_vector_logic_2
       (.Op1(util_vector_logic_0_Res),
        .Res(util_vector_logic_2_Res));
endmodule
