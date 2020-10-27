// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Tue Oct 27 09:39:49 2020
// Host        : LAPTOP-B8FRIN8D running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               C:/Users/Yasharzb/Documents/GitHub/DSD_Lab_AYA/Ex_2/room/room.sim/sim_1/synth/func/xsim/room_man_test_func_synth.v
// Design      : room_man
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module DFF_imp_1EUD4QC
   (Q1,
    Q_bar,
    clear_bar,
    in2,
    clock);
  output [0:0]Q1;
  output [0:0]Q_bar;
  input clear_bar;
  input in2;
  input clock;

  wire [0:0]Q1;
  wire [0:0]Q_bar;
  wire clear_bar;
  wire clock;
  wire in1_1;
  wire in1_2;
  wire in2;
  wire in2_1;
  wire in2_2;
  wire nand_3_1_n_out;
  wire nand_3_2_out_n;
  wire nand_3_3_out_n;
  wire util_vector_logic_0_Res;

  nand_3_0_imp_X1GRAL nand_3_0
       (.clear_bar(clear_bar),
        .in2(util_vector_logic_0_Res),
        .out_n(in1_2));
  nand_3_1_imp_16EO2DV nand_3_1
       (.in2(in2),
        .n_out(nand_3_1_n_out),
        .out_n(in1_1));
  nand_3_2_imp_W5HWCW nand_3_2
       (.\bbstub_Res[0] (nand_3_2_out_n),
        .in1(nand_3_1_n_out),
        .out_n(in2_1));
  nand_3_3_imp_17BLV72 nand_3_3
       (.clear_bar(clear_bar),
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
       (.Q1(Q1),
        .Q_bar(Q_bar),
        .in1(in1_1));
  nand_3_7_imp_15K5CUS nand_3_7
       (.Q1(Q1),
        .Q_bar(Q_bar),
        .in2(in2_1));
  (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
  counter_4_not_0_2 not_0
       (.Op1(nand_3_3_out_n),
        .Res(in2_2));
  (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
  counter_4_not_1_2 not_1
       (.Op1(clock),
        .Res(util_vector_logic_0_Res));
endmodule

module DFF_imp_1KFF5YN
   (Q2,
    Q_bar,
    clear_bar,
    in2,
    clock);
  output [0:0]Q2;
  output [0:0]Q_bar;
  input clear_bar;
  input in2;
  input clock;

  wire [0:0]Q2;
  wire [0:0]Q_bar;
  wire clear_bar;
  wire clock;
  wire in1_1;
  wire in1_2;
  wire in2;
  wire in2_1;
  wire in2_2;
  wire nand_3_1_n_out;
  wire nand_3_2_out_n;
  wire nand_3_3_out_n;
  wire util_vector_logic_0_Res;

  nand_3_0_imp_JEVIO nand_3_0
       (.clear_bar(clear_bar),
        .in2(util_vector_logic_0_Res),
        .out_n(in1_2));
  nand_3_1_imp_1U3C8J2 nand_3_1
       (.in2(in2),
        .n_out(nand_3_1_n_out),
        .out_n(in1_1));
  nand_3_2_imp_1E42ZX nand_3_2
       (.\bbstub_Res[0] (nand_3_2_out_n),
        .in1(nand_3_1_n_out),
        .out_n(in2_1));
  nand_3_3_imp_1T53DOZ nand_3_3
       (.clear_bar(clear_bar),
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
       (.Q2(Q2),
        .Q_bar(Q_bar),
        .in1(in1_1));
  nand_3_7_imp_1R17U5L nand_3_7
       (.Q2(Q2),
        .Q_bar(Q_bar),
        .in2(in2_1));
  (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
  counter_4_not_0_3 not_0
       (.Op1(nand_3_3_out_n),
        .Res(in2_2));
  (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
  counter_4_not_1_3 not_1
       (.Op1(clock),
        .Res(util_vector_logic_0_Res));
endmodule

module DFF_imp_BPGZSY
   (Q0,
    Q_bar,
    clear_bar,
    in2,
    clock);
  output [0:0]Q0;
  output [0:0]Q_bar;
  input clear_bar;
  input in2;
  input clock;

  wire [0:0]Q0;
  wire [0:0]Q_bar;
  wire clear_bar;
  wire clock;
  wire in1_1;
  wire in1_2;
  wire in2;
  wire in2_1;
  wire in2_2;
  wire nand_3_1_n_out;
  wire nand_3_2_out_n;
  wire nand_3_3_out_n;
  wire util_vector_logic_0_Res;

  nand_3_0_imp_1TLDCL5 nand_3_0
       (.clear_bar(clear_bar),
        .in2(util_vector_logic_0_Res),
        .out_n(in1_2));
  nand_3_1_imp_10ETVR nand_3_1
       (.in2(in2),
        .n_out(nand_3_1_n_out),
        .out_n(in1_1));
  nand_3_2_imp_1SJ3MX0 nand_3_2
       (.\bbstub_Res[0] (nand_3_2_out_n),
        .in1(nand_3_1_n_out),
        .out_n(in2_1));
  nand_3_3_imp_212RY2 nand_3_3
       (.clear_bar(clear_bar),
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
       (.Q0(Q0),
        .Q_bar(Q_bar),
        .in1(in1_1));
  nand_3_7_imp_435COW nand_3_7
       (.Q0(Q0),
        .Q_bar(Q_bar),
        .in2(in2_1));
  (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
  counter_4_not_0_1 not_0
       (.Op1(nand_3_3_out_n),
        .Res(in2_2));
  (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
  counter_4_not_1_1 not_1
       (.Op1(clock),
        .Res(util_vector_logic_0_Res));
endmodule

module DFF_imp_NY6U1L
   (Q3,
    out_n,
    clear_bar,
    in2,
    clock);
  output [0:0]Q3;
  output [0:0]out_n;
  input clear_bar;
  input in2;
  input clock;

  wire [0:0]Q3;
  wire clear_bar;
  wire clock;
  wire in1_1;
  wire in1_2;
  wire in2;
  wire in2_1;
  wire in2_2;
  wire nand_3_1_n_out;
  wire nand_3_2_out_n;
  wire nand_3_3_out_n;
  wire [0:0]out_n;
  wire util_vector_logic_0_Res;

  nand_3_0_imp_16VCLVO nand_3_0
       (.clear_bar(clear_bar),
        .in2(util_vector_logic_0_Res),
        .out_n(in1_2));
  nand_3_1_imp_WJ6GHM nand_3_1
       (.in2(in2),
        .n_out(nand_3_1_n_out),
        .out_n(in1_1));
  nand_3_2_imp_17YVZ09 nand_3_2
       (.\bbstub_Res[0] (nand_3_2_out_n),
        .in1(nand_3_1_n_out),
        .out_n(in2_1));
  nand_3_3_imp_VJTKG7 nand_3_3
       (.clear_bar(clear_bar),
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
       (.Q3(Q3),
        .in1(in1_1),
        .out_n(out_n));
  nand_3_7_imp_XEBZR1 nand_3_7
       (.Q3(Q3),
        .in2(in2_1),
        .out_n(out_n));
  (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
  counter_4_not_0_4 not_0
       (.Op1(nand_3_3_out_n),
        .Res(in2_2));
  (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
  counter_4_not_1_4 not_1
       (.Op1(clock),
        .Res(util_vector_logic_0_Res));
endmodule

module JK_FF_0_imp_WEXMUM
   (Q0,
    Q_bar,
    clear_bar,
    clock,
    K);
  output [0:0]Q0;
  output [0:0]Q_bar;
  input clear_bar;
  input clock;
  input K;

  wire K;
  wire [0:0]Q0;
  wire [0:0]Q_bar;
  wire and_0_Res;
  wire and_1_Res;
  wire clear_bar;
  wire clock;
  wire or_0_Res;
  wire util_vector_logic_0_Res;

  DFF_imp_BPGZSY DFF
       (.Q0(Q0),
        .Q_bar(Q_bar),
        .clear_bar(clear_bar),
        .clock(clock),
        .in2(or_0_Res));
  (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
  counter_4_util_vector_logic_0_41 and_0
       (.Op1(K),
        .Op2(Q_bar),
        .Res(and_0_Res));
  (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
  counter_4_and_0_0 and_1
       (.Op1(util_vector_logic_0_Res),
        .Op2(Q0),
        .Res(and_1_Res));
  (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
  counter_4_util_vector_logic_0_42 or_0
       (.Op1(and_0_Res),
        .Op2(and_1_Res),
        .Res(or_0_Res));
  (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
  counter_4_util_vector_logic_0_43 util_vector_logic_0
       (.Op1(K),
        .Res(util_vector_logic_0_Res));
endmodule

module JK_FF_1_imp_170XEQ8
   (Q1,
    Q_bar,
    clear_bar,
    clock,
    K);
  output [0:0]Q1;
  output [0:0]Q_bar;
  input clear_bar;
  input clock;
  input K;

  wire K;
  wire [0:0]Q1;
  wire [0:0]Q_bar;
  wire and_0_Res;
  wire and_1_Res;
  wire clear_bar;
  wire clock;
  wire or_0_Res;
  wire util_vector_logic_0_Res;

  DFF_imp_1EUD4QC DFF
       (.Q1(Q1),
        .Q_bar(Q_bar),
        .clear_bar(clear_bar),
        .clock(clock),
        .in2(or_0_Res));
  (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
  counter_4_and_0_1 and_0
       (.Op1(K),
        .Op2(Q_bar),
        .Res(and_0_Res));
  (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
  counter_4_and_1_0 and_1
       (.Op1(util_vector_logic_0_Res),
        .Op2(Q1),
        .Res(and_1_Res));
  (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
  counter_4_or_0_0 or_0
       (.Op1(and_0_Res),
        .Op2(and_1_Res),
        .Res(or_0_Res));
  (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
  counter_4_util_vector_logic_0_52 util_vector_logic_0
       (.Op1(K),
        .Res(util_vector_logic_0_Res));
endmodule

module JK_FF_2_imp_V497TF
   (Q2,
    Q_bar,
    clear_bar,
    clock,
    K);
  output [0:0]Q2;
  output [0:0]Q_bar;
  input clear_bar;
  input clock;
  input K;

  wire K;
  wire [0:0]Q2;
  wire [0:0]Q_bar;
  wire and_0_Res;
  wire and_1_Res;
  wire clear_bar;
  wire clock;
  wire or_0_Res;
  wire util_vector_logic_0_Res;

  DFF_imp_1KFF5YN DFF
       (.Q2(Q2),
        .Q_bar(Q_bar),
        .clear_bar(clear_bar),
        .clock(clock),
        .in2(or_0_Res));
  (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
  counter_4_and_0_2 and_0
       (.Op1(K),
        .Op2(Q_bar),
        .Res(and_0_Res));
  (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
  counter_4_and_1_1 and_1
       (.Op1(util_vector_logic_0_Res),
        .Op2(Q2),
        .Res(and_1_Res));
  (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
  counter_4_or_0_1 or_0
       (.Op1(and_0_Res),
        .Op2(and_1_Res),
        .Res(or_0_Res));
  (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
  counter_4_util_vector_logic_0_61 util_vector_logic_0
       (.Op1(K),
        .Res(util_vector_logic_0_Res));
endmodule

module JK_FF_3_imp_18D4FL9
   (Q3,
    clear_bar,
    clock,
    K);
  output [0:0]Q3;
  input clear_bar;
  input clock;
  input K;

  wire DFF_n_1;
  wire K;
  wire [0:0]Q3;
  wire and_0_Res;
  wire and_1_Res;
  wire clear_bar;
  wire clock;
  wire or_0_Res;
  wire util_vector_logic_0_Res;

  DFF_imp_NY6U1L DFF
       (.Q3(Q3),
        .clear_bar(clear_bar),
        .clock(clock),
        .in2(or_0_Res),
        .out_n(DFF_n_1));
  (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
  counter_4_and_0_3 and_0
       (.Op1(K),
        .Op2(DFF_n_1),
        .Res(and_0_Res));
  (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
  counter_4_and_1_2 and_1
       (.Op1(util_vector_logic_0_Res),
        .Op2(Q3),
        .Res(and_1_Res));
  (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
  counter_4_or_0_2 or_0
       (.Op1(and_0_Res),
        .Op2(and_1_Res),
        .Res(or_0_Res));
  (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
  counter_4_util_vector_logic_0_70 util_vector_logic_0
       (.Op1(K),
        .Res(util_vector_logic_0_Res));
endmodule

(* HW_HANDOFF = "counter_4.hwdef" *) 
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

  wire Enable;
  wire JK_FF_0_Q_bar;
  wire JK_FF_1_Q_bar;
  wire JK_FF_2_Q_bar;
  wire [0:0]Q0;
  wire [0:0]Q1;
  wire [0:0]Q2;
  wire [0:0]Q3;
  wire U;
  wire and_0_Res;
  wire and_1_Res;
  wire and_2_Res;
  wire and_3_Res;
  wire and_4_Res;
  wire and_5_Res;
  wire and_6_Res;
  wire and_7_Res;
  wire and_8_Res;
  wire and_9_Res;
  wire clear_bar;
  wire clock;
  wire not_0_Res;
  wire not_1_Res;
  wire or_0_Res;
  wire or_1_Res;
  wire or_2_Res;
  wire util_vector_logic_0_Res;

  JK_FF_0_imp_WEXMUM JK_FF_0
       (.K(and_6_Res),
        .Q0(Q0),
        .Q_bar(JK_FF_0_Q_bar),
        .clear_bar(clear_bar),
        .clock(clock));
  JK_FF_1_imp_170XEQ8 JK_FF_1
       (.K(and_7_Res),
        .Q1(Q1),
        .Q_bar(JK_FF_1_Q_bar),
        .clear_bar(clear_bar),
        .clock(clock));
  JK_FF_2_imp_V497TF JK_FF_2
       (.K(and_8_Res),
        .Q2(Q2),
        .Q_bar(JK_FF_2_Q_bar),
        .clear_bar(clear_bar),
        .clock(clock));
  JK_FF_3_imp_18D4FL9 JK_FF_3
       (.K(and_9_Res),
        .Q3(Q3),
        .clear_bar(clear_bar),
        .clock(clock));
  (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
  counter_4_util_vector_logic_0_72 and_0
       (.Op1(U),
        .Op2(Q0),
        .Res(and_0_Res));
  (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
  counter_4_util_vector_logic_0_73 and_1
       (.Op1(JK_FF_0_Q_bar),
        .Op2(not_1_Res),
        .Res(and_1_Res));
  (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
  counter_4_and_0_5 and_2
       (.Op1(and_0_Res),
        .Op2(Q1),
        .Res(and_2_Res));
  (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
  counter_4_and_0_6 and_3
       (.Op1(JK_FF_1_Q_bar),
        .Op2(and_1_Res),
        .Res(and_3_Res));
  (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
  counter_4_and_2_0 and_4
       (.Op1(and_2_Res),
        .Op2(Q2),
        .Res(and_4_Res));
  (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
  counter_4_and_2_1 and_5
       (.Op1(JK_FF_2_Q_bar),
        .Op2(and_3_Res),
        .Res(and_5_Res));
  (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
  counter_4_and_0_7 and_6
       (.Op1(not_0_Res),
        .Op2(Enable),
        .Res(and_6_Res));
  (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
  counter_4_and_0_8 and_7
       (.Op1(or_0_Res),
        .Op2(Enable),
        .Res(and_7_Res));
  (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
  counter_4_and_2_2 and_8
       (.Op1(or_1_Res),
        .Op2(Enable),
        .Res(and_8_Res));
  (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
  counter_4_and_4_0 and_9
       (.Op1(or_2_Res),
        .Op2(Enable),
        .Res(and_9_Res));
  (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
  counter_4_util_vector_logic_1_0 not_0
       (.Op1(util_vector_logic_0_Res),
        .Res(not_0_Res));
  (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
  counter_4_not_0_5 not_1
       (.Op1(U),
        .Res(not_1_Res));
  (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
  counter_4_and_0_4 or_0
       (.Op1(and_0_Res),
        .Op2(and_1_Res),
        .Res(or_0_Res));
  (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
  counter_4_or_0_3 or_1
       (.Op1(and_2_Res),
        .Op2(and_3_Res),
        .Res(or_1_Res));
  (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
  counter_4_or_1_0 or_2
       (.Op1(and_4_Res),
        .Op2(and_5_Res),
        .Res(or_2_Res));
  (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
  counter_4_util_vector_logic_0_71 xor_0
       (.Op1(clear_bar),
        .Op2(clear_bar),
        .Res(util_vector_logic_0_Res));
endmodule

(* CHECK_LICENSE_TYPE = "counter_4_util_vector_logic_0_36,util_vector_logic_v2_0_1_util_vector_logic,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
module counter_4_and_0_0
   (Op1,
    Op2,
    Res);
  input [0:0]Op1;
  input [0:0]Op2;
  output [0:0]Res;

  wire [0:0]Op1;
  wire [0:0]Op2;
  wire [0:0]Res;

  LUT2 #(
    .INIT(4'h8)) 
    \Res[0]_INST_0 
       (.I0(Op1),
        .I1(Op2),
        .O(Res));
endmodule

(* CHECK_LICENSE_TYPE = "counter_4_util_vector_logic_0_36,util_vector_logic_v2_0_1_util_vector_logic,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
module counter_4_and_0_1
   (Op1,
    Op2,
    Res);
  input [0:0]Op1;
  input [0:0]Op2;
  output [0:0]Res;

  wire [0:0]Op1;
  wire [0:0]Op2;
  wire [0:0]Res;

  LUT2 #(
    .INIT(4'h8)) 
    \Res[0]_INST_0 
       (.I0(Op1),
        .I1(Op2),
        .O(Res));
endmodule

(* CHECK_LICENSE_TYPE = "counter_4_util_vector_logic_0_36,util_vector_logic_v2_0_1_util_vector_logic,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
module counter_4_and_0_2
   (Op1,
    Op2,
    Res);
  input [0:0]Op1;
  input [0:0]Op2;
  output [0:0]Res;

  wire [0:0]Op1;
  wire [0:0]Op2;
  wire [0:0]Res;

  LUT2 #(
    .INIT(4'h8)) 
    \Res[0]_INST_0 
       (.I0(Op1),
        .I1(Op2),
        .O(Res));
endmodule

(* CHECK_LICENSE_TYPE = "counter_4_util_vector_logic_0_36,util_vector_logic_v2_0_1_util_vector_logic,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
module counter_4_and_0_3
   (Op1,
    Op2,
    Res);
  input [0:0]Op1;
  input [0:0]Op2;
  output [0:0]Res;

  wire [0:0]Op1;
  wire [0:0]Op2;
  wire [0:0]Res;

  LUT2 #(
    .INIT(4'h8)) 
    \Res[0]_INST_0 
       (.I0(Op1),
        .I1(Op2),
        .O(Res));
endmodule

(* CHECK_LICENSE_TYPE = "counter_4_or_0_1,util_vector_logic_v2_0_1_util_vector_logic,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
module counter_4_and_0_4
   (Op1,
    Op2,
    Res);
  input [0:0]Op1;
  input [0:0]Op2;
  output [0:0]Res;

  wire [0:0]Op1;
  wire [0:0]Op2;
  wire [0:0]Res;

  LUT2 #(
    .INIT(4'hE)) 
    \Res[0]_INST_0 
       (.I0(Op1),
        .I1(Op2),
        .O(Res));
endmodule

(* CHECK_LICENSE_TYPE = "counter_4_util_vector_logic_0_36,util_vector_logic_v2_0_1_util_vector_logic,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
module counter_4_and_0_5
   (Op1,
    Op2,
    Res);
  input [0:0]Op1;
  input [0:0]Op2;
  output [0:0]Res;

  wire [0:0]Op1;
  wire [0:0]Op2;
  wire [0:0]Res;

  LUT2 #(
    .INIT(4'h8)) 
    \Res[0]_INST_0 
       (.I0(Op1),
        .I1(Op2),
        .O(Res));
endmodule

(* CHECK_LICENSE_TYPE = "counter_4_util_vector_logic_0_36,util_vector_logic_v2_0_1_util_vector_logic,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
module counter_4_and_0_6
   (Op1,
    Op2,
    Res);
  input [0:0]Op1;
  input [0:0]Op2;
  output [0:0]Res;

  wire [0:0]Op1;
  wire [0:0]Op2;
  wire [0:0]Res;

  LUT2 #(
    .INIT(4'h8)) 
    \Res[0]_INST_0 
       (.I0(Op1),
        .I1(Op2),
        .O(Res));
endmodule

(* CHECK_LICENSE_TYPE = "counter_4_util_vector_logic_0_36,util_vector_logic_v2_0_1_util_vector_logic,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
module counter_4_and_0_7
   (Op1,
    Op2,
    Res);
  input [0:0]Op1;
  input [0:0]Op2;
  output [0:0]Res;

  wire [0:0]Op1;
  wire [0:0]Op2;
  wire [0:0]Res;

  LUT2 #(
    .INIT(4'h8)) 
    \Res[0]_INST_0 
       (.I0(Op1),
        .I1(Op2),
        .O(Res));
endmodule

(* CHECK_LICENSE_TYPE = "counter_4_util_vector_logic_0_36,util_vector_logic_v2_0_1_util_vector_logic,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
module counter_4_and_0_8
   (Op1,
    Op2,
    Res);
  input [0:0]Op1;
  input [0:0]Op2;
  output [0:0]Res;

  wire [0:0]Op1;
  wire [0:0]Op2;
  wire [0:0]Res;

  LUT2 #(
    .INIT(4'h8)) 
    \Res[0]_INST_0 
       (.I0(Op1),
        .I1(Op2),
        .O(Res));
endmodule

(* CHECK_LICENSE_TYPE = "counter_4_util_vector_logic_0_36,util_vector_logic_v2_0_1_util_vector_logic,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
module counter_4_and_1_0
   (Op1,
    Op2,
    Res);
  input [0:0]Op1;
  input [0:0]Op2;
  output [0:0]Res;

  wire [0:0]Op1;
  wire [0:0]Op2;
  wire [0:0]Res;

  LUT2 #(
    .INIT(4'h8)) 
    \Res[0]_INST_0 
       (.I0(Op1),
        .I1(Op2),
        .O(Res));
endmodule

(* CHECK_LICENSE_TYPE = "counter_4_util_vector_logic_0_36,util_vector_logic_v2_0_1_util_vector_logic,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
module counter_4_and_1_1
   (Op1,
    Op2,
    Res);
  input [0:0]Op1;
  input [0:0]Op2;
  output [0:0]Res;

  wire [0:0]Op1;
  wire [0:0]Op2;
  wire [0:0]Res;

  LUT2 #(
    .INIT(4'h8)) 
    \Res[0]_INST_0 
       (.I0(Op1),
        .I1(Op2),
        .O(Res));
endmodule

(* CHECK_LICENSE_TYPE = "counter_4_util_vector_logic_0_36,util_vector_logic_v2_0_1_util_vector_logic,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
module counter_4_and_1_2
   (Op1,
    Op2,
    Res);
  input [0:0]Op1;
  input [0:0]Op2;
  output [0:0]Res;

  wire [0:0]Op1;
  wire [0:0]Op2;
  wire [0:0]Res;

  LUT2 #(
    .INIT(4'h8)) 
    \Res[0]_INST_0 
       (.I0(Op1),
        .I1(Op2),
        .O(Res));
endmodule

(* CHECK_LICENSE_TYPE = "counter_4_util_vector_logic_0_36,util_vector_logic_v2_0_1_util_vector_logic,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
module counter_4_and_2_0
   (Op1,
    Op2,
    Res);
  input [0:0]Op1;
  input [0:0]Op2;
  output [0:0]Res;

  wire [0:0]Op1;
  wire [0:0]Op2;
  wire [0:0]Res;

  LUT2 #(
    .INIT(4'h8)) 
    \Res[0]_INST_0 
       (.I0(Op1),
        .I1(Op2),
        .O(Res));
endmodule

(* CHECK_LICENSE_TYPE = "counter_4_util_vector_logic_0_36,util_vector_logic_v2_0_1_util_vector_logic,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
module counter_4_and_2_1
   (Op1,
    Op2,
    Res);
  input [0:0]Op1;
  input [0:0]Op2;
  output [0:0]Res;

  wire [0:0]Op1;
  wire [0:0]Op2;
  wire [0:0]Res;

  LUT2 #(
    .INIT(4'h8)) 
    \Res[0]_INST_0 
       (.I0(Op1),
        .I1(Op2),
        .O(Res));
endmodule

(* CHECK_LICENSE_TYPE = "counter_4_util_vector_logic_0_36,util_vector_logic_v2_0_1_util_vector_logic,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
module counter_4_and_2_2
   (Op1,
    Op2,
    Res);
  input [0:0]Op1;
  input [0:0]Op2;
  output [0:0]Res;

  wire [0:0]Op1;
  wire [0:0]Op2;
  wire [0:0]Res;

  LUT2 #(
    .INIT(4'h8)) 
    \Res[0]_INST_0 
       (.I0(Op1),
        .I1(Op2),
        .O(Res));
endmodule

(* CHECK_LICENSE_TYPE = "counter_4_util_vector_logic_0_36,util_vector_logic_v2_0_1_util_vector_logic,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
module counter_4_and_4_0
   (Op1,
    Op2,
    Res);
  input [0:0]Op1;
  input [0:0]Op2;
  output [0:0]Res;

  wire [0:0]Op1;
  wire [0:0]Op2;
  wire [0:0]Res;

  LUT2 #(
    .INIT(4'h8)) 
    \Res[0]_INST_0 
       (.I0(Op1),
        .I1(Op2),
        .O(Res));
endmodule

(* CHECK_LICENSE_TYPE = "counter_4_util_vector_logic_2_30,util_vector_logic_v2_0_1_util_vector_logic,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
module counter_4_not_0_1
   (Op1,
    Res);
  input [0:0]Op1;
  output [0:0]Res;

  wire [0:0]Op1;
  wire [0:0]Res;

  LUT1 #(
    .INIT(2'h1)) 
    \Res[0]_INST_0 
       (.I0(Op1),
        .O(Res));
endmodule

(* CHECK_LICENSE_TYPE = "counter_4_util_vector_logic_2_30,util_vector_logic_v2_0_1_util_vector_logic,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
module counter_4_not_0_2
   (Op1,
    Res);
  input [0:0]Op1;
  output [0:0]Res;

  wire [0:0]Op1;
  wire [0:0]Res;

  LUT1 #(
    .INIT(2'h1)) 
    \Res[0]_INST_0 
       (.I0(Op1),
        .O(Res));
endmodule

(* CHECK_LICENSE_TYPE = "counter_4_util_vector_logic_2_30,util_vector_logic_v2_0_1_util_vector_logic,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
module counter_4_not_0_3
   (Op1,
    Res);
  input [0:0]Op1;
  output [0:0]Res;

  wire [0:0]Op1;
  wire [0:0]Res;

  LUT1 #(
    .INIT(2'h1)) 
    \Res[0]_INST_0 
       (.I0(Op1),
        .O(Res));
endmodule

(* CHECK_LICENSE_TYPE = "counter_4_util_vector_logic_2_30,util_vector_logic_v2_0_1_util_vector_logic,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
module counter_4_not_0_4
   (Op1,
    Res);
  input [0:0]Op1;
  output [0:0]Res;

  wire [0:0]Op1;
  wire [0:0]Res;

  LUT1 #(
    .INIT(2'h1)) 
    \Res[0]_INST_0 
       (.I0(Op1),
        .O(Res));
endmodule

(* CHECK_LICENSE_TYPE = "counter_4_util_vector_logic_2_30,util_vector_logic_v2_0_1_util_vector_logic,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
module counter_4_not_0_5
   (Op1,
    Res);
  input [0:0]Op1;
  output [0:0]Res;

  wire [0:0]Op1;
  wire [0:0]Res;

  LUT1 #(
    .INIT(2'h1)) 
    \Res[0]_INST_0 
       (.I0(Op1),
        .O(Res));
endmodule

(* CHECK_LICENSE_TYPE = "counter_4_util_vector_logic_2_30,util_vector_logic_v2_0_1_util_vector_logic,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
module counter_4_not_1_1
   (Op1,
    Res);
  input [0:0]Op1;
  output [0:0]Res;

  wire [0:0]Op1;
  wire [0:0]Res;

  LUT1 #(
    .INIT(2'h1)) 
    \Res[0]_INST_0 
       (.I0(Op1),
        .O(Res));
endmodule

(* CHECK_LICENSE_TYPE = "counter_4_util_vector_logic_2_30,util_vector_logic_v2_0_1_util_vector_logic,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
module counter_4_not_1_2
   (Op1,
    Res);
  input [0:0]Op1;
  output [0:0]Res;

  wire [0:0]Op1;
  wire [0:0]Res;

  LUT1 #(
    .INIT(2'h1)) 
    \Res[0]_INST_0 
       (.I0(Op1),
        .O(Res));
endmodule

(* CHECK_LICENSE_TYPE = "counter_4_util_vector_logic_2_30,util_vector_logic_v2_0_1_util_vector_logic,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
module counter_4_not_1_3
   (Op1,
    Res);
  input [0:0]Op1;
  output [0:0]Res;

  wire [0:0]Op1;
  wire [0:0]Res;

  LUT1 #(
    .INIT(2'h1)) 
    \Res[0]_INST_0 
       (.I0(Op1),
        .O(Res));
endmodule

(* CHECK_LICENSE_TYPE = "counter_4_util_vector_logic_2_30,util_vector_logic_v2_0_1_util_vector_logic,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
module counter_4_not_1_4
   (Op1,
    Res);
  input [0:0]Op1;
  output [0:0]Res;

  wire [0:0]Op1;
  wire [0:0]Res;

  LUT1 #(
    .INIT(2'h1)) 
    \Res[0]_INST_0 
       (.I0(Op1),
        .O(Res));
endmodule

(* CHECK_LICENSE_TYPE = "counter_4_or_0_1,util_vector_logic_v2_0_1_util_vector_logic,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
module counter_4_or_0_0
   (Op1,
    Op2,
    Res);
  input [0:0]Op1;
  input [0:0]Op2;
  output [0:0]Res;

  wire [0:0]Op1;
  wire [0:0]Op2;
  wire [0:0]Res;

  LUT2 #(
    .INIT(4'hE)) 
    \Res[0]_INST_0 
       (.I0(Op1),
        .I1(Op2),
        .O(Res));
endmodule

(* CHECK_LICENSE_TYPE = "counter_4_or_0_1,util_vector_logic_v2_0_1_util_vector_logic,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
module counter_4_or_0_1
   (Op1,
    Op2,
    Res);
  input [0:0]Op1;
  input [0:0]Op2;
  output [0:0]Res;

  wire [0:0]Op1;
  wire [0:0]Op2;
  wire [0:0]Res;

  LUT2 #(
    .INIT(4'hE)) 
    \Res[0]_INST_0 
       (.I0(Op1),
        .I1(Op2),
        .O(Res));
endmodule

(* CHECK_LICENSE_TYPE = "counter_4_or_0_1,util_vector_logic_v2_0_1_util_vector_logic,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
module counter_4_or_0_2
   (Op1,
    Op2,
    Res);
  input [0:0]Op1;
  input [0:0]Op2;
  output [0:0]Res;

  wire [0:0]Op1;
  wire [0:0]Op2;
  wire [0:0]Res;

  LUT2 #(
    .INIT(4'hE)) 
    \Res[0]_INST_0 
       (.I0(Op1),
        .I1(Op2),
        .O(Res));
endmodule

(* CHECK_LICENSE_TYPE = "counter_4_or_0_1,util_vector_logic_v2_0_1_util_vector_logic,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
module counter_4_or_0_3
   (Op1,
    Op2,
    Res);
  input [0:0]Op1;
  input [0:0]Op2;
  output [0:0]Res;

  wire [0:0]Op1;
  wire [0:0]Op2;
  wire [0:0]Res;

  LUT2 #(
    .INIT(4'hE)) 
    \Res[0]_INST_0 
       (.I0(Op1),
        .I1(Op2),
        .O(Res));
endmodule

(* CHECK_LICENSE_TYPE = "counter_4_or_0_1,util_vector_logic_v2_0_1_util_vector_logic,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
module counter_4_or_1_0
   (Op1,
    Op2,
    Res);
  input [0:0]Op1;
  input [0:0]Op2;
  output [0:0]Res;

  wire [0:0]Op1;
  wire [0:0]Op2;
  wire [0:0]Res;

  LUT2 #(
    .INIT(4'hE)) 
    \Res[0]_INST_0 
       (.I0(Op1),
        .I1(Op2),
        .O(Res));
endmodule

(* CHECK_LICENSE_TYPE = "counter_4_util_vector_logic_0_36,util_vector_logic_v2_0_1_util_vector_logic,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
module counter_4_util_vector_logic_0_33
   (Op1,
    Op2,
    Res);
  input [0:0]Op1;
  input [0:0]Op2;
  output [0:0]Res;

  wire [0:0]Op1;
  wire [0:0]Op2;
  wire [0:0]Res;

  LUT2 #(
    .INIT(4'h8)) 
    \Res[0]_INST_0 
       (.I0(Op1),
        .I1(Op2),
        .O(Res));
endmodule

(* CHECK_LICENSE_TYPE = "counter_4_util_vector_logic_0_36,util_vector_logic_v2_0_1_util_vector_logic,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
module counter_4_util_vector_logic_0_34
   (Op1,
    Op2,
    Res);
  input [0:0]Op1;
  input [0:0]Op2;
  output [0:0]Res;

  wire [0:0]Op1;
  wire [0:0]Op2;
  wire [0:0]Res;

  LUT2 #(
    .INIT(4'h8)) 
    \Res[0]_INST_0 
       (.I0(Op1),
        .I1(Op2),
        .O(Res));
endmodule

(* CHECK_LICENSE_TYPE = "counter_4_util_vector_logic_0_36,util_vector_logic_v2_0_1_util_vector_logic,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
module counter_4_util_vector_logic_0_35
   (Op1,
    Op2,
    Res);
  input [0:0]Op1;
  input [0:0]Op2;
  output [0:0]Res;

  wire [0:0]Op1;
  wire [0:0]Op2;
  wire [0:0]Res;

  LUT2 #(
    .INIT(4'h8)) 
    \Res[0]_INST_0 
       (.I0(Op1),
        .I1(Op2),
        .O(Res));
endmodule

(* CHECK_LICENSE_TYPE = "counter_4_util_vector_logic_0_36,util_vector_logic_v2_0_1_util_vector_logic,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
module counter_4_util_vector_logic_0_36
   (Op1,
    Op2,
    Res);
  input [0:0]Op1;
  input [0:0]Op2;
  output [0:0]Res;

  wire [0:0]Op1;
  wire [0:0]Op2;
  wire [0:0]Res;

  LUT2 #(
    .INIT(4'h8)) 
    \Res[0]_INST_0 
       (.I0(Op1),
        .I1(Op2),
        .O(Res));
endmodule

(* CHECK_LICENSE_TYPE = "counter_4_util_vector_logic_0_36,util_vector_logic_v2_0_1_util_vector_logic,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
module counter_4_util_vector_logic_0_37
   (Op1,
    Op2,
    Res);
  input [0:0]Op1;
  input [0:0]Op2;
  output [0:0]Res;

  wire [0:0]Op1;
  wire [0:0]Op2;
  wire [0:0]Res;

  LUT2 #(
    .INIT(4'h8)) 
    \Res[0]_INST_0 
       (.I0(Op1),
        .I1(Op2),
        .O(Res));
endmodule

(* CHECK_LICENSE_TYPE = "counter_4_util_vector_logic_0_36,util_vector_logic_v2_0_1_util_vector_logic,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
module counter_4_util_vector_logic_0_38
   (Op1,
    Op2,
    Res);
  input [0:0]Op1;
  input [0:0]Op2;
  output [0:0]Res;

  wire [0:0]Op1;
  wire [0:0]Op2;
  wire [0:0]Res;

  LUT2 #(
    .INIT(4'h8)) 
    \Res[0]_INST_0 
       (.I0(Op1),
        .I1(Op2),
        .O(Res));
endmodule

(* CHECK_LICENSE_TYPE = "counter_4_util_vector_logic_0_36,util_vector_logic_v2_0_1_util_vector_logic,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
module counter_4_util_vector_logic_0_39
   (Op1,
    Op2,
    Res);
  input [0:0]Op1;
  input [0:0]Op2;
  output [0:0]Res;

  wire [0:0]Op1;
  wire [0:0]Op2;
  wire [0:0]Res;

  LUT2 #(
    .INIT(4'h8)) 
    \Res[0]_INST_0 
       (.I0(Op1),
        .I1(Op2),
        .O(Res));
endmodule

(* CHECK_LICENSE_TYPE = "counter_4_util_vector_logic_0_36,util_vector_logic_v2_0_1_util_vector_logic,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
module counter_4_util_vector_logic_0_40
   (Op1,
    Op2,
    Res);
  input [0:0]Op1;
  input [0:0]Op2;
  output [0:0]Res;

  wire [0:0]Op1;
  wire [0:0]Op2;
  wire [0:0]Res;

  LUT2 #(
    .INIT(4'h8)) 
    \Res[0]_INST_0 
       (.I0(Op1),
        .I1(Op2),
        .O(Res));
endmodule

(* CHECK_LICENSE_TYPE = "counter_4_util_vector_logic_0_36,util_vector_logic_v2_0_1_util_vector_logic,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
module counter_4_util_vector_logic_0_41
   (Op1,
    Op2,
    Res);
  input [0:0]Op1;
  input [0:0]Op2;
  output [0:0]Res;

  wire [0:0]Op1;
  wire [0:0]Op2;
  wire [0:0]Res;

  LUT2 #(
    .INIT(4'h8)) 
    \Res[0]_INST_0 
       (.I0(Op1),
        .I1(Op2),
        .O(Res));
endmodule

(* CHECK_LICENSE_TYPE = "counter_4_or_0_1,util_vector_logic_v2_0_1_util_vector_logic,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
module counter_4_util_vector_logic_0_42
   (Op1,
    Op2,
    Res);
  input [0:0]Op1;
  input [0:0]Op2;
  output [0:0]Res;

  wire [0:0]Op1;
  wire [0:0]Op2;
  wire [0:0]Res;

  LUT2 #(
    .INIT(4'hE)) 
    \Res[0]_INST_0 
       (.I0(Op1),
        .I1(Op2),
        .O(Res));
endmodule

(* CHECK_LICENSE_TYPE = "counter_4_util_vector_logic_2_30,util_vector_logic_v2_0_1_util_vector_logic,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
module counter_4_util_vector_logic_0_43
   (Op1,
    Res);
  input [0:0]Op1;
  output [0:0]Res;

  wire [0:0]Op1;
  wire [0:0]Res;

  LUT1 #(
    .INIT(2'h1)) 
    \Res[0]_INST_0 
       (.I0(Op1),
        .O(Res));
endmodule

(* CHECK_LICENSE_TYPE = "counter_4_util_vector_logic_0_36,util_vector_logic_v2_0_1_util_vector_logic,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
module counter_4_util_vector_logic_0_44
   (Op1,
    Op2,
    Res);
  input [0:0]Op1;
  input [0:0]Op2;
  output [0:0]Res;

  wire [0:0]Op1;
  wire [0:0]Op2;
  wire [0:0]Res;

  LUT2 #(
    .INIT(4'h8)) 
    \Res[0]_INST_0 
       (.I0(Op1),
        .I1(Op2),
        .O(Res));
endmodule

(* CHECK_LICENSE_TYPE = "counter_4_util_vector_logic_0_36,util_vector_logic_v2_0_1_util_vector_logic,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
module counter_4_util_vector_logic_0_45
   (Op1,
    Op2,
    Res);
  input [0:0]Op1;
  input [0:0]Op2;
  output [0:0]Res;

  wire [0:0]Op1;
  wire [0:0]Op2;
  wire [0:0]Res;

  LUT2 #(
    .INIT(4'h8)) 
    \Res[0]_INST_0 
       (.I0(Op1),
        .I1(Op2),
        .O(Res));
endmodule

(* CHECK_LICENSE_TYPE = "counter_4_util_vector_logic_0_36,util_vector_logic_v2_0_1_util_vector_logic,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
module counter_4_util_vector_logic_0_46
   (Op1,
    Op2,
    Res);
  input [0:0]Op1;
  input [0:0]Op2;
  output [0:0]Res;

  wire [0:0]Op1;
  wire [0:0]Op2;
  wire [0:0]Res;

  LUT2 #(
    .INIT(4'h8)) 
    \Res[0]_INST_0 
       (.I0(Op1),
        .I1(Op2),
        .O(Res));
endmodule

(* CHECK_LICENSE_TYPE = "counter_4_util_vector_logic_0_36,util_vector_logic_v2_0_1_util_vector_logic,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
module counter_4_util_vector_logic_0_47
   (Op1,
    Op2,
    Res);
  input [0:0]Op1;
  input [0:0]Op2;
  output [0:0]Res;

  wire [0:0]Op1;
  wire [0:0]Op2;
  wire [0:0]Res;

  LUT2 #(
    .INIT(4'h8)) 
    \Res[0]_INST_0 
       (.I0(Op1),
        .I1(Op2),
        .O(Res));
endmodule

(* CHECK_LICENSE_TYPE = "counter_4_util_vector_logic_0_36,util_vector_logic_v2_0_1_util_vector_logic,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
module counter_4_util_vector_logic_0_48
   (Op1,
    Op2,
    Res);
  input [0:0]Op1;
  input [0:0]Op2;
  output [0:0]Res;

  wire [0:0]Op1;
  wire [0:0]Op2;
  wire [0:0]Res;

  LUT2 #(
    .INIT(4'h8)) 
    \Res[0]_INST_0 
       (.I0(Op1),
        .I1(Op2),
        .O(Res));
endmodule

(* CHECK_LICENSE_TYPE = "counter_4_util_vector_logic_0_36,util_vector_logic_v2_0_1_util_vector_logic,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
module counter_4_util_vector_logic_0_49
   (Op1,
    Op2,
    Res);
  input [0:0]Op1;
  input [0:0]Op2;
  output [0:0]Res;

  wire [0:0]Op1;
  wire [0:0]Op2;
  wire [0:0]Res;

  LUT2 #(
    .INIT(4'h8)) 
    \Res[0]_INST_0 
       (.I0(Op1),
        .I1(Op2),
        .O(Res));
endmodule

(* CHECK_LICENSE_TYPE = "counter_4_util_vector_logic_0_36,util_vector_logic_v2_0_1_util_vector_logic,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
module counter_4_util_vector_logic_0_50
   (Op1,
    Op2,
    Res);
  input [0:0]Op1;
  input [0:0]Op2;
  output [0:0]Res;

  wire [0:0]Op1;
  wire [0:0]Op2;
  wire [0:0]Res;

  LUT2 #(
    .INIT(4'h8)) 
    \Res[0]_INST_0 
       (.I0(Op1),
        .I1(Op2),
        .O(Res));
endmodule

(* CHECK_LICENSE_TYPE = "counter_4_util_vector_logic_0_36,util_vector_logic_v2_0_1_util_vector_logic,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
module counter_4_util_vector_logic_0_51
   (Op1,
    Op2,
    Res);
  input [0:0]Op1;
  input [0:0]Op2;
  output [0:0]Res;

  wire [0:0]Op1;
  wire [0:0]Op2;
  wire [0:0]Res;

  LUT2 #(
    .INIT(4'h8)) 
    \Res[0]_INST_0 
       (.I0(Op1),
        .I1(Op2),
        .O(Res));
endmodule

(* CHECK_LICENSE_TYPE = "counter_4_util_vector_logic_2_30,util_vector_logic_v2_0_1_util_vector_logic,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
module counter_4_util_vector_logic_0_52
   (Op1,
    Res);
  input [0:0]Op1;
  output [0:0]Res;

  wire [0:0]Op1;
  wire [0:0]Res;

  LUT1 #(
    .INIT(2'h1)) 
    \Res[0]_INST_0 
       (.I0(Op1),
        .O(Res));
endmodule

(* CHECK_LICENSE_TYPE = "counter_4_util_vector_logic_0_36,util_vector_logic_v2_0_1_util_vector_logic,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
module counter_4_util_vector_logic_0_53
   (Op1,
    Op2,
    Res);
  input [0:0]Op1;
  input [0:0]Op2;
  output [0:0]Res;

  wire [0:0]Op1;
  wire [0:0]Op2;
  wire [0:0]Res;

  LUT2 #(
    .INIT(4'h8)) 
    \Res[0]_INST_0 
       (.I0(Op1),
        .I1(Op2),
        .O(Res));
endmodule

(* CHECK_LICENSE_TYPE = "counter_4_util_vector_logic_0_36,util_vector_logic_v2_0_1_util_vector_logic,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
module counter_4_util_vector_logic_0_54
   (Op1,
    Op2,
    Res);
  input [0:0]Op1;
  input [0:0]Op2;
  output [0:0]Res;

  wire [0:0]Op1;
  wire [0:0]Op2;
  wire [0:0]Res;

  LUT2 #(
    .INIT(4'h8)) 
    \Res[0]_INST_0 
       (.I0(Op1),
        .I1(Op2),
        .O(Res));
endmodule

(* CHECK_LICENSE_TYPE = "counter_4_util_vector_logic_0_36,util_vector_logic_v2_0_1_util_vector_logic,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
module counter_4_util_vector_logic_0_55
   (Op1,
    Op2,
    Res);
  input [0:0]Op1;
  input [0:0]Op2;
  output [0:0]Res;

  wire [0:0]Op1;
  wire [0:0]Op2;
  wire [0:0]Res;

  LUT2 #(
    .INIT(4'h8)) 
    \Res[0]_INST_0 
       (.I0(Op1),
        .I1(Op2),
        .O(Res));
endmodule

(* CHECK_LICENSE_TYPE = "counter_4_util_vector_logic_0_36,util_vector_logic_v2_0_1_util_vector_logic,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
module counter_4_util_vector_logic_0_56
   (Op1,
    Op2,
    Res);
  input [0:0]Op1;
  input [0:0]Op2;
  output [0:0]Res;

  wire [0:0]Op1;
  wire [0:0]Op2;
  wire [0:0]Res;

  LUT2 #(
    .INIT(4'h8)) 
    \Res[0]_INST_0 
       (.I0(Op1),
        .I1(Op2),
        .O(Res));
endmodule

(* CHECK_LICENSE_TYPE = "counter_4_util_vector_logic_0_36,util_vector_logic_v2_0_1_util_vector_logic,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
module counter_4_util_vector_logic_0_57
   (Op1,
    Op2,
    Res);
  input [0:0]Op1;
  input [0:0]Op2;
  output [0:0]Res;

  wire [0:0]Op1;
  wire [0:0]Op2;
  wire [0:0]Res;

  LUT2 #(
    .INIT(4'h8)) 
    \Res[0]_INST_0 
       (.I0(Op1),
        .I1(Op2),
        .O(Res));
endmodule

(* CHECK_LICENSE_TYPE = "counter_4_util_vector_logic_0_36,util_vector_logic_v2_0_1_util_vector_logic,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
module counter_4_util_vector_logic_0_58
   (Op1,
    Op2,
    Res);
  input [0:0]Op1;
  input [0:0]Op2;
  output [0:0]Res;

  wire [0:0]Op1;
  wire [0:0]Op2;
  wire [0:0]Res;

  LUT2 #(
    .INIT(4'h8)) 
    \Res[0]_INST_0 
       (.I0(Op1),
        .I1(Op2),
        .O(Res));
endmodule

(* CHECK_LICENSE_TYPE = "counter_4_util_vector_logic_0_36,util_vector_logic_v2_0_1_util_vector_logic,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
module counter_4_util_vector_logic_0_59
   (Op1,
    Op2,
    Res);
  input [0:0]Op1;
  input [0:0]Op2;
  output [0:0]Res;

  wire [0:0]Op1;
  wire [0:0]Op2;
  wire [0:0]Res;

  LUT2 #(
    .INIT(4'h8)) 
    \Res[0]_INST_0 
       (.I0(Op1),
        .I1(Op2),
        .O(Res));
endmodule

(* CHECK_LICENSE_TYPE = "counter_4_util_vector_logic_0_36,util_vector_logic_v2_0_1_util_vector_logic,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
module counter_4_util_vector_logic_0_60
   (Op1,
    Op2,
    Res);
  input [0:0]Op1;
  input [0:0]Op2;
  output [0:0]Res;

  wire [0:0]Op1;
  wire [0:0]Op2;
  wire [0:0]Res;

  LUT2 #(
    .INIT(4'h8)) 
    \Res[0]_INST_0 
       (.I0(Op1),
        .I1(Op2),
        .O(Res));
endmodule

(* CHECK_LICENSE_TYPE = "counter_4_util_vector_logic_2_30,util_vector_logic_v2_0_1_util_vector_logic,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
module counter_4_util_vector_logic_0_61
   (Op1,
    Res);
  input [0:0]Op1;
  output [0:0]Res;

  wire [0:0]Op1;
  wire [0:0]Res;

  LUT1 #(
    .INIT(2'h1)) 
    \Res[0]_INST_0 
       (.I0(Op1),
        .O(Res));
endmodule

(* CHECK_LICENSE_TYPE = "counter_4_util_vector_logic_0_36,util_vector_logic_v2_0_1_util_vector_logic,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
module counter_4_util_vector_logic_0_62
   (Op1,
    Op2,
    Res);
  input [0:0]Op1;
  input [0:0]Op2;
  output [0:0]Res;

  wire [0:0]Op1;
  wire [0:0]Op2;
  wire [0:0]Res;

  LUT2 #(
    .INIT(4'h8)) 
    \Res[0]_INST_0 
       (.I0(Op1),
        .I1(Op2),
        .O(Res));
endmodule

(* CHECK_LICENSE_TYPE = "counter_4_util_vector_logic_0_36,util_vector_logic_v2_0_1_util_vector_logic,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
module counter_4_util_vector_logic_0_63
   (Op1,
    Op2,
    Res);
  input [0:0]Op1;
  input [0:0]Op2;
  output [0:0]Res;

  wire [0:0]Op1;
  wire [0:0]Op2;
  wire [0:0]Res;

  LUT2 #(
    .INIT(4'h8)) 
    \Res[0]_INST_0 
       (.I0(Op1),
        .I1(Op2),
        .O(Res));
endmodule

(* CHECK_LICENSE_TYPE = "counter_4_util_vector_logic_0_36,util_vector_logic_v2_0_1_util_vector_logic,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
module counter_4_util_vector_logic_0_64
   (Op1,
    Op2,
    Res);
  input [0:0]Op1;
  input [0:0]Op2;
  output [0:0]Res;

  wire [0:0]Op1;
  wire [0:0]Op2;
  wire [0:0]Res;

  LUT2 #(
    .INIT(4'h8)) 
    \Res[0]_INST_0 
       (.I0(Op1),
        .I1(Op2),
        .O(Res));
endmodule

(* CHECK_LICENSE_TYPE = "counter_4_util_vector_logic_0_36,util_vector_logic_v2_0_1_util_vector_logic,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
module counter_4_util_vector_logic_0_65
   (Op1,
    Op2,
    Res);
  input [0:0]Op1;
  input [0:0]Op2;
  output [0:0]Res;

  wire [0:0]Op1;
  wire [0:0]Op2;
  wire [0:0]Res;

  LUT2 #(
    .INIT(4'h8)) 
    \Res[0]_INST_0 
       (.I0(Op1),
        .I1(Op2),
        .O(Res));
endmodule

(* CHECK_LICENSE_TYPE = "counter_4_util_vector_logic_0_36,util_vector_logic_v2_0_1_util_vector_logic,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
module counter_4_util_vector_logic_0_66
   (Op1,
    Op2,
    Res);
  input [0:0]Op1;
  input [0:0]Op2;
  output [0:0]Res;

  wire [0:0]Op1;
  wire [0:0]Op2;
  wire [0:0]Res;

  LUT2 #(
    .INIT(4'h8)) 
    \Res[0]_INST_0 
       (.I0(Op1),
        .I1(Op2),
        .O(Res));
endmodule

(* CHECK_LICENSE_TYPE = "counter_4_util_vector_logic_0_36,util_vector_logic_v2_0_1_util_vector_logic,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
module counter_4_util_vector_logic_0_67
   (Op1,
    Op2,
    Res);
  input [0:0]Op1;
  input [0:0]Op2;
  output [0:0]Res;

  wire [0:0]Op1;
  wire [0:0]Op2;
  wire [0:0]Res;

  LUT2 #(
    .INIT(4'h8)) 
    \Res[0]_INST_0 
       (.I0(Op1),
        .I1(Op2),
        .O(Res));
endmodule

(* CHECK_LICENSE_TYPE = "counter_4_util_vector_logic_0_36,util_vector_logic_v2_0_1_util_vector_logic,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
module counter_4_util_vector_logic_0_68
   (Op1,
    Op2,
    Res);
  input [0:0]Op1;
  input [0:0]Op2;
  output [0:0]Res;

  wire [0:0]Op1;
  wire [0:0]Op2;
  wire [0:0]Res;

  LUT2 #(
    .INIT(4'h8)) 
    \Res[0]_INST_0 
       (.I0(Op1),
        .I1(Op2),
        .O(Res));
endmodule

(* CHECK_LICENSE_TYPE = "counter_4_util_vector_logic_0_36,util_vector_logic_v2_0_1_util_vector_logic,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
module counter_4_util_vector_logic_0_69
   (Op1,
    Op2,
    Res);
  input [0:0]Op1;
  input [0:0]Op2;
  output [0:0]Res;

  wire [0:0]Op1;
  wire [0:0]Op2;
  wire [0:0]Res;

  LUT2 #(
    .INIT(4'h8)) 
    \Res[0]_INST_0 
       (.I0(Op1),
        .I1(Op2),
        .O(Res));
endmodule

(* CHECK_LICENSE_TYPE = "counter_4_util_vector_logic_2_30,util_vector_logic_v2_0_1_util_vector_logic,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
module counter_4_util_vector_logic_0_70
   (Op1,
    Res);
  input [0:0]Op1;
  output [0:0]Res;

  wire [0:0]Op1;
  wire [0:0]Res;

  LUT1 #(
    .INIT(2'h1)) 
    \Res[0]_INST_0 
       (.I0(Op1),
        .O(Res));
endmodule

(* CHECK_LICENSE_TYPE = "counter_4_util_vector_logic_0_71,util_vector_logic_v2_0_1_util_vector_logic,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
module counter_4_util_vector_logic_0_71
   (Op1,
    Op2,
    Res);
  input [0:0]Op1;
  input [0:0]Op2;
  output [0:0]Res;

  wire [0:0]Op1;
  wire [0:0]Op2;
  wire [0:0]Res;

  LUT2 #(
    .INIT(4'h6)) 
    \Res[0]_INST_0 
       (.I0(Op2),
        .I1(Op1),
        .O(Res));
endmodule

(* CHECK_LICENSE_TYPE = "counter_4_util_vector_logic_0_36,util_vector_logic_v2_0_1_util_vector_logic,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
module counter_4_util_vector_logic_0_72
   (Op1,
    Op2,
    Res);
  input [0:0]Op1;
  input [0:0]Op2;
  output [0:0]Res;

  wire [0:0]Op1;
  wire [0:0]Op2;
  wire [0:0]Res;

  LUT2 #(
    .INIT(4'h8)) 
    \Res[0]_INST_0 
       (.I0(Op1),
        .I1(Op2),
        .O(Res));
endmodule

(* CHECK_LICENSE_TYPE = "counter_4_util_vector_logic_0_36,util_vector_logic_v2_0_1_util_vector_logic,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
module counter_4_util_vector_logic_0_73
   (Op1,
    Op2,
    Res);
  input [0:0]Op1;
  input [0:0]Op2;
  output [0:0]Res;

  wire [0:0]Op1;
  wire [0:0]Op2;
  wire [0:0]Res;

  LUT2 #(
    .INIT(4'h8)) 
    \Res[0]_INST_0 
       (.I0(Op1),
        .I1(Op2),
        .O(Res));
endmodule

(* CHECK_LICENSE_TYPE = "counter_4_util_vector_logic_2_30,util_vector_logic_v2_0_1_util_vector_logic,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
module counter_4_util_vector_logic_1_0
   (Op1,
    Res);
  input [0:0]Op1;
  output [0:0]Res;

  wire [0:0]Op1;
  wire [0:0]Res;

  LUT1 #(
    .INIT(2'h1)) 
    \Res[0]_INST_0 
       (.I0(Op1),
        .O(Res));
endmodule

(* CHECK_LICENSE_TYPE = "counter_4_util_vector_logic_2_30,util_vector_logic_v2_0_1_util_vector_logic,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
module counter_4_util_vector_logic_2_30
   (Op1,
    Res);
  input [0:0]Op1;
  output [0:0]Res;

  wire [0:0]Op1;
  wire [0:0]Res;

  LUT1 #(
    .INIT(2'h1)) 
    \Res[0]_INST_0 
       (.I0(Op1),
        .O(Res));
endmodule

(* CHECK_LICENSE_TYPE = "counter_4_util_vector_logic_2_30,util_vector_logic_v2_0_1_util_vector_logic,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
module counter_4_util_vector_logic_2_31
   (Op1,
    Res);
  input [0:0]Op1;
  output [0:0]Res;

  wire [0:0]Op1;
  wire [0:0]Res;

  LUT1 #(
    .INIT(2'h1)) 
    \Res[0]_INST_0 
       (.I0(Op1),
        .O(Res));
endmodule

(* CHECK_LICENSE_TYPE = "counter_4_util_vector_logic_2_30,util_vector_logic_v2_0_1_util_vector_logic,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
module counter_4_util_vector_logic_2_32
   (Op1,
    Res);
  input [0:0]Op1;
  output [0:0]Res;

  wire [0:0]Op1;
  wire [0:0]Res;

  LUT1 #(
    .INIT(2'h1)) 
    \Res[0]_INST_0 
       (.I0(Op1),
        .O(Res));
endmodule

(* CHECK_LICENSE_TYPE = "counter_4_util_vector_logic_2_30,util_vector_logic_v2_0_1_util_vector_logic,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
module counter_4_util_vector_logic_2_33
   (Op1,
    Res);
  input [0:0]Op1;
  output [0:0]Res;

  wire [0:0]Op1;
  wire [0:0]Res;

  LUT1 #(
    .INIT(2'h1)) 
    \Res[0]_INST_0 
       (.I0(Op1),
        .O(Res));
endmodule

(* CHECK_LICENSE_TYPE = "counter_4_util_vector_logic_2_30,util_vector_logic_v2_0_1_util_vector_logic,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
module counter_4_util_vector_logic_2_34
   (Op1,
    Res);
  input [0:0]Op1;
  output [0:0]Res;

  wire [0:0]Op1;
  wire [0:0]Res;

  LUT1 #(
    .INIT(2'h1)) 
    \Res[0]_INST_0 
       (.I0(Op1),
        .O(Res));
endmodule

(* CHECK_LICENSE_TYPE = "counter_4_util_vector_logic_2_30,util_vector_logic_v2_0_1_util_vector_logic,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
module counter_4_util_vector_logic_2_35
   (Op1,
    Res);
  input [0:0]Op1;
  output [0:0]Res;

  wire [0:0]Op1;
  wire [0:0]Res;

  LUT1 #(
    .INIT(2'h1)) 
    \Res[0]_INST_0 
       (.I0(Op1),
        .O(Res));
endmodule

(* CHECK_LICENSE_TYPE = "counter_4_util_vector_logic_2_30,util_vector_logic_v2_0_1_util_vector_logic,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
module counter_4_util_vector_logic_2_36
   (Op1,
    Res);
  input [0:0]Op1;
  output [0:0]Res;

  wire [0:0]Op1;
  wire [0:0]Res;

  LUT1 #(
    .INIT(2'h1)) 
    \Res[0]_INST_0 
       (.I0(Op1),
        .O(Res));
endmodule

(* CHECK_LICENSE_TYPE = "counter_4_util_vector_logic_2_30,util_vector_logic_v2_0_1_util_vector_logic,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
module counter_4_util_vector_logic_2_37
   (Op1,
    Res);
  input [0:0]Op1;
  output [0:0]Res;

  wire [0:0]Op1;
  wire [0:0]Res;

  LUT1 #(
    .INIT(2'h1)) 
    \Res[0]_INST_0 
       (.I0(Op1),
        .O(Res));
endmodule

(* CHECK_LICENSE_TYPE = "counter_4_util_vector_logic_2_30,util_vector_logic_v2_0_1_util_vector_logic,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
module counter_4_util_vector_logic_2_38
   (Op1,
    Res);
  input [0:0]Op1;
  output [0:0]Res;

  wire [0:0]Op1;
  wire [0:0]Res;

  LUT1 #(
    .INIT(2'h1)) 
    \Res[0]_INST_0 
       (.I0(Op1),
        .O(Res));
endmodule

(* CHECK_LICENSE_TYPE = "counter_4_util_vector_logic_2_30,util_vector_logic_v2_0_1_util_vector_logic,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
module counter_4_util_vector_logic_2_39
   (Op1,
    Res);
  input [0:0]Op1;
  output [0:0]Res;

  wire [0:0]Op1;
  wire [0:0]Res;

  LUT1 #(
    .INIT(2'h1)) 
    \Res[0]_INST_0 
       (.I0(Op1),
        .O(Res));
endmodule

(* CHECK_LICENSE_TYPE = "counter_4_util_vector_logic_2_30,util_vector_logic_v2_0_1_util_vector_logic,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
module counter_4_util_vector_logic_2_40
   (Op1,
    Res);
  input [0:0]Op1;
  output [0:0]Res;

  wire [0:0]Op1;
  wire [0:0]Res;

  LUT1 #(
    .INIT(2'h1)) 
    \Res[0]_INST_0 
       (.I0(Op1),
        .O(Res));
endmodule

(* CHECK_LICENSE_TYPE = "counter_4_util_vector_logic_2_30,util_vector_logic_v2_0_1_util_vector_logic,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
module counter_4_util_vector_logic_2_41
   (Op1,
    Res);
  input [0:0]Op1;
  output [0:0]Res;

  wire [0:0]Op1;
  wire [0:0]Res;

  LUT1 #(
    .INIT(2'h1)) 
    \Res[0]_INST_0 
       (.I0(Op1),
        .O(Res));
endmodule

(* CHECK_LICENSE_TYPE = "counter_4_util_vector_logic_2_30,util_vector_logic_v2_0_1_util_vector_logic,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
module counter_4_util_vector_logic_2_42
   (Op1,
    Res);
  input [0:0]Op1;
  output [0:0]Res;

  wire [0:0]Op1;
  wire [0:0]Res;

  LUT1 #(
    .INIT(2'h1)) 
    \Res[0]_INST_0 
       (.I0(Op1),
        .O(Res));
endmodule

(* CHECK_LICENSE_TYPE = "counter_4_util_vector_logic_2_30,util_vector_logic_v2_0_1_util_vector_logic,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
module counter_4_util_vector_logic_2_43
   (Op1,
    Res);
  input [0:0]Op1;
  output [0:0]Res;

  wire [0:0]Op1;
  wire [0:0]Res;

  LUT1 #(
    .INIT(2'h1)) 
    \Res[0]_INST_0 
       (.I0(Op1),
        .O(Res));
endmodule

(* CHECK_LICENSE_TYPE = "counter_4_util_vector_logic_2_30,util_vector_logic_v2_0_1_util_vector_logic,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
module counter_4_util_vector_logic_2_44
   (Op1,
    Res);
  input [0:0]Op1;
  output [0:0]Res;

  wire [0:0]Op1;
  wire [0:0]Res;

  LUT1 #(
    .INIT(2'h1)) 
    \Res[0]_INST_0 
       (.I0(Op1),
        .O(Res));
endmodule

(* CHECK_LICENSE_TYPE = "counter_4_util_vector_logic_2_30,util_vector_logic_v2_0_1_util_vector_logic,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
module counter_4_util_vector_logic_2_45
   (Op1,
    Res);
  input [0:0]Op1;
  output [0:0]Res;

  wire [0:0]Op1;
  wire [0:0]Res;

  LUT1 #(
    .INIT(2'h1)) 
    \Res[0]_INST_0 
       (.I0(Op1),
        .O(Res));
endmodule

(* CHECK_LICENSE_TYPE = "counter_4_util_vector_logic_2_30,util_vector_logic_v2_0_1_util_vector_logic,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
module counter_4_util_vector_logic_2_46
   (Op1,
    Res);
  input [0:0]Op1;
  output [0:0]Res;

  wire [0:0]Op1;
  wire [0:0]Res;

  LUT1 #(
    .INIT(2'h1)) 
    \Res[0]_INST_0 
       (.I0(Op1),
        .O(Res));
endmodule

(* CHECK_LICENSE_TYPE = "counter_4_util_vector_logic_2_30,util_vector_logic_v2_0_1_util_vector_logic,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
module counter_4_util_vector_logic_2_47
   (Op1,
    Res);
  input [0:0]Op1;
  output [0:0]Res;

  wire [0:0]Op1;
  wire [0:0]Res;

  LUT1 #(
    .INIT(2'h1)) 
    \Res[0]_INST_0 
       (.I0(Op1),
        .O(Res));
endmodule

(* CHECK_LICENSE_TYPE = "counter_4_util_vector_logic_2_30,util_vector_logic_v2_0_1_util_vector_logic,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
module counter_4_util_vector_logic_2_48
   (Op1,
    Res);
  input [0:0]Op1;
  output [0:0]Res;

  wire [0:0]Op1;
  wire [0:0]Res;

  LUT1 #(
    .INIT(2'h1)) 
    \Res[0]_INST_0 
       (.I0(Op1),
        .O(Res));
endmodule

(* CHECK_LICENSE_TYPE = "counter_4_util_vector_logic_2_30,util_vector_logic_v2_0_1_util_vector_logic,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
module counter_4_util_vector_logic_2_49
   (Op1,
    Res);
  input [0:0]Op1;
  output [0:0]Res;

  wire [0:0]Op1;
  wire [0:0]Res;

  LUT1 #(
    .INIT(2'h1)) 
    \Res[0]_INST_0 
       (.I0(Op1),
        .O(Res));
endmodule

(* CHECK_LICENSE_TYPE = "counter_4_util_vector_logic_2_30,util_vector_logic_v2_0_1_util_vector_logic,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
module counter_4_util_vector_logic_2_50
   (Op1,
    Res);
  input [0:0]Op1;
  output [0:0]Res;

  wire [0:0]Op1;
  wire [0:0]Res;

  LUT1 #(
    .INIT(2'h1)) 
    \Res[0]_INST_0 
       (.I0(Op1),
        .O(Res));
endmodule

(* CHECK_LICENSE_TYPE = "counter_4_util_vector_logic_2_30,util_vector_logic_v2_0_1_util_vector_logic,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
module counter_4_util_vector_logic_2_51
   (Op1,
    Res);
  input [0:0]Op1;
  output [0:0]Res;

  wire [0:0]Op1;
  wire [0:0]Res;

  LUT1 #(
    .INIT(2'h1)) 
    \Res[0]_INST_0 
       (.I0(Op1),
        .O(Res));
endmodule

(* CHECK_LICENSE_TYPE = "counter_4_util_vector_logic_2_30,util_vector_logic_v2_0_1_util_vector_logic,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
module counter_4_util_vector_logic_2_52
   (Op1,
    Res);
  input [0:0]Op1;
  output [0:0]Res;

  wire [0:0]Op1;
  wire [0:0]Res;

  LUT1 #(
    .INIT(2'h1)) 
    \Res[0]_INST_0 
       (.I0(Op1),
        .O(Res));
endmodule

(* CHECK_LICENSE_TYPE = "counter_4_util_vector_logic_2_30,util_vector_logic_v2_0_1_util_vector_logic,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
module counter_4_util_vector_logic_2_53
   (Op1,
    Res);
  input [0:0]Op1;
  output [0:0]Res;

  wire [0:0]Op1;
  wire [0:0]Res;

  LUT1 #(
    .INIT(2'h1)) 
    \Res[0]_INST_0 
       (.I0(Op1),
        .O(Res));
endmodule

(* CHECK_LICENSE_TYPE = "counter_4_util_vector_logic_2_30,util_vector_logic_v2_0_1_util_vector_logic,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
module counter_4_util_vector_logic_2_54
   (Op1,
    Res);
  input [0:0]Op1;
  output [0:0]Res;

  wire [0:0]Op1;
  wire [0:0]Res;

  LUT1 #(
    .INIT(2'h1)) 
    \Res[0]_INST_0 
       (.I0(Op1),
        .O(Res));
endmodule

(* CHECK_LICENSE_TYPE = "counter_4_util_vector_logic_2_30,util_vector_logic_v2_0_1_util_vector_logic,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
module counter_4_util_vector_logic_2_55
   (Op1,
    Res);
  input [0:0]Op1;
  output [0:0]Res;

  wire [0:0]Op1;
  wire [0:0]Res;

  LUT1 #(
    .INIT(2'h1)) 
    \Res[0]_INST_0 
       (.I0(Op1),
        .O(Res));
endmodule

(* CHECK_LICENSE_TYPE = "counter_4_util_vector_logic_2_30,util_vector_logic_v2_0_1_util_vector_logic,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
module counter_4_util_vector_logic_2_56
   (Op1,
    Res);
  input [0:0]Op1;
  output [0:0]Res;

  wire [0:0]Op1;
  wire [0:0]Res;

  LUT1 #(
    .INIT(2'h1)) 
    \Res[0]_INST_0 
       (.I0(Op1),
        .O(Res));
endmodule

(* CHECK_LICENSE_TYPE = "counter_4_util_vector_logic_2_30,util_vector_logic_v2_0_1_util_vector_logic,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
module counter_4_util_vector_logic_2_57
   (Op1,
    Res);
  input [0:0]Op1;
  output [0:0]Res;

  wire [0:0]Op1;
  wire [0:0]Res;

  LUT1 #(
    .INIT(2'h1)) 
    \Res[0]_INST_0 
       (.I0(Op1),
        .O(Res));
endmodule

(* CHECK_LICENSE_TYPE = "counter_4_util_vector_logic_2_30,util_vector_logic_v2_0_1_util_vector_logic,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
module counter_4_util_vector_logic_2_58
   (Op1,
    Res);
  input [0:0]Op1;
  output [0:0]Res;

  wire [0:0]Op1;
  wire [0:0]Res;

  LUT1 #(
    .INIT(2'h1)) 
    \Res[0]_INST_0 
       (.I0(Op1),
        .O(Res));
endmodule

(* CHECK_LICENSE_TYPE = "counter_4_util_vector_logic_2_30,util_vector_logic_v2_0_1_util_vector_logic,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
module counter_4_util_vector_logic_2_59
   (Op1,
    Res);
  input [0:0]Op1;
  output [0:0]Res;

  wire [0:0]Op1;
  wire [0:0]Res;

  LUT1 #(
    .INIT(2'h1)) 
    \Res[0]_INST_0 
       (.I0(Op1),
        .O(Res));
endmodule

(* CHECK_LICENSE_TYPE = "counter_4_util_vector_logic_2_30,util_vector_logic_v2_0_1_util_vector_logic,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
module counter_4_util_vector_logic_2_60
   (Op1,
    Res);
  input [0:0]Op1;
  output [0:0]Res;

  wire [0:0]Op1;
  wire [0:0]Res;

  LUT1 #(
    .INIT(2'h1)) 
    \Res[0]_INST_0 
       (.I0(Op1),
        .O(Res));
endmodule

(* CHECK_LICENSE_TYPE = "counter_4_util_vector_logic_2_30,util_vector_logic_v2_0_1_util_vector_logic,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
module counter_4_util_vector_logic_2_61
   (Op1,
    Res);
  input [0:0]Op1;
  output [0:0]Res;

  wire [0:0]Op1;
  wire [0:0]Res;

  LUT1 #(
    .INIT(2'h1)) 
    \Res[0]_INST_0 
       (.I0(Op1),
        .O(Res));
endmodule

module nand_3_0_imp_16VCLVO
   (out_n,
    clear_bar,
    in2);
  output [0:0]out_n;
  input clear_bar;
  input in2;

  wire clear_bar;
  wire in2;
  wire [0:0]out_n;
  wire util_vector_logic_0_Res;

  (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
  counter_4_util_vector_logic_0_62 util_vector_logic_0
       (.Op1(clear_bar),
        .Op2(in2),
        .Res(util_vector_logic_0_Res));
  (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
  counter_4_util_vector_logic_2_54 util_vector_logic_2
       (.Op1(util_vector_logic_0_Res),
        .Res(out_n));
endmodule

module nand_3_0_imp_1TLDCL5
   (out_n,
    clear_bar,
    in2);
  output [0:0]out_n;
  input clear_bar;
  input in2;

  wire clear_bar;
  wire in2;
  wire [0:0]out_n;
  wire util_vector_logic_0_Res;

  (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
  counter_4_util_vector_logic_0_33 util_vector_logic_0
       (.Op1(clear_bar),
        .Op2(in2),
        .Res(util_vector_logic_0_Res));
  (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
  counter_4_util_vector_logic_2_30 util_vector_logic_2
       (.Op1(util_vector_logic_0_Res),
        .Res(out_n));
endmodule

module nand_3_0_imp_JEVIO
   (out_n,
    clear_bar,
    in2);
  output [0:0]out_n;
  input clear_bar;
  input in2;

  wire clear_bar;
  wire in2;
  wire [0:0]out_n;
  wire util_vector_logic_0_Res;

  (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
  counter_4_util_vector_logic_0_53 util_vector_logic_0
       (.Op1(clear_bar),
        .Op2(in2),
        .Res(util_vector_logic_0_Res));
  (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
  counter_4_util_vector_logic_2_46 util_vector_logic_2
       (.Op1(util_vector_logic_0_Res),
        .Res(out_n));
endmodule

module nand_3_0_imp_X1GRAL
   (out_n,
    clear_bar,
    in2);
  output [0:0]out_n;
  input clear_bar;
  input in2;

  wire clear_bar;
  wire in2;
  wire [0:0]out_n;
  wire util_vector_logic_0_Res;

  (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
  counter_4_util_vector_logic_0_44 util_vector_logic_0
       (.Op1(clear_bar),
        .Op2(in2),
        .Res(util_vector_logic_0_Res));
  (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
  counter_4_util_vector_logic_2_38 util_vector_logic_2
       (.Op1(util_vector_logic_0_Res),
        .Res(out_n));
endmodule

module nand_3_1_imp_10ETVR
   (n_out,
    out_n,
    in2);
  output [0:0]n_out;
  input [0:0]out_n;
  input in2;

  wire in2;
  wire [0:0]n_out;
  wire [0:0]out_n;
  wire util_vector_logic_0_Res;

  (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
  counter_4_util_vector_logic_0_34 util_vector_logic_0
       (.Op1(out_n),
        .Op2(in2),
        .Res(util_vector_logic_0_Res));
  (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
  counter_4_util_vector_logic_2_31 util_vector_logic_2
       (.Op1(util_vector_logic_0_Res),
        .Res(n_out));
endmodule

module nand_3_1_imp_16EO2DV
   (n_out,
    out_n,
    in2);
  output [0:0]n_out;
  input [0:0]out_n;
  input in2;

  wire in2;
  wire [0:0]n_out;
  wire [0:0]out_n;
  wire util_vector_logic_0_Res;

  (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
  counter_4_util_vector_logic_0_45 util_vector_logic_0
       (.Op1(out_n),
        .Op2(in2),
        .Res(util_vector_logic_0_Res));
  (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
  counter_4_util_vector_logic_2_39 util_vector_logic_2
       (.Op1(util_vector_logic_0_Res),
        .Res(n_out));
endmodule

module nand_3_1_imp_1U3C8J2
   (n_out,
    out_n,
    in2);
  output [0:0]n_out;
  input [0:0]out_n;
  input in2;

  wire in2;
  wire [0:0]n_out;
  wire [0:0]out_n;
  wire util_vector_logic_0_Res;

  (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
  counter_4_util_vector_logic_0_54 util_vector_logic_0
       (.Op1(out_n),
        .Op2(in2),
        .Res(util_vector_logic_0_Res));
  (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
  counter_4_util_vector_logic_2_47 util_vector_logic_2
       (.Op1(util_vector_logic_0_Res),
        .Res(n_out));
endmodule

module nand_3_1_imp_WJ6GHM
   (n_out,
    out_n,
    in2);
  output [0:0]n_out;
  input [0:0]out_n;
  input in2;

  wire in2;
  wire [0:0]n_out;
  wire [0:0]out_n;
  wire util_vector_logic_0_Res;

  (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
  counter_4_util_vector_logic_0_63 util_vector_logic_0
       (.Op1(out_n),
        .Op2(in2),
        .Res(util_vector_logic_0_Res));
  (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
  counter_4_util_vector_logic_2_55 util_vector_logic_2
       (.Op1(util_vector_logic_0_Res),
        .Res(n_out));
endmodule

module nand_3_2_imp_17YVZ09
   (\bbstub_Res[0] ,
    in1,
    out_n);
  output [0:0]\bbstub_Res[0] ;
  input in1;
  input [0:0]out_n;

  wire [0:0]\bbstub_Res[0] ;
  wire in1;
  wire [0:0]out_n;
  wire util_vector_logic_0_Res;

  (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
  counter_4_util_vector_logic_0_64 util_vector_logic_0
       (.Op1(in1),
        .Op2(out_n),
        .Res(util_vector_logic_0_Res));
  (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
  counter_4_util_vector_logic_2_56 util_vector_logic_2
       (.Op1(util_vector_logic_0_Res),
        .Res(\bbstub_Res[0] ));
endmodule

module nand_3_2_imp_1E42ZX
   (\bbstub_Res[0] ,
    in1,
    out_n);
  output [0:0]\bbstub_Res[0] ;
  input in1;
  input [0:0]out_n;

  wire [0:0]\bbstub_Res[0] ;
  wire in1;
  wire [0:0]out_n;
  wire util_vector_logic_0_Res;

  (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
  counter_4_util_vector_logic_0_55 util_vector_logic_0
       (.Op1(in1),
        .Op2(out_n),
        .Res(util_vector_logic_0_Res));
  (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
  counter_4_util_vector_logic_2_48 util_vector_logic_2
       (.Op1(util_vector_logic_0_Res),
        .Res(\bbstub_Res[0] ));
endmodule

module nand_3_2_imp_1SJ3MX0
   (\bbstub_Res[0] ,
    in1,
    out_n);
  output [0:0]\bbstub_Res[0] ;
  input in1;
  input [0:0]out_n;

  wire [0:0]\bbstub_Res[0] ;
  wire in1;
  wire [0:0]out_n;
  wire util_vector_logic_0_Res;

  (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
  counter_4_util_vector_logic_0_35 util_vector_logic_0
       (.Op1(in1),
        .Op2(out_n),
        .Res(util_vector_logic_0_Res));
  (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
  counter_4_util_vector_logic_2_32 util_vector_logic_2
       (.Op1(util_vector_logic_0_Res),
        .Res(\bbstub_Res[0] ));
endmodule

module nand_3_2_imp_W5HWCW
   (\bbstub_Res[0] ,
    in1,
    out_n);
  output [0:0]\bbstub_Res[0] ;
  input in1;
  input [0:0]out_n;

  wire [0:0]\bbstub_Res[0] ;
  wire in1;
  wire [0:0]out_n;
  wire util_vector_logic_0_Res;

  (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
  counter_4_util_vector_logic_0_46 util_vector_logic_0
       (.Op1(in1),
        .Op2(out_n),
        .Res(util_vector_logic_0_Res));
  (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
  counter_4_util_vector_logic_2_40 util_vector_logic_2
       (.Op1(util_vector_logic_0_Res),
        .Res(\bbstub_Res[0] ));
endmodule

module nand_3_3_imp_17BLV72
   (out_n,
    clear_bar,
    in2);
  output [0:0]out_n;
  input clear_bar;
  input in2;

  wire clear_bar;
  wire in2;
  wire [0:0]out_n;
  wire util_vector_logic_0_Res;

  (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
  counter_4_util_vector_logic_0_47 util_vector_logic_0
       (.Op1(clear_bar),
        .Op2(in2),
        .Res(util_vector_logic_0_Res));
  (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
  counter_4_util_vector_logic_2_41 util_vector_logic_2
       (.Op1(util_vector_logic_0_Res),
        .Res(out_n));
endmodule

module nand_3_3_imp_1T53DOZ
   (out_n,
    clear_bar,
    in2);
  output [0:0]out_n;
  input clear_bar;
  input in2;

  wire clear_bar;
  wire in2;
  wire [0:0]out_n;
  wire util_vector_logic_0_Res;

  (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
  counter_4_util_vector_logic_0_56 util_vector_logic_0
       (.Op1(clear_bar),
        .Op2(in2),
        .Res(util_vector_logic_0_Res));
  (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
  counter_4_util_vector_logic_2_49 util_vector_logic_2
       (.Op1(util_vector_logic_0_Res),
        .Res(out_n));
endmodule

module nand_3_3_imp_212RY2
   (out_n,
    clear_bar,
    in2);
  output [0:0]out_n;
  input clear_bar;
  input in2;

  wire clear_bar;
  wire in2;
  wire [0:0]out_n;
  wire util_vector_logic_0_Res;

  (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
  counter_4_util_vector_logic_0_36 util_vector_logic_0
       (.Op1(clear_bar),
        .Op2(in2),
        .Res(util_vector_logic_0_Res));
  (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
  counter_4_util_vector_logic_2_33 util_vector_logic_2
       (.Op1(util_vector_logic_0_Res),
        .Res(out_n));
endmodule

module nand_3_3_imp_VJTKG7
   (out_n,
    clear_bar,
    in2);
  output [0:0]out_n;
  input clear_bar;
  input in2;

  wire clear_bar;
  wire in2;
  wire [0:0]out_n;
  wire util_vector_logic_0_Res;

  (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
  counter_4_util_vector_logic_0_65 util_vector_logic_0
       (.Op1(clear_bar),
        .Op2(in2),
        .Res(util_vector_logic_0_Res));
  (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
  counter_4_util_vector_logic_2_57 util_vector_logic_2
       (.Op1(util_vector_logic_0_Res),
        .Res(out_n));
endmodule

module nand_3_4_imp_14WGUYM
   (out_n,
    in1,
    in2);
  output [0:0]out_n;
  input in1;
  input in2;

  wire in1;
  wire in2;
  wire [0:0]out_n;
  wire util_vector_logic_0_Res;

  (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
  counter_4_util_vector_logic_0_66 util_vector_logic_0
       (.Op1(in1),
        .Op2(in2),
        .Res(util_vector_logic_0_Res));
  (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
  counter_4_util_vector_logic_2_58 util_vector_logic_2
       (.Op1(util_vector_logic_0_Res),
        .Res(out_n));
endmodule

module nand_3_4_imp_1ROX1FN
   (out_n,
    in1,
    in2);
  output [0:0]out_n;
  input in1;
  input in2;

  wire in1;
  wire in2;
  wire [0:0]out_n;
  wire util_vector_logic_0_Res;

  (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
  counter_4_util_vector_logic_0_37 util_vector_logic_0
       (.Op1(in1),
        .Op2(in2),
        .Res(util_vector_logic_0_Res));
  (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
  counter_4_util_vector_logic_2_34 util_vector_logic_2
       (.Op1(util_vector_logic_0_Res),
        .Res(out_n));
endmodule

module nand_3_4_imp_28XI7E
   (out_n,
    in1,
    in2);
  output [0:0]out_n;
  input in1;
  input in2;

  wire in1;
  wire in2;
  wire [0:0]out_n;
  wire util_vector_logic_0_Res;

  (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
  counter_4_util_vector_logic_0_57 util_vector_logic_0
       (.Op1(in1),
        .Op2(in2),
        .Res(util_vector_logic_0_Res));
  (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
  counter_4_util_vector_logic_2_50 util_vector_logic_2
       (.Op1(util_vector_logic_0_Res),
        .Res(out_n));
endmodule

module nand_3_4_imp_Z8J4UV
   (out_n,
    in1,
    in2);
  output [0:0]out_n;
  input in1;
  input in2;

  wire in1;
  wire in2;
  wire [0:0]out_n;
  wire util_vector_logic_0_Res;

  (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
  counter_4_util_vector_logic_0_48 util_vector_logic_0
       (.Op1(in1),
        .Op2(in2),
        .Res(util_vector_logic_0_Res));
  (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
  counter_4_util_vector_logic_2_42 util_vector_logic_2
       (.Op1(util_vector_logic_0_Res),
        .Res(out_n));
endmodule

module nand_3_5_imp_14ARGX5
   (out_n,
    in1,
    in2);
  output [0:0]out_n;
  input in1;
  input in2;

  wire in1;
  wire in2;
  wire [0:0]out_n;
  wire util_vector_logic_0_Res;

  (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
  counter_4_util_vector_logic_0_49 util_vector_logic_0
       (.Op1(in1),
        .Op2(in2),
        .Res(util_vector_logic_0_Res));
  (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
  counter_4_util_vector_logic_2_43 util_vector_logic_2
       (.Op1(util_vector_logic_0_Res),
        .Res(out_n));
endmodule

module nand_3_5_imp_1SBTYZ8
   (out_n,
    in1,
    in2);
  output [0:0]out_n;
  input in1;
  input in2;

  wire in1;
  wire in2;
  wire [0:0]out_n;
  wire util_vector_logic_0_Res;

  (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
  counter_4_util_vector_logic_0_58 util_vector_logic_0
       (.Op1(in1),
        .Op2(in2),
        .Res(util_vector_logic_0_Res));
  (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
  counter_4_util_vector_logic_2_51 util_vector_logic_2
       (.Op1(util_vector_logic_0_Res),
        .Res(out_n));
endmodule

module nand_3_5_imp_2UYB3X
   (out_n,
    in1,
    in2);
  output [0:0]out_n;
  input in1;
  input in2;

  wire in1;
  wire in2;
  wire [0:0]out_n;
  wire util_vector_logic_0_Res;

  (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
  counter_4_util_vector_logic_0_38 util_vector_logic_0
       (.Op1(in1),
        .Op2(in2),
        .Res(util_vector_logic_0_Res));
  (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
  counter_4_util_vector_logic_2_35 util_vector_logic_2
       (.Op1(util_vector_logic_0_Res),
        .Res(out_n));
endmodule

module nand_3_5_imp_YLASG0
   (out_n,
    in1,
    in2);
  output [0:0]out_n;
  input in1;
  input in2;

  wire in1;
  wire in2;
  wire [0:0]out_n;
  wire util_vector_logic_0_Res;

  (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
  counter_4_util_vector_logic_0_67 util_vector_logic_0
       (.Op1(in1),
        .Op2(in2),
        .Res(util_vector_logic_0_Res));
  (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
  counter_4_util_vector_logic_2_59 util_vector_logic_2
       (.Op1(util_vector_logic_0_Res),
        .Res(out_n));
endmodule

module nand_3_6_imp_162DWN7
   (out_n,
    in1,
    Q3);
  output [0:0]out_n;
  input in1;
  input [0:0]Q3;

  wire [0:0]Q3;
  wire in1;
  wire [0:0]out_n;
  wire util_vector_logic_0_Res;

  (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
  counter_4_util_vector_logic_0_68 util_vector_logic_0
       (.Op1(in1),
        .Op2(Q3),
        .Res(util_vector_logic_0_Res));
  (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
  counter_4_util_vector_logic_2_60 util_vector_logic_2
       (.Op1(util_vector_logic_0_Res),
        .Res(out_n));
endmodule

module nand_3_6_imp_1QK6U2M
   (Q_bar,
    in1,
    Q0);
  output [0:0]Q_bar;
  input in1;
  input [0:0]Q0;

  wire [0:0]Q0;
  wire [0:0]Q_bar;
  wire in1;
  wire util_vector_logic_0_Res;

  (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
  counter_4_util_vector_logic_0_39 util_vector_logic_0
       (.Op1(in1),
        .Op2(Q0),
        .Res(util_vector_logic_0_Res));
  (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
  counter_4_util_vector_logic_2_36 util_vector_logic_2
       (.Op1(util_vector_logic_0_Res),
        .Res(Q_bar));
endmodule

module nand_3_6_imp_3L87RR
   (Q_bar,
    in1,
    Q2);
  output [0:0]Q_bar;
  input in1;
  input [0:0]Q2;

  wire [0:0]Q2;
  wire [0:0]Q_bar;
  wire in1;
  wire util_vector_logic_0_Res;

  (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
  counter_4_util_vector_logic_0_59 util_vector_logic_0
       (.Op1(in1),
        .Op2(Q2),
        .Res(util_vector_logic_0_Res));
  (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
  counter_4_util_vector_logic_2_52 util_vector_logic_2
       (.Op1(util_vector_logic_0_Res),
        .Res(Q_bar));
endmodule

module nand_3_6_imp_XV1KYY
   (Q_bar,
    in1,
    Q1);
  output [0:0]Q_bar;
  input in1;
  input [0:0]Q1;

  wire [0:0]Q1;
  wire [0:0]Q_bar;
  wire in1;
  wire util_vector_logic_0_Res;

  (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
  counter_4_util_vector_logic_0_50 util_vector_logic_0
       (.Op1(in1),
        .Op2(Q1),
        .Res(util_vector_logic_0_Res));
  (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
  counter_4_util_vector_logic_2_44 util_vector_logic_2
       (.Op1(util_vector_logic_0_Res),
        .Res(Q_bar));
endmodule

module nand_3_7_imp_15K5CUS
   (Q1,
    Q_bar,
    in2);
  output [0:0]Q1;
  input [0:0]Q_bar;
  input in2;

  wire [0:0]Q1;
  wire [0:0]Q_bar;
  wire in2;
  wire util_vector_logic_0_Res;

  (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
  counter_4_util_vector_logic_0_51 util_vector_logic_0
       (.Op1(Q_bar),
        .Op2(in2),
        .Res(util_vector_logic_0_Res));
  (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
  counter_4_util_vector_logic_2_45 util_vector_logic_2
       (.Op1(util_vector_logic_0_Res),
        .Res(Q1));
endmodule

module nand_3_7_imp_1R17U5L
   (Q2,
    Q_bar,
    in2);
  output [0:0]Q2;
  input [0:0]Q_bar;
  input in2;

  wire [0:0]Q2;
  wire [0:0]Q_bar;
  wire in2;
  wire util_vector_logic_0_Res;

  (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
  counter_4_util_vector_logic_0_60 util_vector_logic_0
       (.Op1(Q_bar),
        .Op2(in2),
        .Res(util_vector_logic_0_Res));
  (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
  counter_4_util_vector_logic_2_53 util_vector_logic_2
       (.Op1(util_vector_logic_0_Res),
        .Res(Q2));
endmodule

module nand_3_7_imp_435COW
   (Q0,
    Q_bar,
    in2);
  output [0:0]Q0;
  input [0:0]Q_bar;
  input in2;

  wire [0:0]Q0;
  wire [0:0]Q_bar;
  wire in2;
  wire util_vector_logic_0_Res;

  (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
  counter_4_util_vector_logic_0_40 util_vector_logic_0
       (.Op1(Q_bar),
        .Op2(in2),
        .Res(util_vector_logic_0_Res));
  (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
  counter_4_util_vector_logic_2_37 util_vector_logic_2
       (.Op1(util_vector_logic_0_Res),
        .Res(Q0));
endmodule

module nand_3_7_imp_XEBZR1
   (Q3,
    out_n,
    in2);
  output [0:0]Q3;
  input [0:0]out_n;
  input in2;

  wire [0:0]Q3;
  wire in2;
  wire [0:0]out_n;
  wire util_vector_logic_0_Res;

  (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
  counter_4_util_vector_logic_0_69 util_vector_logic_0
       (.Op1(out_n),
        .Op2(in2),
        .Res(util_vector_logic_0_Res));
  (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1" *) 
  counter_4_util_vector_logic_2_61 util_vector_logic_2
       (.Op1(util_vector_logic_0_Res),
        .Res(Q3));
endmodule

(* open_time = "10" *) 
(* NotValidForBitStream *)
module room_man
   (clk,
    in,
    out,
    ent,
    open,
    close);
  input clk;
  input in;
  input out;
  input ent;
  output open;
  output close;

  wire clk;
  wire clk_IBUF;
  wire close;
  wire close_OBUF;
  wire en;
  wire in;
  wire in_IBUF;
  wire open;
  wire out;
  wire out_IBUF;
  wire q_0;
  wire q_1;
  wire q_2;
  wire q_3;

  (* HW_HANDOFF = "counter_4.hwdef" *) 
  counter_4 c4
       (.Enable(en),
        .Q0(q_0),
        .Q1(q_1),
        .Q2(q_2),
        .Q3(q_3),
        .U(in_IBUF),
        .clear_bar(1'b1),
        .clock(clk_IBUF));
  LUT2 #(
    .INIT(4'h6)) 
    c4_i_1
       (.I0(out_IBUF),
        .I1(in_IBUF),
        .O(en));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  OBUF close_OBUF_inst
       (.I(close_OBUF),
        .O(close));
  LUT4 #(
    .INIT(16'hFFFE)) 
    close_OBUF_inst_i_1
       (.I0(q_0),
        .I1(q_3),
        .I2(q_2),
        .I3(q_1),
        .O(close_OBUF));
  IBUF in_IBUF_inst
       (.I(in),
        .O(in_IBUF));
  OBUF open_OBUF_inst
       (.I(1'b0),
        .O(open));
  IBUF out_IBUF_inst
       (.I(out),
        .O(out_IBUF));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
