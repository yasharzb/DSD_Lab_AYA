vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/util_vector_logic_v2_0_1

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap util_vector_logic_v2_0_1 modelsim_lib/msim/util_vector_logic_v2_0_1

vlog -work xil_defaultlib -64 -incr \
"../../../bd/counter_4/sim/counter_4.v" \

vlog -work util_vector_logic_v2_0_1 -64 -incr \
"../../../../room.srcs/sources_1/bd/counter_4/ipshared/2137/hdl/util_vector_logic_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr \
"../../../bd/counter_4/ip/counter_4_util_vector_logic_0_8/sim/counter_4_util_vector_logic_0_8.v" \
"../../../bd/counter_4/ip/counter_4_util_vector_logic_2_7/sim/counter_4_util_vector_logic_2_7.v" \
"../../../bd/counter_4/ip/counter_4_util_vector_logic_0_10/sim/counter_4_util_vector_logic_0_10.v" \
"../../../bd/counter_4/ip/counter_4_util_vector_logic_2_9/sim/counter_4_util_vector_logic_2_9.v" \
"../../../bd/counter_4/ip/counter_4_util_vector_logic_0_17/sim/counter_4_util_vector_logic_0_17.v" \
"../../../bd/counter_4/ip/counter_4_util_vector_logic_0_18/sim/counter_4_util_vector_logic_0_18.v" \
"../../../bd/counter_4/ip/counter_4_util_vector_logic_2_16/sim/counter_4_util_vector_logic_2_16.v" \
"../../../bd/counter_4/ip/counter_4_util_vector_logic_0_19/sim/counter_4_util_vector_logic_0_19.v" \
"../../../bd/counter_4/ip/counter_4_util_vector_logic_2_17/sim/counter_4_util_vector_logic_2_17.v" \
"../../../bd/counter_4/ip/counter_4_util_vector_logic_0_20/sim/counter_4_util_vector_logic_0_20.v" \
"../../../bd/counter_4/ip/counter_4_util_vector_logic_2_18/sim/counter_4_util_vector_logic_2_18.v" \
"../../../bd/counter_4/ip/counter_4_util_vector_logic_0_21/sim/counter_4_util_vector_logic_0_21.v" \
"../../../bd/counter_4/ip/counter_4_util_vector_logic_2_19/sim/counter_4_util_vector_logic_2_19.v" \
"../../../bd/counter_4/ip/counter_4_util_vector_logic_0_22/sim/counter_4_util_vector_logic_0_22.v" \
"../../../bd/counter_4/ip/counter_4_util_vector_logic_2_20/sim/counter_4_util_vector_logic_2_20.v" \
"../../../bd/counter_4/ip/counter_4_util_vector_logic_0_23/sim/counter_4_util_vector_logic_0_23.v" \
"../../../bd/counter_4/ip/counter_4_util_vector_logic_2_21/sim/counter_4_util_vector_logic_2_21.v" \
"../../../bd/counter_4/ip/counter_4_util_vector_logic_0_24/sim/counter_4_util_vector_logic_0_24.v" \

vlog -work xil_defaultlib \
"glbl.v"

