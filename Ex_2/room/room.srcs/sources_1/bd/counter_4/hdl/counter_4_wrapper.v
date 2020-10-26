//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
//Date        : Mon Oct 26 12:01:41 2020
//Host        : DESKTOP-4NPEG9F running 64-bit major release  (build 9200)
//Command     : generate_target counter_4_wrapper.bd
//Design      : counter_4_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module counter_4_wrapper
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
  wire [0:0]Q0;
  wire [0:0]Q1;
  wire [0:0]Q2;
  wire [0:0]Q3;
  wire U;
  wire clear_bar;
  wire clock;

  counter_4 counter_4_i
       (.Enable(Enable),
        .Q0(Q0),
        .Q1(Q1),
        .Q2(Q2),
        .Q3(Q3),
        .U(U),
        .clear_bar(clear_bar),
        .clock(clock));
endmodule
