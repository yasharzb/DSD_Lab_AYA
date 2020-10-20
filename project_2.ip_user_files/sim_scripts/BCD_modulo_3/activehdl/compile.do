vlib work
vlib activehdl

vlib activehdl/xil_defaultlib
vlib activehdl/util_vector_logic_v2_0_1

vmap xil_defaultlib activehdl/xil_defaultlib
vmap util_vector_logic_v2_0_1 activehdl/util_vector_logic_v2_0_1

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

vlog -work xil_defaultlib \
"glbl.v"

