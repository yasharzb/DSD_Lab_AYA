vlib work
vlib riviera

vlib riviera/xil_defaultlib
vlib riviera/util_vector_logic_v2_0_1

vmap xil_defaultlib riviera/xil_defaultlib
vmap util_vector_logic_v2_0_1 riviera/util_vector_logic_v2_0_1

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/BCD_modulo_3/sim/BCD_modulo_3.v" \

vlog -work util_vector_logic_v2_0_1  -v2k5 \
"../../../../project_2.srcs/sources_1/bd/BCD_modulo_3/ipshared/2137/hdl/util_vector_logic_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_0_2/sim/BCD_modulo_3_util_vector_logic_0_2.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_0_3/sim/BCD_modulo_3_util_vector_logic_0_3.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_0_4/sim/BCD_modulo_3_util_vector_logic_0_4.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_0_5/sim/BCD_modulo_3_util_vector_logic_0_5.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_4_1/sim/BCD_modulo_3_util_vector_logic_4_1.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_4_2/sim/BCD_modulo_3_util_vector_logic_4_2.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_4_3/sim/BCD_modulo_3_util_vector_logic_4_3.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_4_4/sim/BCD_modulo_3_util_vector_logic_4_4.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_4_5/sim/BCD_modulo_3_util_vector_logic_4_5.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_4_6/sim/BCD_modulo_3_util_vector_logic_4_6.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_10_0/sim/BCD_modulo_3_util_vector_logic_10_0.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_10_1/sim/BCD_modulo_3_util_vector_logic_10_1.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_12_0/sim/BCD_modulo_3_util_vector_logic_12_0.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_13_0/sim/BCD_modulo_3_util_vector_logic_13_0.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_13_1/sim/BCD_modulo_3_util_vector_logic_13_1.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_13_2/sim/BCD_modulo_3_util_vector_logic_13_2.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_13_3/sim/BCD_modulo_3_util_vector_logic_13_3.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_14_0/sim/BCD_modulo_3_util_vector_logic_14_0.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_15_0/sim/BCD_modulo_3_util_vector_logic_15_0.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_13_4/sim/BCD_modulo_3_util_vector_logic_13_4.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_14_1/sim/BCD_modulo_3_util_vector_logic_14_1.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_15_1/sim/BCD_modulo_3_util_vector_logic_15_1.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_22_0/sim/BCD_modulo_3_util_vector_logic_22_0.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_22_1/sim/BCD_modulo_3_util_vector_logic_22_1.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_0_6/sim/BCD_modulo_3_util_vector_logic_0_6.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_1_0/sim/BCD_modulo_3_util_vector_logic_1_0.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_2_0/sim/BCD_modulo_3_util_vector_logic_2_0.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_3_0/sim/BCD_modulo_3_util_vector_logic_3_0.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_4_7/sim/BCD_modulo_3_util_vector_logic_4_7.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_5_0/sim/BCD_modulo_3_util_vector_logic_5_0.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_6_0/sim/BCD_modulo_3_util_vector_logic_6_0.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_7_0/sim/BCD_modulo_3_util_vector_logic_7_0.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_8_0/sim/BCD_modulo_3_util_vector_logic_8_0.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_9_0/sim/BCD_modulo_3_util_vector_logic_9_0.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_10_2/sim/BCD_modulo_3_util_vector_logic_10_2.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_11_0/sim/BCD_modulo_3_util_vector_logic_11_0.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_12_1/sim/BCD_modulo_3_util_vector_logic_12_1.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_13_5/sim/BCD_modulo_3_util_vector_logic_13_5.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_14_2/sim/BCD_modulo_3_util_vector_logic_14_2.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_15_2/sim/BCD_modulo_3_util_vector_logic_15_2.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_16_0/sim/BCD_modulo_3_util_vector_logic_16_0.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_17_0/sim/BCD_modulo_3_util_vector_logic_17_0.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_18_0/sim/BCD_modulo_3_util_vector_logic_18_0.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_19_0/sim/BCD_modulo_3_util_vector_logic_19_0.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_20_0/sim/BCD_modulo_3_util_vector_logic_20_0.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_21_0/sim/BCD_modulo_3_util_vector_logic_21_0.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_22_2/sim/BCD_modulo_3_util_vector_logic_22_2.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_23_0/sim/BCD_modulo_3_util_vector_logic_23_0.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_0_7/sim/BCD_modulo_3_util_vector_logic_0_7.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_0_8/sim/BCD_modulo_3_util_vector_logic_0_8.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_0_9/sim/BCD_modulo_3_util_vector_logic_0_9.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_0_10/sim/BCD_modulo_3_util_vector_logic_0_10.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_4_8/sim/BCD_modulo_3_util_vector_logic_4_8.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_4_9/sim/BCD_modulo_3_util_vector_logic_4_9.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_4_10/sim/BCD_modulo_3_util_vector_logic_4_10.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_4_11/sim/BCD_modulo_3_util_vector_logic_4_11.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_4_12/sim/BCD_modulo_3_util_vector_logic_4_12.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_4_13/sim/BCD_modulo_3_util_vector_logic_4_13.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_4_14/sim/BCD_modulo_3_util_vector_logic_4_14.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_4_15/sim/BCD_modulo_3_util_vector_logic_4_15.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_4_16/sim/BCD_modulo_3_util_vector_logic_4_16.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_13_7/sim/BCD_modulo_3_util_vector_logic_13_7.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_13_8/sim/BCD_modulo_3_util_vector_logic_13_8.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_4_17/sim/BCD_modulo_3_util_vector_logic_4_17.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_5_1/sim/BCD_modulo_3_util_vector_logic_5_1.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_7_1/sim/BCD_modulo_3_util_vector_logic_7_1.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_15_3/sim/BCD_modulo_3_util_vector_logic_15_3.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_16_1/sim/BCD_modulo_3_util_vector_logic_16_1.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_17_1/sim/BCD_modulo_3_util_vector_logic_17_1.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_15_4/sim/BCD_modulo_3_util_vector_logic_15_4.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_16_2/sim/BCD_modulo_3_util_vector_logic_16_2.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_17_2/sim/BCD_modulo_3_util_vector_logic_17_2.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_13_9/sim/BCD_modulo_3_util_vector_logic_13_9.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_14_3/sim/BCD_modulo_3_util_vector_logic_14_3.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_0_11/sim/BCD_modulo_3_util_vector_logic_0_11.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_1_1/sim/BCD_modulo_3_util_vector_logic_1_1.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_2_1/sim/BCD_modulo_3_util_vector_logic_2_1.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_3_1/sim/BCD_modulo_3_util_vector_logic_3_1.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_4_18/sim/BCD_modulo_3_util_vector_logic_4_18.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_5_2/sim/BCD_modulo_3_util_vector_logic_5_2.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_6_1/sim/BCD_modulo_3_util_vector_logic_6_1.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_7_2/sim/BCD_modulo_3_util_vector_logic_7_2.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_8_1/sim/BCD_modulo_3_util_vector_logic_8_1.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_9_1/sim/BCD_modulo_3_util_vector_logic_9_1.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_10_3/sim/BCD_modulo_3_util_vector_logic_10_3.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_11_1/sim/BCD_modulo_3_util_vector_logic_11_1.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_12_2/sim/BCD_modulo_3_util_vector_logic_12_2.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_13_10/sim/BCD_modulo_3_util_vector_logic_13_10.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_14_4/sim/BCD_modulo_3_util_vector_logic_14_4.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_15_5/sim/BCD_modulo_3_util_vector_logic_15_5.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_16_3/sim/BCD_modulo_3_util_vector_logic_16_3.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_17_3/sim/BCD_modulo_3_util_vector_logic_17_3.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_18_1/sim/BCD_modulo_3_util_vector_logic_18_1.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_19_1/sim/BCD_modulo_3_util_vector_logic_19_1.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_20_1/sim/BCD_modulo_3_util_vector_logic_20_1.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_21_1/sim/BCD_modulo_3_util_vector_logic_21_1.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_22_3/sim/BCD_modulo_3_util_vector_logic_22_3.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_23_1/sim/BCD_modulo_3_util_vector_logic_23_1.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_0_12/sim/BCD_modulo_3_util_vector_logic_0_12.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_1_2/sim/BCD_modulo_3_util_vector_logic_1_2.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_2_2/sim/BCD_modulo_3_util_vector_logic_2_2.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_3_2/sim/BCD_modulo_3_util_vector_logic_3_2.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_4_19/sim/BCD_modulo_3_util_vector_logic_4_19.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_5_3/sim/BCD_modulo_3_util_vector_logic_5_3.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_6_2/sim/BCD_modulo_3_util_vector_logic_6_2.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_7_3/sim/BCD_modulo_3_util_vector_logic_7_3.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_8_2/sim/BCD_modulo_3_util_vector_logic_8_2.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_9_2/sim/BCD_modulo_3_util_vector_logic_9_2.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_10_4/sim/BCD_modulo_3_util_vector_logic_10_4.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_11_2/sim/BCD_modulo_3_util_vector_logic_11_2.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_12_3/sim/BCD_modulo_3_util_vector_logic_12_3.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_13_11/sim/BCD_modulo_3_util_vector_logic_13_11.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_14_5/sim/BCD_modulo_3_util_vector_logic_14_5.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_15_6/sim/BCD_modulo_3_util_vector_logic_15_6.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_16_4/sim/BCD_modulo_3_util_vector_logic_16_4.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_17_4/sim/BCD_modulo_3_util_vector_logic_17_4.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_18_2/sim/BCD_modulo_3_util_vector_logic_18_2.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_19_2/sim/BCD_modulo_3_util_vector_logic_19_2.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_20_2/sim/BCD_modulo_3_util_vector_logic_20_2.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_21_2/sim/BCD_modulo_3_util_vector_logic_21_2.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_22_4/sim/BCD_modulo_3_util_vector_logic_22_4.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_23_2/sim/BCD_modulo_3_util_vector_logic_23_2.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_0_13/sim/BCD_modulo_3_util_vector_logic_0_13.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_1_3/sim/BCD_modulo_3_util_vector_logic_1_3.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_2_3/sim/BCD_modulo_3_util_vector_logic_2_3.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_3_3/sim/BCD_modulo_3_util_vector_logic_3_3.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_4_20/sim/BCD_modulo_3_util_vector_logic_4_20.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_5_4/sim/BCD_modulo_3_util_vector_logic_5_4.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_6_3/sim/BCD_modulo_3_util_vector_logic_6_3.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_7_4/sim/BCD_modulo_3_util_vector_logic_7_4.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_8_3/sim/BCD_modulo_3_util_vector_logic_8_3.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_9_3/sim/BCD_modulo_3_util_vector_logic_9_3.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_10_5/sim/BCD_modulo_3_util_vector_logic_10_5.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_11_3/sim/BCD_modulo_3_util_vector_logic_11_3.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_12_4/sim/BCD_modulo_3_util_vector_logic_12_4.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_13_12/sim/BCD_modulo_3_util_vector_logic_13_12.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_14_6/sim/BCD_modulo_3_util_vector_logic_14_6.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_15_7/sim/BCD_modulo_3_util_vector_logic_15_7.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_16_5/sim/BCD_modulo_3_util_vector_logic_16_5.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_17_5/sim/BCD_modulo_3_util_vector_logic_17_5.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_18_3/sim/BCD_modulo_3_util_vector_logic_18_3.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_19_3/sim/BCD_modulo_3_util_vector_logic_19_3.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_20_3/sim/BCD_modulo_3_util_vector_logic_20_3.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_21_3/sim/BCD_modulo_3_util_vector_logic_21_3.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_22_5/sim/BCD_modulo_3_util_vector_logic_22_5.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_23_3/sim/BCD_modulo_3_util_vector_logic_23_3.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_24_0/sim/BCD_modulo_3_util_vector_logic_24_0.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_25_0/sim/BCD_modulo_3_util_vector_logic_25_0.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_0_14/sim/BCD_modulo_3_util_vector_logic_0_14.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_1_4/sim/BCD_modulo_3_util_vector_logic_1_4.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_2_4/sim/BCD_modulo_3_util_vector_logic_2_4.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_3_4/sim/BCD_modulo_3_util_vector_logic_3_4.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_4_21/sim/BCD_modulo_3_util_vector_logic_4_21.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_5_5/sim/BCD_modulo_3_util_vector_logic_5_5.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_6_4/sim/BCD_modulo_3_util_vector_logic_6_4.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_7_5/sim/BCD_modulo_3_util_vector_logic_7_5.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_8_4/sim/BCD_modulo_3_util_vector_logic_8_4.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_9_4/sim/BCD_modulo_3_util_vector_logic_9_4.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_10_6/sim/BCD_modulo_3_util_vector_logic_10_6.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_11_4/sim/BCD_modulo_3_util_vector_logic_11_4.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_12_5/sim/BCD_modulo_3_util_vector_logic_12_5.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_13_13/sim/BCD_modulo_3_util_vector_logic_13_13.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_14_7/sim/BCD_modulo_3_util_vector_logic_14_7.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_15_8/sim/BCD_modulo_3_util_vector_logic_15_8.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_16_6/sim/BCD_modulo_3_util_vector_logic_16_6.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_17_6/sim/BCD_modulo_3_util_vector_logic_17_6.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_18_4/sim/BCD_modulo_3_util_vector_logic_18_4.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_19_4/sim/BCD_modulo_3_util_vector_logic_19_4.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_20_4/sim/BCD_modulo_3_util_vector_logic_20_4.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_21_4/sim/BCD_modulo_3_util_vector_logic_21_4.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_22_6/sim/BCD_modulo_3_util_vector_logic_22_6.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_23_4/sim/BCD_modulo_3_util_vector_logic_23_4.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_24_1/sim/BCD_modulo_3_util_vector_logic_24_1.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_25_1/sim/BCD_modulo_3_util_vector_logic_25_1.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_0_15/sim/BCD_modulo_3_util_vector_logic_0_15.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_0_16/sim/BCD_modulo_3_util_vector_logic_0_16.v" \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_0_17/sim/BCD_modulo_3_util_vector_logic_0_17.v" \

vlog -work xil_defaultlib \
"glbl.v"

