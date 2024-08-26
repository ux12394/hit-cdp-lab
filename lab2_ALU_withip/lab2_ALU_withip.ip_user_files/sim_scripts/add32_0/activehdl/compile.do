transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib activehdl/xil_defaultlib

vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../lab2_ALU_withip.gen/sources_1/ip/add32_0/src" -l xil_defaultlib \
"../../../../lab2_ALU_withip.gen/sources_1/ip/add32_0/src/CLA.v" \
"../../../../lab2_ALU_withip.gen/sources_1/ip/add32_0/src/CLA_16.v" \
"../../../../lab2_ALU_withip.gen/sources_1/ip/add32_0/src/adder.v" \
"../../../../lab2_ALU_withip.gen/sources_1/ip/add32_0/src/adder_4.v" \
"../../../../lab2_ALU_withip.gen/sources_1/ip/add32_0/src/add32.v" \
"../../../../lab2_ALU_withip.gen/sources_1/ip/add32_0/sim/add32_0.v" \


vlog -work xil_defaultlib \
"glbl.v"

