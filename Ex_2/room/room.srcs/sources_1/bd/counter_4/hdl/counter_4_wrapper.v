//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
//Date        : Mon Oct 26 10:39:37 2020
//Host        : DESKTOP-4NPEG9F running 64-bit major release  (build 9200)
//Command     : generate_target counter_4_wrapper.bd
//Design      : counter_4_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module counter_4_wrapper
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

  wire D;
  wire [0:0]Q;
  wire [0:0]Q_bar;
  wire clear_bar;
  wire clock;

  counter_4 counter_4_i
       (.D(D),
        .Q(Q),
        .Q_bar(Q_bar),
        .clear_bar(clear_bar),
        .clock(clock));
endmodule
