transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+add32_0  -L xpm -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.add32_0 xil_defaultlib.glbl

do {add32_0.udo}

run 1000ns

endsim

quit -force
