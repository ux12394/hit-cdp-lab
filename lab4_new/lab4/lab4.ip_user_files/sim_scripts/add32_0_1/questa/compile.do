vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xpm
vlib questa_lib/msim/xil_defaultlib

vmap xpm questa_lib/msim/xpm
vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xpm  -incr -mfcu  -sv "+incdir+../../../../lab4.gen/sources_1/ip/add32_0_1/src" \
"E:/vivado/Vivado/2024.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"E:/vivado/Vivado/2024.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93  \
"E:/vivado/Vivado/2024.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../lab4.gen/sources_1/ip/add32_0_1/src" \
"../../../../lab4.gen/sources_1/ip/add32_0_1/src/CLA.v" \
"../../../../lab4.gen/sources_1/ip/add32_0_1/src/CLA_16.v" \
"../../../../lab4.gen/sources_1/ip/add32_0_1/src/adder.v" \
"../../../../lab4.gen/sources_1/ip/add32_0_1/src/adder_4.v" \
"../../../../lab4.gen/sources_1/ip/add32_0_1/src/add32.v" \
"../../../../lab4.gen/sources_1/ip/add32_0_1/sim/add32_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

