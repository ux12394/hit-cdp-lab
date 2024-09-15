# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
namespace eval ::optrace {
  variable script "E:/COLLEGE/homework/hit-cdp-lab/lab5/lab5.runs/synth_1/soc_top.tcl"
  variable category "vivado_synth"
}

# Try to connect to running dispatch if we haven't done so already.
# This code assumes that the Tcl interpreter is not using threads,
# since the ::dispatch::connected variable isn't mutex protected.
if {![info exists ::dispatch::connected]} {
  namespace eval ::dispatch {
    variable connected false
    if {[llength [array get env XILINX_CD_CONNECT_ID]] > 0} {
      set result "true"
      if {[catch {
        if {[lsearch -exact [package names] DispatchTcl] < 0} {
          set result [load librdi_cd_clienttcl[info sharedlibextension]] 
        }
        if {$result eq "false"} {
          puts "WARNING: Could not load dispatch client library"
        }
        set connect_id [ ::dispatch::init_client -mode EXISTING_SERVER ]
        if { $connect_id eq "" } {
          puts "WARNING: Could not initialize dispatch client"
        } else {
          puts "INFO: Dispatch client connection id - $connect_id"
          set connected true
        }
      } catch_res]} {
        puts "WARNING: failed to connect to dispatch server - $catch_res"
      }
    }
  }
}
if {$::dispatch::connected} {
  # Remove the dummy proc if it exists.
  if { [expr {[llength [info procs ::OPTRACE]] > 0}] } {
    rename ::OPTRACE ""
  }
  proc ::OPTRACE { task action {tags {} } } {
    ::vitis_log::op_trace "$task" $action -tags $tags -script $::optrace::script -category $::optrace::category
  }
  # dispatch is generic. We specifically want to attach logging.
  ::vitis_log::connect_client
} else {
  # Add dummy proc if it doesn't exist.
  if { [expr {[llength [info procs ::OPTRACE]] == 0}] } {
    proc ::OPTRACE {{arg1 \"\" } {arg2 \"\"} {arg3 \"\" } {arg4 \"\"} {arg5 \"\" } {arg6 \"\"}} {
        # Do nothing
    }
  }
}

OPTRACE "synth_1" START { ROLLUP_AUTO }
OPTRACE "Creating in-memory project" START { }
create_project -in_memory -part xc7a200tfbg676-2

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir E:/COLLEGE/homework/hit-cdp-lab/lab5/lab5.cache/wt [current_project]
set_property parent.project_path E:/COLLEGE/homework/hit-cdp-lab/lab5/lab5.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_repo_paths {
  e:/COLLEGE/homework/hit-cdp-lab/lcd_controller/lcd_controller.srcs/sources_1
  e:/COLLEGE/homework/hit-cdp-lab/ma_river_core/ma_river_core.srcs/sources_1
} [current_project]
update_ip_catalog
set_property ip_output_repo e:/COLLEGE/homework/hit-cdp-lab/lab5/lab5.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
OPTRACE "Creating in-memory project" END { }
OPTRACE "Adding files" START { }
add_files E:/COLLEGE/homework/hit-cdp-lab/lab5/lab5.gen/sources_1/ip/lcd_controller_0/ip/rst_rom.coe
add_files E:/COLLEGE/homework/hit-cdp-lab/lab5/lab5.gen/sources_1/ip/lcd_controller_0/ip/font_rom.coe
add_files E:/COLLEGE/homework/hit-cdp-lab/lab5/lab5.srcs/sources_1/imports/hitcoa_at2024/decoder_checker.coe
add_files E:/COLLEGE/homework/hit-cdp-lab/lab5/lab5.srcs/sources_1/imports/hitcoa_at2024/decoder_code.coe
add_files E:/COLLEGE/homework/hit-cdp-lab/lab5/lab5.srcs/sources_1/imports/hitcoa_at2024/decoder_ans.coe
add_files E:/COLLEGE/homework/hit-cdp-lab/lab5/lab5.srcs/sources_1/imports/hitcoa_at2024/cpu_inst.coe
add_files E:/COLLEGE/homework/hit-cdp-lab/lab5/lab5.srcs/sources_1/imports/hitcoa_at2024/cpu_data.coe
add_files E:/COLLEGE/homework/hit-cdp-lab/lab5/lab5.srcs/sources_1/imports/hitcoa_at2024/cpu_ans.coe
add_files E:/COLLEGE/homework/hit-cdp-lab/lab5/lab5.srcs/sources_1/imports/hitcoa_at2024/cpu_checker.coe
read_verilog -library xil_defaultlib {
  E:/COLLEGE/homework/hit-cdp-lab/lab5/lab5.srcs/sources_1/new/CU.v
  E:/COLLEGE/homework/hit-cdp-lab/lab5/lab5.srcs/sources_1/new/access.v
  E:/COLLEGE/homework/hit-cdp-lab/lab5/lab5.srcs/sources_1/imports/new/checker_wrapper.v
  E:/COLLEGE/homework/hit-cdp-lab/lab5/lab5.srcs/sources_1/new/cpu.v
  E:/COLLEGE/homework/hit-cdp-lab/lab5/lab5.srcs/sources_1/new/cpu_checker.v
  E:/COLLEGE/homework/hit-cdp-lab/lab5/lab5.srcs/sources_1/new/inst_decode.v
  E:/COLLEGE/homework/hit-cdp-lab/lab5/lab5.srcs/sources_1/new/pc.v
  E:/COLLEGE/homework/hit-cdp-lab/lab5/lab5.srcs/sources_1/new/register.v
  E:/COLLEGE/homework/hit-cdp-lab/lab5/lab5.srcs/sources_1/new/soc_top.v
}
read_ip -quiet E:/COLLEGE/homework/hit-cdp-lab/lab5/lab5.srcs/sources_1/ip/axi_bus/axi_bus.xci
set_property used_in_implementation false [get_files -all e:/COLLEGE/homework/hit-cdp-lab/lab5/lab5.gen/sources_1/ip/axi_bus/axi_bus_ooc.xdc]

read_ip -quiet E:/COLLEGE/homework/hit-cdp-lab/lab5/lab5.srcs/sources_1/ip/clk_pll/clk_pll.xci
set_property used_in_implementation false [get_files -all e:/COLLEGE/homework/hit-cdp-lab/lab5/lab5.gen/sources_1/ip/clk_pll/clk_pll_board.xdc]
set_property used_in_implementation false [get_files -all e:/COLLEGE/homework/hit-cdp-lab/lab5/lab5.gen/sources_1/ip/clk_pll/clk_pll.xdc]
set_property used_in_implementation false [get_files -all e:/COLLEGE/homework/hit-cdp-lab/lab5/lab5.gen/sources_1/ip/clk_pll/clk_pll_ooc.xdc]

read_ip -quiet E:/COLLEGE/homework/hit-cdp-lab/lab5/lab5.srcs/sources_1/ip/ma_river_core_0/ma_river_core_0.xci
set_property used_in_implementation false [get_files -all e:/COLLEGE/homework/hit-cdp-lab/lab5/lab5.gen/sources_1/ip/ma_river_core_0/ip/bram_sd/bram_sd_ooc.xdc]
set_property used_in_implementation false [get_files -all e:/COLLEGE/homework/hit-cdp-lab/lab5/lab5.gen/sources_1/ip/ma_river_core_0/ip/bram_td/bram_td_ooc.xdc]

read_ip -quiet E:/COLLEGE/homework/hit-cdp-lab/lab5/lab5.srcs/sources_1/ip/lcd_controller_0/lcd_controller_0.xci
set_property used_in_implementation false [get_files -all e:/COLLEGE/homework/hit-cdp-lab/lab5/lab5.gen/sources_1/ip/lcd_controller_0/ip/font_rom/font_rom_ooc.xdc]
set_property used_in_implementation false [get_files -all e:/COLLEGE/homework/hit-cdp-lab/lab5/lab5.gen/sources_1/ip/lcd_controller_0/ip/rst_rom/rst_rom_ooc.xdc]
set_property used_in_implementation false [get_files -all e:/COLLEGE/homework/hit-cdp-lab/lab5/lab5.gen/sources_1/ip/lcd_controller_0/ip/text_bram/text_bram_ooc.xdc]

read_ip -quiet E:/COLLEGE/homework/hit-cdp-lab/lab5/lab5.srcs/sources_1/ip/cpu_inst_rom/cpu_inst_rom.xci
set_property used_in_implementation false [get_files -all e:/COLLEGE/homework/hit-cdp-lab/lab5/lab5.gen/sources_1/ip/cpu_inst_rom/cpu_inst_rom_ooc.xdc]

read_ip -quiet E:/COLLEGE/homework/hit-cdp-lab/lab5/lab5.srcs/sources_1/ip/cpu_data_ram/cpu_data_ram.xci
set_property used_in_implementation false [get_files -all e:/COLLEGE/homework/hit-cdp-lab/lab5/lab5.gen/sources_1/ip/cpu_data_ram/cpu_data_ram_ooc.xdc]

read_ip -quiet E:/COLLEGE/homework/hit-cdp-lab/lab5/lab5.srcs/sources_1/ip/cpu_ans_rom/cpu_ans_rom.xci
set_property used_in_implementation false [get_files -all e:/COLLEGE/homework/hit-cdp-lab/lab5/lab5.gen/sources_1/ip/cpu_ans_rom/cpu_ans_rom_ooc.xdc]

read_ip -quiet E:/COLLEGE/homework/hit-cdp-lab/lab5/lab5.srcs/sources_1/ip/mr_bram/mr_bram.xci
set_property used_in_implementation false [get_files -all e:/COLLEGE/homework/hit-cdp-lab/lab5/lab5.gen/sources_1/ip/mr_bram/mr_bram_ooc.xdc]

OPTRACE "Adding files" END { }
# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc E:/COLLEGE/homework/hit-cdp-lab/lab5/lab5.srcs/constrs_1/imports/new/cons.xdc
set_property used_in_implementation false [get_files E:/COLLEGE/homework/hit-cdp-lab/lab5/lab5.srcs/constrs_1/imports/new/cons.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
set_param ips.enableIPCacheLiteLoad 1
close [open __synthesis_is_running__ w]

OPTRACE "synth_design" START { }
synth_design -top soc_top -part xc7a200tfbg676-2
OPTRACE "synth_design" END { }
if { [get_msg_config -count -severity {CRITICAL WARNING}] > 0 } {
 send_msg_id runtcl-6 info "Synthesis results are not added to the cache due to CRITICAL_WARNING"
}


OPTRACE "write_checkpoint" START { CHECKPOINT }
# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef soc_top.dcp
OPTRACE "write_checkpoint" END { }
OPTRACE "synth reports" START { REPORT }
generate_parallel_reports -reports { "report_utilization -file soc_top_utilization_synth.rpt -pb soc_top_utilization_synth.pb"  } 
OPTRACE "synth reports" END { }
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
OPTRACE "synth_1" END { }
