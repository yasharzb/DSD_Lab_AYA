onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -t 1ps -L xil_defaultlib -L util_vector_logic_v2_0_1 -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.BCD_modulo_3 xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {BCD_modulo_3.udo}

run -all

quit -force
