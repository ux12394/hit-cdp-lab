vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../lab2_ALU_withip.gen/sources_1/ip/add32_0/src" \
"../../../../lab2_ALU_withip.gen/sources_1/ip/add32_0/src/CLA.v" \
"../../../../lab2_ALU_withip.gen/sources_1/ip/add32_0/src/CLA_16.v" \
"../../../../lab2_ALU_withip.gen/sources_1/ip/add32_0/src/adder.v" \
"../../../../lab2_ALU_withip.gen/sources_1/ip/add32_0/src/adder_4.v" \
"../../../../lab2_ALU_withip.gen/sources_1/ip/add32_0/src/add32.v" \
"../../../../lab2_ALU_withip.gen/sources_1/ip/add32_0/sim/add32_0.v" \


vlog -work xil_defaultlib \
"glbl.v"

