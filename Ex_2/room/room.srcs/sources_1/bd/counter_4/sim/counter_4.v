//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
//Date        : Mon Oct 26 12:01:41 2020
//Host        : DESKTOP-4NPEG9F running 64-bit major release  (build 9200)
//Command     : generate_target counter_4.bd
//Design      : counter_4
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module DFF_imp_1EUD4QC
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
  nand_3_0_imp_X1GRAL nand_3_0
       (.in1(clear_bar_1),
        .in2(util_vector_logic_0_Res),
        .out_n(in1_2));
  nand_3_1_imp_16EO2DV nand_3_1
       (.in1(in1_1),
        .in2(D_1),
        .n_out(nand_3_1_n_out));
  nand_3_2_imp_W5HWCW nand_3_2
       (.in1(nand_3_1_n_out),
        .in2(in2_1),
        .out_n(nand_3_2_out_n));
  nand_3_3_imp_17BLV72 nand_3_3
       (.in1(clear_bar_1),
        .in2(nand_3_2_out_n),
        .out_n(nand_3_3_out_n));
  nand_3_4_imp_Z8J4UV nand_3_4
       (.in1(in1_2),
        .in2(nand_3_3_out_n),
        .out_n(in1_1));
  nand_3_5_imp_14ARGX5 nand_3_5
       (.in1(in1_2),
        .in2(in2_2),
        .out_n(in2_1));
  nand_3_6_imp_XV1KYY nand_3_6
       (.in1(in1_1),
        .in2(nand_3_7_out_n),
        .out_n(nand_3_6_out_n));
  nand_3_7_imp_15K5CUS nand_3_7
       (.in1(nand_3_6_out_n),
        .in2(in2_1),
        .out_n(nand_3_7_out_n));
  counter_4_not_0_2 not_0
       (.Op1(nand_3_3_out_n),
        .Res(in2_2));
  counter_4_not_1_2 not_1
       (.Op1(clock_1),
        .Res(util_vector_logic_0_Res));
endmodule

module DFF_imp_1KFF5YN
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
  nand_3_0_imp_JEVIO nand_3_0
       (.in1(clear_bar_1),
        .in2(util_vector_logic_0_Res),
        .out_n(in1_2));
  nand_3_1_imp_1U3C8J2 nand_3_1
       (.in1(in1_1),
        .in2(D_1),
        .n_out(nand_3_1_n_out));
  nand_3_2_imp_1E42ZX nand_3_2
       (.in1(nand_3_1_n_out),
        .in2(in2_1),
        .out_n(nand_3_2_out_n));
  nand_3_3_imp_1T53DOZ nand_3_3
       (.in1(clear_bar_1),
        .in2(nand_3_2_out_n),
        .out_n(nand_3_3_out_n));
  nand_3_4_imp_28XI7E nand_3_4
       (.in1(in1_2),
        .in2(nand_3_3_out_n),
        .out_n(in1_1));
  nand_3_5_imp_1SBTYZ8 nand_3_5
       (.in1(in1_2),
        .in2(in2_2),
        .out_n(in2_1));
  nand_3_6_imp_3L87RR nand_3_6
       (.in1(in1_1),
        .in2(nand_3_7_out_n),
        .out_n(nand_3_6_out_n));
  nand_3_7_imp_1R17U5L nand_3_7
       (.in1(nand_3_6_out_n),
        .in2(in2_1),
        .out_n(nand_3_7_out_n));
  counter_4_not_0_3 not_0
       (.Op1(nand_3_3_out_n),
        .Res(in2_2));
  counter_4_not_1_3 not_1
       (.Op1(clock_1),
        .Res(util_vector_logic_0_Res));
endmodule

module DFF_imp_BPGZSY
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
  nand_3_0_imp_1TLDCL5 nand_3_0
       (.in1(clear_bar_1),
        .in2(util_vector_logic_0_Res),
        .out_n(in1_2));
  nand_3_1_imp_10ETVR nand_3_1
       (.in1(in1_1),
        .in2(D_1),
        .n_out(nand_3_1_n_out));
  nand_3_2_imp_1SJ3MX0 nand_3_2
       (.in1(nand_3_1_n_out),
        .in2(in2_1),
        .out_n(nand_3_2_out_n));
  nand_3_3_imp_212RY2 nand_3_3
       (.in1(clear_bar_1),
        .in2(nand_3_2_out_n),
        .out_n(nand_3_3_out_n));
  nand_3_4_imp_1ROX1FN nand_3_4
       (.in1(in1_2),
        .in2(nand_3_3_out_n),
        .out_n(in1_1));
  nand_3_5_imp_2UYB3X nand_3_5
       (.in1(in1_2),
        .in2(in2_2),
        .out_n(in2_1));
  nand_3_6_imp_1QK6U2M nand_3_6
       (.in1(in1_1),
        .in2(nand_3_7_out_n),
        .out_n(nand_3_6_out_n));
  nand_3_7_imp_435COW nand_3_7
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

module DFF_imp_NY6U1L
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
  nand_3_0_imp_16VCLVO nand_3_0
       (.in1(clear_bar_1),
        .in2(util_vector_logic_0_Res),
        .out_n(in1_2));
  nand_3_1_imp_WJ6GHM nand_3_1
       (.in1(in1_1),
        .in2(D_1),
        .n_out(nand_3_1_n_out));
  nand_3_2_imp_17YVZ09 nand_3_2
       (.in1(nand_3_1_n_out),
        .in2(in2_1),
        .out_n(nand_3_2_out_n));
  nand_3_3_imp_VJTKG7 nand_3_3
       (.in1(clear_bar_1),
        .in2(nand_3_2_out_n),
        .out_n(nand_3_3_out_n));
  nand_3_4_imp_14WGUYM nand_3_4
       (.in1(in1_2),
        .in2(nand_3_3_out_n),
        .out_n(in1_1));
  nand_3_5_imp_YLASG0 nand_3_5
       (.in1(in1_2),
        .in2(in2_2),
        .out_n(in2_1));
  nand_3_6_imp_162DWN7 nand_3_6
       (.in1(in1_1),
        .in2(nand_3_7_out_n),
        .out_n(nand_3_6_out_n));
  nand_3_7_imp_XEBZR1 nand_3_7
       (.in1(nand_3_6_out_n),
        .in2(in2_1),
        .out_n(nand_3_7_out_n));
  counter_4_not_0_4 not_0
       (.Op1(nand_3_3_out_n),
        .Res(in2_2));
  counter_4_not_1_4 not_1
       (.Op1(clock_1),
        .Res(util_vector_logic_0_Res));
endmodule

module JK_FF_0_imp_WEXMUM
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
  DFF_imp_BPGZSY DFF
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

module JK_FF_1_imp_170XEQ8
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
  DFF_imp_1EUD4QC DFF
       (.D(or_0_Res),
        .Q(DFF_Q),
        .Q_bar(DFF_Q_bar),
        .clear_bar(clear_bar_1),
        .clock(clock_1));
  counter_4_and_0_1 and_0
       (.Op1(J_1),
        .Op2(DFF_Q_bar),
        .Res(and_0_Res));
  counter_4_and_1_0 and_1
       (.Op1(util_vector_logic_0_Res),
        .Op2(DFF_Q),
        .Res(and_1_Res));
  counter_4_or_0_0 or_0
       (.Op1(and_0_Res),
        .Op2(and_1_Res),
        .Res(or_0_Res));
  counter_4_util_vector_logic_0_52 util_vector_logic_0
       (.Op1(K_1),
        .Res(util_vector_logic_0_Res));
endmodule

module JK_FF_2_imp_V497TF
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
  DFF_imp_1KFF5YN DFF
       (.D(or_0_Res),
        .Q(DFF_Q),
        .Q_bar(DFF_Q_bar),
        .clear_bar(clear_bar_1),
        .clock(clock_1));
  counter_4_and_0_2 and_0
       (.Op1(J_1),
        .Op2(DFF_Q_bar),
        .Res(and_0_Res));
  counter_4_and_1_1 and_1
       (.Op1(util_vector_logic_0_Res),
        .Op2(DFF_Q),
        .Res(and_1_Res));
  counter_4_or_0_1 or_0
       (.Op1(and_0_Res),
        .Op2(and_1_Res),
        .Res(or_0_Res));
  counter_4_util_vector_logic_0_61 util_vector_logic_0
       (.Op1(K_1),
        .Res(util_vector_logic_0_Res));
endmodule

module JK_FF_3_imp_18D4FL9
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
  DFF_imp_NY6U1L DFF
       (.D(or_0_Res),
        .Q(DFF_Q),
        .Q_bar(DFF_Q_bar),
        .clear_bar(clear_bar_1),
        .clock(clock_1));
  counter_4_and_0_3 and_0
       (.Op1(J_1),
        .Op2(DFF_Q_bar),
        .Res(and_0_Res));
  counter_4_and_1_2 and_1
       (.Op1(util_vector_logic_0_Res),
        .Op2(DFF_Q),
        .Res(and_1_Res));
  counter_4_or_0_2 or_0
       (.Op1(and_0_Res),
        .Op2(and_1_Res),
        .Res(or_0_Res));
  counter_4_util_vector_logic_0_70 util_vector_logic_0
       (.Op1(K_1),
        .Res(util_vector_logic_0_Res));
endmodule

(* CORE_GENERATION_INFO = "counter_4,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=counter_4,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=144,numReposBlks=104,numNonXlnxBlks=0,numHierBlks=40,maxHierDepth=3,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "counter_4.hwdef" *) 
module counter_4
   (Enable,
    Q0,
    Q1,
    Q2,
    Q3,
    U,
    clear_bar,
    clock);
  input Enable;
  output [0:0]Q0;
  output [0:0]Q1;
  output [0:0]Q2;
  output [0:0]Q3;
  input U;
  input clear_bar;
  input clock;

  wire Enable_1;
  wire [0:0]JK_FF_0_Q;
  wire [0:0]JK_FF_0_Q_bar;
  wire [0:0]JK_FF_1_Q;
  wire [0:0]JK_FF_1_Q_bar;
  wire [0:0]JK_FF_2_Q;
  wire [0:0]JK_FF_2_Q_bar;
  wire [0:0]JK_FF_3_Q;
  wire U_1;
  wire [0:0]and_0_Res;
  wire [0:0]and_1_Res;
  wire [0:0]and_2_Res;
  wire [0:0]and_3_Res;
  wire [0:0]and_4_Res;
  wire [0:0]and_5_Res;
  wire [0:0]and_6_Res;
  wire [0:0]and_7_Res;
  wire [0:0]and_8_Res;
  wire [0:0]and_9_Res;
  wire clear_bar_1;
  wire clock_1;
  wire [0:0]not_0_Res;
  wire [0:0]not_1_Res;
  wire [0:0]or_0_Res;
  wire [0:0]or_1_Res;
  wire [0:0]or_2_Res;
  wire [0:0]util_vector_logic_0_Res;

  assign Enable_1 = Enable;
  assign Q0[0] = JK_FF_0_Q;
  assign Q1[0] = JK_FF_1_Q;
  assign Q2[0] = JK_FF_2_Q;
  assign Q3[0] = JK_FF_3_Q;
  assign U_1 = U;
  assign clear_bar_1 = clear_bar;
  assign clock_1 = clock;
  JK_FF_0_imp_WEXMUM JK_FF_0
       (.J(and_6_Res),
        .K(and_6_Res),
        .Q(JK_FF_0_Q),
        .Q_bar(JK_FF_0_Q_bar),
        .clear_bar(clear_bar_1),
        .clock(clock_1));
  JK_FF_1_imp_170XEQ8 JK_FF_1
       (.J(and_7_Res),
        .K(and_7_Res),
        .Q(JK_FF_1_Q),
        .Q_bar(JK_FF_1_Q_bar),
        .clear_bar(clear_bar_1),
        .clock(clock_1));
  JK_FF_2_imp_V497TF JK_FF_2
       (.J(and_8_Res),
        .K(and_8_Res),
        .Q(JK_FF_2_Q),
        .Q_bar(JK_FF_2_Q_bar),
        .clear_bar(clear_bar_1),
        .clock(clock_1));
  JK_FF_3_imp_18D4FL9 JK_FF_3
       (.J(and_9_Res),
        .K(and_9_Res),
        .Q(JK_FF_3_Q),
        .clear_bar(clear_bar_1),
        .clock(clock_1));
  counter_4_util_vector_logic_0_72 and_0
       (.Op1(U_1),
        .Op2(JK_FF_0_Q),
        .Res(and_0_Res));
  counter_4_util_vector_logic_0_73 and_1
       (.Op1(JK_FF_0_Q_bar),
        .Op2(not_1_Res),
        .Res(and_1_Res));
  counter_4_and_0_5 and_2
       (.Op1(and_0_Res),
        .Op2(JK_FF_1_Q),
        .Res(and_2_Res));
  counter_4_and_0_6 and_3
       (.Op1(JK_FF_1_Q_bar),
        .Op2(and_1_Res),
        .Res(and_3_Res));
  counter_4_and_2_0 and_4
       (.Op1(and_2_Res),
        .Op2(JK_FF_2_Q),
        .Res(and_4_Res));
  counter_4_and_2_1 and_5
       (.Op1(JK_FF_2_Q_bar),
        .Op2(and_3_Res),
        .Res(and_5_Res));
  counter_4_and_0_7 and_6
       (.Op1(not_0_Res),
        .Op2(Enable_1),
        .Res(and_6_Res));
  counter_4_and_0_8 and_7
       (.Op1(or_0_Res),
        .Op2(Enable_1),
        .Res(and_7_Res));
  counter_4_and_2_2 and_8
       (.Op1(or_1_Res),
        .Op2(Enable_1),
        .Res(and_8_Res));
  counter_4_and_4_0 and_9
       (.Op1(or_2_Res),
        .Op2(Enable_1),
        .Res(and_9_Res));
  counter_4_util_vector_logic_1_0 not_0
       (.Op1(util_vector_logic_0_Res),
        .Res(not_0_Res));
  counter_4_not_0_5 not_1
       (.Op1(U_1),
        .Res(not_1_Res));
  counter_4_and_0_4 or_0
       (.Op1(and_0_Res),
        .Op2(and_1_Res),
        .Res(or_0_Res));
  counter_4_or_0_3 or_1
       (.Op1(and_2_Res),
        .Op2(and_3_Res),
        .Res(or_1_Res));
  counter_4_or_1_0 or_2
       (.Op1(and_4_Res),
        .Op2(and_5_Res),
        .Res(or_2_Res));
  counter_4_util_vector_logic_0_71 xor_0
       (.Op1(clear_bar_1),
        .Op2(clear_bar_1),
        .Res(util_vector_logic_0_Res));
endmodule

module nand_3_0_imp_16VCLVO
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
  counter_4_util_vector_logic_0_62 util_vector_logic_0
       (.Op1(in1_1),
        .Op2(in2_1),
        .Res(util_vector_logic_0_Res));
  counter_4_util_vector_logic_2_54 util_vector_logic_2
       (.Op1(util_vector_logic_0_Res),
        .Res(util_vector_logic_2_Res));
endmodule

module nand_3_0_imp_1TLDCL5
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

module nand_3_0_imp_JEVIO
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
  counter_4_util_vector_logic_0_53 util_vector_logic_0
       (.Op1(in1_1),
        .Op2(in2_1),
        .Res(util_vector_logic_0_Res));
  counter_4_util_vector_logic_2_46 util_vector_logic_2
       (.Op1(util_vector_logic_0_Res),
        .Res(util_vector_logic_2_Res));
endmodule

module nand_3_0_imp_X1GRAL
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
  counter_4_util_vector_logic_0_44 util_vector_logic_0
       (.Op1(in1_1),
        .Op2(in2_1),
        .Res(util_vector_logic_0_Res));
  counter_4_util_vector_logic_2_38 util_vector_logic_2
       (.Op1(util_vector_logic_0_Res),
        .Res(util_vector_logic_2_Res));
endmodule

module nand_3_1_imp_10ETVR
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

module nand_3_1_imp_16EO2DV
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
  counter_4_util_vector_logic_0_45 util_vector_logic_0
       (.Op1(in1_1),
        .Op2(in2_1),
        .Res(util_vector_logic_0_Res));
  counter_4_util_vector_logic_2_39 util_vector_logic_2
       (.Op1(util_vector_logic_0_Res),
        .Res(util_vector_logic_2_Res));
endmodule

module nand_3_1_imp_1U3C8J2
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
  counter_4_util_vector_logic_0_54 util_vector_logic_0
       (.Op1(in1_1),
        .Op2(in2_1),
        .Res(util_vector_logic_0_Res));
  counter_4_util_vector_logic_2_47 util_vector_logic_2
       (.Op1(util_vector_logic_0_Res),
        .Res(util_vector_logic_2_Res));
endmodule

module nand_3_1_imp_WJ6GHM
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
  counter_4_util_vector_logic_0_63 util_vector_logic_0
       (.Op1(in1_1),
        .Op2(in2_1),
        .Res(util_vector_logic_0_Res));
  counter_4_util_vector_logic_2_55 util_vector_logic_2
       (.Op1(util_vector_logic_0_Res),
        .Res(util_vector_logic_2_Res));
endmodule

module nand_3_2_imp_17YVZ09
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
  counter_4_util_vector_logic_0_64 util_vector_logic_0
       (.Op1(in1_1),
        .Op2(in2_1),
        .Res(util_vector_logic_0_Res));
  counter_4_util_vector_logic_2_56 util_vector_logic_2
       (.Op1(util_vector_logic_0_Res),
        .Res(util_vector_logic_2_Res));
endmodule

module nand_3_2_imp_1E42ZX
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
  counter_4_util_vector_logic_0_55 util_vector_logic_0
       (.Op1(in1_1),
        .Op2(in2_1),
        .Res(util_vector_logic_0_Res));
  counter_4_util_vector_logic_2_48 util_vector_logic_2
       (.Op1(util_vector_logic_0_Res),
        .Res(util_vector_logic_2_Res));
endmodule

module nand_3_2_imp_1SJ3MX0
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

module nand_3_2_imp_W5HWCW
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
  counter_4_util_vector_logic_0_46 util_vector_logic_0
       (.Op1(in1_1),
        .Op2(in2_1),
        .Res(util_vector_logic_0_Res));
  counter_4_util_vector_logic_2_40 util_vector_logic_2
       (.Op1(util_vector_logic_0_Res),
        .Res(util_vector_logic_2_Res));
endmodule

module nand_3_3_imp_17BLV72
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
  counter_4_util_vector_logic_0_47 util_vector_logic_0
       (.Op1(in1_1),
        .Op2(in2_1),
        .Res(util_vector_logic_0_Res));
  counter_4_util_vector_logic_2_41 util_vector_logic_2
       (.Op1(util_vector_logic_0_Res),
        .Res(util_vector_logic_2_Res));
endmodule

module nand_3_3_imp_1T53DOZ
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
  counter_4_util_vector_logic_0_56 util_vector_logic_0
       (.Op1(in1_1),
        .Op2(in2_1),
        .Res(util_vector_logic_0_Res));
  counter_4_util_vector_logic_2_49 util_vector_logic_2
       (.Op1(util_vector_logic_0_Res),
        .Res(util_vector_logic_2_Res));
endmodule

module nand_3_3_imp_212RY2
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

module nand_3_3_imp_VJTKG7
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
  counter_4_util_vector_logic_0_65 util_vector_logic_0
       (.Op1(in1_1),
        .Op2(in2_1),
        .Res(util_vector_logic_0_Res));
  counter_4_util_vector_logic_2_57 util_vector_logic_2
       (.Op1(util_vector_logic_0_Res),
        .Res(util_vector_logic_2_Res));
endmodule

module nand_3_4_imp_14WGUYM
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
  counter_4_util_vector_logic_0_66 util_vector_logic_0
       (.Op1(in1_1),
        .Op2(in2_1),
        .Res(util_vector_logic_0_Res));
  counter_4_util_vector_logic_2_58 util_vector_logic_2
       (.Op1(util_vector_logic_0_Res),
        .Res(util_vector_logic_2_Res));
endmodule

module nand_3_4_imp_1ROX1FN
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

module nand_3_4_imp_28XI7E
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
  counter_4_util_vector_logic_0_57 util_vector_logic_0
       (.Op1(in1_1),
        .Op2(in2_1),
        .Res(util_vector_logic_0_Res));
  counter_4_util_vector_logic_2_50 util_vector_logic_2
       (.Op1(util_vector_logic_0_Res),
        .Res(util_vector_logic_2_Res));
endmodule

module nand_3_4_imp_Z8J4UV
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
  counter_4_util_vector_logic_0_48 util_vector_logic_0
       (.Op1(in1_1),
        .Op2(in2_1),
        .Res(util_vector_logic_0_Res));
  counter_4_util_vector_logic_2_42 util_vector_logic_2
       (.Op1(util_vector_logic_0_Res),
        .Res(util_vector_logic_2_Res));
endmodule

module nand_3_5_imp_14ARGX5
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
  counter_4_util_vector_logic_0_49 util_vector_logic_0
       (.Op1(in1_1),
        .Op2(in2_1),
        .Res(util_vector_logic_0_Res));
  counter_4_util_vector_logic_2_43 util_vector_logic_2
       (.Op1(util_vector_logic_0_Res),
        .Res(util_vector_logic_2_Res));
endmodule

module nand_3_5_imp_1SBTYZ8
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
  counter_4_util_vector_logic_0_58 util_vector_logic_0
       (.Op1(in1_1),
        .Op2(in2_1),
        .Res(util_vector_logic_0_Res));
  counter_4_util_vector_logic_2_51 util_vector_logic_2
       (.Op1(util_vector_logic_0_Res),
        .Res(util_vector_logic_2_Res));
endmodule

module nand_3_5_imp_2UYB3X
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

module nand_3_5_imp_YLASG0
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
  counter_4_util_vector_logic_0_67 util_vector_logic_0
       (.Op1(in1_1),
        .Op2(in2_1),
        .Res(util_vector_logic_0_Res));
  counter_4_util_vector_logic_2_59 util_vector_logic_2
       (.Op1(util_vector_logic_0_Res),
        .Res(util_vector_logic_2_Res));
endmodule

module nand_3_6_imp_162DWN7
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
  counter_4_util_vector_logic_0_68 util_vector_logic_0
       (.Op1(in1_1),
        .Op2(in2_1),
        .Res(util_vector_logic_0_Res));
  counter_4_util_vector_logic_2_60 util_vector_logic_2
       (.Op1(util_vector_logic_0_Res),
        .Res(util_vector_logic_2_Res));
endmodule

module nand_3_6_imp_1QK6U2M
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

module nand_3_6_imp_3L87RR
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
  counter_4_util_vector_logic_0_59 util_vector_logic_0
       (.Op1(in1_1),
        .Op2(in2_1),
        .Res(util_vector_logic_0_Res));
  counter_4_util_vector_logic_2_52 util_vector_logic_2
       (.Op1(util_vector_logic_0_Res),
        .Res(util_vector_logic_2_Res));
endmodule

module nand_3_6_imp_XV1KYY
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
  counter_4_util_vector_logic_0_50 util_vector_logic_0
       (.Op1(in1_1),
        .Op2(in2_1),
        .Res(util_vector_logic_0_Res));
  counter_4_util_vector_logic_2_44 util_vector_logic_2
       (.Op1(util_vector_logic_0_Res),
        .Res(util_vector_logic_2_Res));
endmodule

module nand_3_7_imp_15K5CUS
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
  counter_4_util_vector_logic_0_51 util_vector_logic_0
       (.Op1(in1_1),
        .Op2(in2_1),
        .Res(util_vector_logic_0_Res));
  counter_4_util_vector_logic_2_45 util_vector_logic_2
       (.Op1(util_vector_logic_0_Res),
        .Res(util_vector_logic_2_Res));
endmodule

module nand_3_7_imp_1R17U5L
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
  counter_4_util_vector_logic_0_60 util_vector_logic_0
       (.Op1(in1_1),
        .Op2(in2_1),
        .Res(util_vector_logic_0_Res));
  counter_4_util_vector_logic_2_53 util_vector_logic_2
       (.Op1(util_vector_logic_0_Res),
        .Res(util_vector_logic_2_Res));
endmodule

module nand_3_7_imp_435COW
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

module nand_3_7_imp_XEBZR1
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
  counter_4_util_vector_logic_0_69 util_vector_logic_0
       (.Op1(in1_1),
        .Op2(in2_1),
        .Res(util_vector_logic_0_Res));
  counter_4_util_vector_logic_2_61 util_vector_logic_2
       (.Op1(util_vector_logic_0_Res),
        .Res(util_vector_logic_2_Res));
endmodule
