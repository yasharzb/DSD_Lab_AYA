//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
//Date        : Mon Oct 19 21:51:57 2020
//Host        : Arian22 running 64-bit major release  (build 9200)
//Command     : generate_target BCD_modulo_3.bd
//Design      : BCD_modulo_3
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "BCD_modulo_3,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=BCD_modulo_3,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "BCD_modulo_3.hwdef" *) 
module BCD_modulo_3
   (inee1,
    inee2,
    outee);
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.INEE1 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.INEE1, LAYERED_METADATA undef" *) input inee1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.INEE2 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.INEE2, LAYERED_METADATA undef" *) input inee2;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.OUTEE DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.OUTEE, LAYERED_METADATA undef" *) output [0:0]outee;

  wire inee1_1;
  wire inee2_1;
  wire [0:0]util_vector_logic_0_Res;

  assign inee1_1 = inee1;
  assign inee2_1 = inee2;
  assign outee[0] = util_vector_logic_0_Res;
  BCD_modulo_3_util_vector_logic_0_0 util_vector_logic_0
       (.Op1(inee1_1),
        .Op2(inee2_1),
        .Res(util_vector_logic_0_Res));
endmodule
