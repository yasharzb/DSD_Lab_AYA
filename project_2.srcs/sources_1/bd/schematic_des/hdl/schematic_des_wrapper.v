//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
//Date        : Mon Oct 19 20:16:52 2020
//Host        : LAPTOP-B8FRIN8D running 64-bit major release  (build 9200)
//Command     : generate_target schematic_des_wrapper.bd
//Design      : schematic_des_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module schematic_des_wrapper
   (out_res,
    x,
    y);
  output [0:0]out_res;
  input x;
  input y;

  wire [0:0]out_res;
  wire x;
  wire y;

  schematic_des schematic_des_i
       (.out_res(out_res),
        .x(x),
        .y(y));
endmodule
