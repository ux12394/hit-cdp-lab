onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+ma_river_core_0 -L xpm -L blk_mem_gen_v8_4_4 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.ma_river_core_0 xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {ma_river_core_0.udo}

run -all

endsim

quit -force
