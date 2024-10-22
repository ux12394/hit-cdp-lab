# This file is automatically generated.
# It contains project source information necessary for synthesis and implementation.

# XDC: imports/new/cons.xdc

# IP: ip/input_ram/input_ram.xci
set_property KEEP_HIERARCHY SOFT [get_cells -hier -filter {REF_NAME==input_ram || ORIG_REF_NAME==input_ram} -quiet] -quiet

# IP: ip/ans_ram/ans_ram.xci
set_property KEEP_HIERARCHY SOFT [get_cells -hier -filter {REF_NAME==ans_ram || ORIG_REF_NAME==ans_ram} -quiet] -quiet

# IP: ip/axi_bus/axi_bus.xci
set_property KEEP_HIERARCHY SOFT [get_cells -hier -filter {REF_NAME==axi_bus || ORIG_REF_NAME==axi_bus} -quiet] -quiet

# IP: ip/clk_pll/clk_pll.xci
set_property KEEP_HIERARCHY SOFT [get_cells -hier -filter {REF_NAME==clk_pll || ORIG_REF_NAME==clk_pll} -quiet] -quiet
