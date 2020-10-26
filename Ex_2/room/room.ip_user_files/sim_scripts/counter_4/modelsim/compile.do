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
"../../../bd/counter_4/ip/counter_4_util_vector_logic_0_33/sim/counter_4_util_vector_logic_0_33.v" \
"../../../bd/counter_4/ip/counter_4_util_vector_logic_2_30/sim/counter_4_util_vector_logic_2_30.v" \
"../../../bd/counter_4/ip/counter_4_util_vector_logic_0_34/sim/counter_4_util_vector_logic_0_34.v" \
"../../../bd/counter_4/ip/counter_4_util_vector_logic_2_31/sim/counter_4_util_vector_logic_2_31.v" \
"../../../bd/counter_4/ip/counter_4_not_0_1/sim/counter_4_not_0_1.v" \
"../../../bd/counter_4/ip/counter_4_util_vector_logic_0_35/sim/counter_4_util_vector_logic_0_35.v" \
"../../../bd/counter_4/ip/counter_4_util_vector_logic_2_32/sim/counter_4_util_vector_logic_2_32.v" \
"../../../bd/counter_4/ip/counter_4_util_vector_logic_0_36/sim/counter_4_util_vector_logic_0_36.v" \
"../../../bd/counter_4/ip/counter_4_util_vector_logic_2_33/sim/counter_4_util_vector_logic_2_33.v" \
"../../../bd/counter_4/ip/counter_4_util_vector_logic_0_37/sim/counter_4_util_vector_logic_0_37.v" \
"../../../bd/counter_4/ip/counter_4_util_vector_logic_2_34/sim/counter_4_util_vector_logic_2_34.v" \
"../../../bd/counter_4/ip/counter_4_util_vector_logic_0_38/sim/counter_4_util_vector_logic_0_38.v" \
"../../../bd/counter_4/ip/counter_4_util_vector_logic_2_35/sim/counter_4_util_vector_logic_2_35.v" \
"../../../bd/counter_4/ip/counter_4_util_vector_logic_0_39/sim/counter_4_util_vector_logic_0_39.v" \
"../../../bd/counter_4/ip/counter_4_util_vector_logic_2_36/sim/counter_4_util_vector_logic_2_36.v" \
"../../../bd/counter_4/ip/counter_4_util_vector_logic_0_40/sim/counter_4_util_vector_logic_0_40.v" \
"../../../bd/counter_4/ip/counter_4_util_vector_logic_2_37/sim/counter_4_util_vector_logic_2_37.v" \
"../../../bd/counter_4/ip/counter_4_not_1_1/sim/counter_4_not_1_1.v" \
"../../../bd/counter_4/ip/counter_4_util_vector_logic_0_41/sim/counter_4_util_vector_logic_0_41.v" \
"../../../bd/counter_4/ip/counter_4_util_vector_logic_0_42/sim/counter_4_util_vector_logic_0_42.v" \
"../../../bd/counter_4/ip/counter_4_util_vector_logic_0_43/sim/counter_4_util_vector_logic_0_43.v" \
"../../../bd/counter_4/ip/counter_4_and_0_0/sim/counter_4_and_0_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

