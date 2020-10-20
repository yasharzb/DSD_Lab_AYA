onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib BCD_modulo_3_opt

do {wave.do}

view wave
view structure
view signals

do {BCD_modulo_3.udo}

run -all

quit -force
