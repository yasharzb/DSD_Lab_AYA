vlib work
vlib riviera

vlib riviera/xil_defaultlib
vlib riviera/util_vector_logic_v2_0_1

vmap xil_defaultlib riviera/xil_defaultlib
vmap util_vector_logic_v2_0_1 riviera/util_vector_logic_v2_0_1

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/counter_4/sim/counter_4.v" \

vlog -work util_vector_logic_v2_0_1  -v2k5 \
"../../../../room.srcs/sources_1/bd/counter_4/ipshared/2137/hdl/util_vector_logic_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 \
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

