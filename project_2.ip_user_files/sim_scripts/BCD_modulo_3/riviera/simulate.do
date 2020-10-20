onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+BCD_modulo_3 -L util_vector_logic_v2_0_1 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.BCD_modulo_3 xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {BCD_modulo_3.udo}

run -all

endsim

quit -force
