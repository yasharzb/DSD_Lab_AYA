vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/util_vector_logic_v2_0_1
vlib modelsim_lib/msim/xil_defaultlib

vmap util_vector_logic_v2_0_1 modelsim_lib/msim/util_vector_logic_v2_0_1
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work util_vector_logic_v2_0_1 -64 -incr \
"../../../../project_2.srcs/sources_1/bd/BCD_modulo_3/ipshared/2137/hdl/util_vector_logic_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr \
"../../../bd/BCD_modulo_3/ip/BCD_modulo_3_util_vector_logic_0_0/sim/BCD_modulo_3_util_vector_logic_0_0.v" \
"../../../bd/BCD_modulo_3/sim/BCD_modulo_3.v" \

vlog -work xil_defaultlib \
"glbl.v"

