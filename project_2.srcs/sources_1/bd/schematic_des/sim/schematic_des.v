//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
//Date        : Mon Oct 19 20:16:52 2020
//Host        : LAPTOP-B8FRIN8D running 64-bit major release  (build 9200)
//Command     : generate_target schematic_des.bd
//Design      : schematic_des
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "schematic_des,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=schematic_des,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "schematic_des.hwdef" *) 
module schematic_des
   (out_res,
    x,
    y);
  output [0:0]out_res;
  input x;
  input y;

  wire [0:0]util_vector_logic_0_Res;
  wire x_1;
  wire y_1;

  assign out_res[0] = util_vector_logic_0_Res;
  assign x_1 = x;
  assign y_1 = y;
  schematic_des_util_vector_logic_0_0 util_vector_logic_0
       (.Op1(x_1),
        .Op2(y_1),
        .Res(util_vector_logic_0_Res));
endmodule
