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
"../../../bd/counter_4/ip/counter_4_util_vector_logic_0_44/sim/counter_4_util_vector_logic_0_44.v" \
"../../../bd/counter_4/ip/counter_4_util_vector_logic_2_38/sim/counter_4_util_vector_logic_2_38.v" \
"../../../bd/counter_4/ip/counter_4_util_vector_logic_0_45/sim/counter_4_util_vector_logic_0_45.v" \
"../../../bd/counter_4/ip/counter_4_util_vector_logic_2_39/sim/counter_4_util_vector_logic_2_39.v" \
"../../../bd/counter_4/ip/counter_4_not_0_2/sim/counter_4_not_0_2.v" \
"../../../bd/counter_4/ip/counter_4_util_vector_logic_0_46/sim/counter_4_util_vector_logic_0_46.v" \
"../../../bd/counter_4/ip/counter_4_util_vector_logic_2_40/sim/counter_4_util_vector_logic_2_40.v" \
"../../../bd/counter_4/ip/counter_4_util_vector_logic_0_47/sim/counter_4_util_vector_logic_0_47.v" \
"../../../bd/counter_4/ip/counter_4_util_vector_logic_2_41/sim/counter_4_util_vector_logic_2_41.v" \
"../../../bd/counter_4/ip/counter_4_util_vector_logic_0_48/sim/counter_4_util_vector_logic_0_48.v" \
"../../../bd/counter_4/ip/counter_4_util_vector_logic_2_42/sim/counter_4_util_vector_logic_2_42.v" \
"../../../bd/counter_4/ip/counter_4_util_vector_logic_0_49/sim/counter_4_util_vector_logic_0_49.v" \
"../../../bd/counter_4/ip/counter_4_util_vector_logic_2_43/sim/counter_4_util_vector_logic_2_43.v" \
"../../../bd/counter_4/ip/counter_4_util_vector_logic_0_50/sim/counter_4_util_vector_logic_0_50.v" \
"../../../bd/counter_4/ip/counter_4_util_vector_logic_2_44/sim/counter_4_util_vector_logic_2_44.v" \
"../../../bd/counter_4/ip/counter_4_util_vector_logic_0_51/sim/counter_4_util_vector_logic_0_51.v" \
"../../../bd/counter_4/ip/counter_4_util_vector_logic_2_45/sim/counter_4_util_vector_logic_2_45.v" \
"../../../bd/counter_4/ip/counter_4_not_1_2/sim/counter_4_not_1_2.v" \
"../../../bd/counter_4/ip/counter_4_and_0_1/sim/counter_4_and_0_1.v" \
"../../../bd/counter_4/ip/counter_4_or_0_0/sim/counter_4_or_0_0.v" \
"../../../bd/counter_4/ip/counter_4_util_vector_logic_0_52/sim/counter_4_util_vector_logic_0_52.v" \
"../../../bd/counter_4/ip/counter_4_and_1_0/sim/counter_4_and_1_0.v" \
"../../../bd/counter_4/ip/counter_4_util_vector_logic_0_53/sim/counter_4_util_vector_logic_0_53.v" \
"../../../bd/counter_4/ip/counter_4_util_vector_logic_2_46/sim/counter_4_util_vector_logic_2_46.v" \
"../../../bd/counter_4/ip/counter_4_util_vector_logic_0_54/sim/counter_4_util_vector_logic_0_54.v" \
"../../../bd/counter_4/ip/counter_4_util_vector_logic_2_47/sim/counter_4_util_vector_logic_2_47.v" \
"../../../bd/counter_4/ip/counter_4_not_0_3/sim/counter_4_not_0_3.v" \
"../../../bd/counter_4/ip/counter_4_util_vector_logic_0_55/sim/counter_4_util_vector_logic_0_55.v" \
"../../../bd/counter_4/ip/counter_4_util_vector_logic_2_48/sim/counter_4_util_vector_logic_2_48.v" \
"../../../bd/counter_4/ip/counter_4_util_vector_logic_0_56/sim/counter_4_util_vector_logic_0_56.v" \
"../../../bd/counter_4/ip/counter_4_util_vector_logic_2_49/sim/counter_4_util_vector_logic_2_49.v" \
"../../../bd/counter_4/ip/counter_4_util_vector_logic_0_57/sim/counter_4_util_vector_logic_0_57.v" \
"../../../bd/counter_4/ip/counter_4_util_vector_logic_2_50/sim/counter_4_util_vector_logic_2_50.v" \
"../../../bd/counter_4/ip/counter_4_util_vector_logic_0_58/sim/counter_4_util_vector_logic_0_58.v" \
"../../../bd/counter_4/ip/counter_4_util_vector_logic_2_51/sim/counter_4_util_vector_logic_2_51.v" \
"../../../bd/counter_4/ip/counter_4_util_vector_logic_0_59/sim/counter_4_util_vector_logic_0_59.v" \
"../../../bd/counter_4/ip/counter_4_util_vector_logic_2_52/sim/counter_4_util_vector_logic_2_52.v" \
"../../../bd/counter_4/ip/counter_4_util_vector_logic_0_60/sim/counter_4_util_vector_logic_0_60.v" \
"../../../bd/counter_4/ip/counter_4_util_vector_logic_2_53/sim/counter_4_util_vector_logic_2_53.v" \
"../../../bd/counter_4/ip/counter_4_not_1_3/sim/counter_4_not_1_3.v" \
"../../../bd/counter_4/ip/counter_4_and_0_2/sim/counter_4_and_0_2.v" \
"../../../bd/counter_4/ip/counter_4_or_0_1/sim/counter_4_or_0_1.v" \
"../../../bd/counter_4/ip/counter_4_util_vector_logic_0_61/sim/counter_4_util_vector_logic_0_61.v" \
"../../../bd/counter_4/ip/counter_4_and_1_1/sim/counter_4_and_1_1.v" \
"../../../bd/counter_4/ip/counter_4_util_vector_logic_0_62/sim/counter_4_util_vector_logic_0_62.v" \
"../../../bd/counter_4/ip/counter_4_util_vector_logic_2_54/sim/counter_4_util_vector_logic_2_54.v" \
"../../../bd/counter_4/ip/counter_4_util_vector_logic_0_63/sim/counter_4_util_vector_logic_0_63.v" \
"../../../bd/counter_4/ip/counter_4_util_vector_logic_2_55/sim/counter_4_util_vector_logic_2_55.v" \
"../../../bd/counter_4/ip/counter_4_not_0_4/sim/counter_4_not_0_4.v" \
"../../../bd/counter_4/ip/counter_4_util_vector_logic_0_64/sim/counter_4_util_vector_logic_0_64.v" \
"../../../bd/counter_4/ip/counter_4_util_vector_logic_2_56/sim/counter_4_util_vector_logic_2_56.v" \
"../../../bd/counter_4/ip/counter_4_util_vector_logic_0_65/sim/counter_4_util_vector_logic_0_65.v" \
"../../../bd/counter_4/ip/counter_4_util_vector_logic_2_57/sim/counter_4_util_vector_logic_2_57.v" \
"../../../bd/counter_4/ip/counter_4_util_vector_logic_0_66/sim/counter_4_util_vector_logic_0_66.v" \
"../../../bd/counter_4/ip/counter_4_util_vector_logic_2_58/sim/counter_4_util_vector_logic_2_58.v" \
"../../../bd/counter_4/ip/counter_4_util_vector_logic_0_67/sim/counter_4_util_vector_logic_0_67.v" \
"../../../bd/counter_4/ip/counter_4_util_vector_logic_2_59/sim/counter_4_util_vector_logic_2_59.v" \
"../../../bd/counter_4/ip/counter_4_util_vector_logic_0_68/sim/counter_4_util_vector_logic_0_68.v" \
"../../../bd/counter_4/ip/counter_4_util_vector_logic_2_60/sim/counter_4_util_vector_logic_2_60.v" \
"../../../bd/counter_4/ip/counter_4_util_vector_logic_0_69/sim/counter_4_util_vector_logic_0_69.v" \
"../../../bd/counter_4/ip/counter_4_util_vector_logic_2_61/sim/counter_4_util_vector_logic_2_61.v" \
"../../../bd/counter_4/ip/counter_4_not_1_4/sim/counter_4_not_1_4.v" \
"../../../bd/counter_4/ip/counter_4_and_0_3/sim/counter_4_and_0_3.v" \
"../../../bd/counter_4/ip/counter_4_or_0_2/sim/counter_4_or_0_2.v" \
"../../../bd/counter_4/ip/counter_4_util_vector_logic_0_70/sim/counter_4_util_vector_logic_0_70.v" \
"../../../bd/counter_4/ip/counter_4_and_1_2/sim/counter_4_and_1_2.v" \
"../../../bd/counter_4/ip/counter_4_util_vector_logic_0_71/sim/counter_4_util_vector_logic_0_71.v" \
"../../../bd/counter_4/ip/counter_4_util_vector_logic_1_0/sim/counter_4_util_vector_logic_1_0.v" \
"../../../bd/counter_4/ip/counter_4_util_vector_logic_0_72/sim/counter_4_util_vector_logic_0_72.v" \
"../../../bd/counter_4/ip/counter_4_util_vector_logic_0_73/sim/counter_4_util_vector_logic_0_73.v" \
"../../../bd/counter_4/ip/counter_4_not_0_5/sim/counter_4_not_0_5.v" \
"../../../bd/counter_4/ip/counter_4_and_0_4/sim/counter_4_and_0_4.v" \
"../../../bd/counter_4/ip/counter_4_and_0_5/sim/counter_4_and_0_5.v" \
"../../../bd/counter_4/ip/counter_4_and_0_6/sim/counter_4_and_0_6.v" \
"../../../bd/counter_4/ip/counter_4_or_0_3/sim/counter_4_or_0_3.v" \
"../../../bd/counter_4/ip/counter_4_and_2_0/sim/counter_4_and_2_0.v" \
"../../../bd/counter_4/ip/counter_4_and_2_1/sim/counter_4_and_2_1.v" \
"../../../bd/counter_4/ip/counter_4_or_1_0/sim/counter_4_or_1_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

