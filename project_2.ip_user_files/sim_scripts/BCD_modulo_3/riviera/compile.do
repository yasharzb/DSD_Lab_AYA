vlib work
vlib riviera

vlib riviera/util_vector_logic_v2_0_1
vlib riviera/xil_defaultlib

vmap util_vector_logic_v2_0_1 riviera/util_vector_logic_v2_0_1
vmap xil_defaultlib riviera/xil_defaultlib

vlog -work util_vector_logic_v2_0_1  -v2k5 \
"../../../../project_2.srcs/sources_1/bd/BCD_modulo_3/ipshared/2137/hdl/util_vector_logic_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_0_0/sim/BCD_modulo_3_util_vector_logic_0_0.v" \
"../../../bd/BCD_modulo_3/sim/BCD_modulo_3.v" \

vlog -work xil_defaultlib \
"glbl.v"

