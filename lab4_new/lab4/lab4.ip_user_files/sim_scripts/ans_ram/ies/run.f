-makelib ies_lib/xpm -sv \
  "D:/vivado2019/Vivado/2019.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "D:/vivado2019/Vivado/2019.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "D:/vivado2019/Vivado/2019.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/blk_mem_gen_v8_4_4 \
  "../../../ipstatic/simulation/blk_mem_gen_v8_4.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../lab4.srcs/sources_1/ip/ans_ram/sim/ans_ram.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

