
Y
Command: %s
1870*	planAhead2$
"open_checkpoint soc_top_routed.dcpZ12-2866h px� 
L

Starting %s Task
103*constraints2
open_checkpointZ18-103h px� 
�

%s
*constraints2`
^Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.040 . Memory (MB): peak = 344.625 ; gain = 5.309h px� 
E
Loading part %s157*device2
xc7a200tfbg676-2Z21-403h px� 
[
$Part: %s does not have CEAM library.966*device2
xc7a200tfbg676-2Z21-9227h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:012
00:00:00.3862

1036.5862
0.000Z17-268h px� 
V
-Analyzing %s Unisim elements for replacement
17*netlist2
2478Z29-17h px� 
X
2Unisim Transformation completed in %s CPU seconds
28*netlist2
0Z29-28h px� 
T
Netlist was created with %s %s291*project2
Vivado2
2024.1Z1-479h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
�
�Could not create '%s' constraint because net '%s' is not directly connected to top level port. '%s' is ignored for synthesis but preserved for implementation.
528*constraints2
IBUF_LOW_PWR2

pll/clk_in2
IBUF_LOW_PWR8Z18-550h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Read ShapeDB Complete: 2

00:00:002
00:00:00.1002

1188.6762
10.391Z17-268h px� 
L
*Restoring timing data from binary archive.264*timingZ38-478h px� 
F
$Binary timing data restore complete.265*timingZ38-479h px� 
L
*Restoring constraints from binary archive.481*projectZ1-856h px� 
E
#Binary constraint restore complete.478*projectZ1-853h px� 
K
!Start Reading Physical Databases.35885*designutilsZ20-5722h px� 
:
Reading placement.
206*designutilsZ20-206h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Read Netlist Cache: 2

00:00:002
00:00:00.0412

1847.7852
0.000Z17-268h px� 
D
Reading placer database...
1602*designutilsZ20-1892h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Read Device Cache: 2

00:00:002
00:00:00.0072

1847.7852
0.000Z17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Read PlaceDB: 2

00:00:012

00:00:012

1880.6602
32.875Z17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Read PulsedLatchDB: 2

00:00:002

00:00:002

1880.6602
0.000Z17-268h px� 
8
Reading routing.
207*designutilsZ20-207h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Read RouteStorage: 2

00:00:002
00:00:00.2332

1897.6132
16.953Z17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Read Physdb Files: 2

00:00:012

00:00:012

1897.6132
49.828Z17-268h px� 
x
7Restored from archive | CPU: %s secs | Memory: %s MB |
1612*designutils2

1.0000002

0.000000Z20-1924h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Finished XDEF File Restore: 2

00:00:012

00:00:022

1897.6132
49.828Z17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0082

1897.6132
0.000Z17-268h px� 
�
!Unisim Transformation Summary:
%s111*project2�
�  A total of 604 instances were transformed.
  RAM128X1D => RAM128X1D (MUXF7(x2), RAMD64E(x4)): 8 instances
  RAM256X1S => RAM256X1S (MUXF7(x2), MUXF8, RAMS64E(x4)): 32 instances
  RAM32M => RAM32M (RAMD32(x6), RAMS32(x2)): 427 instances
  RAM64M => RAM64M (RAMD64E(x4)): 120 instances
  RAM64X1D => RAM64X1D (RAMD64E(x2)): 13 instances
  RAM64X1S => RAM64X1S (RAMS64E): 2 instances
  SRLC32E => SRL16E: 2 instances
Z1-111h px� 
o
'Checkpoint was created with %s build %s378*project2
Vivado v2024.1 (64-bit)2	
5076996Z1-604h px� 
�
�Critical violations of the methodology design rules detected. Critical violations may contribute to timing failures or cause functional issues in hardware. Run report_methodology for more information.10702*	planAheadZ12-23575h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
open_checkpoint: 2

00:00:212

00:00:232

1897.6132

1566.535Z17-268h px� 
U
Command: %s
53*	vivadotcl2$
"write_bitstream -force soc_top.bitZ4-113h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
Implementation2

xc7a200tZ17-347h px� 
p
0Got license for feature '%s' and/or device '%s'
310*common2
Implementation2

xc7a200tZ17-349h px� 
f
,Running DRC as a precondition to command %s
1349*	planAhead2
write_bitstreamZ12-1349h px� 
>
Refreshing IP repositories
234*coregenZ19-234h px� 
G
"No user IP repositories specified
1154*coregenZ19-1704h px� 
j
"Loaded Vivado IP repository '%s'.
1332*coregen2!
E:/vivado/Vivado/2024.1/data/ipZ19-2313h px� 
>
Running DRC with %s threads
24*drc2
2Z23-27h px� 
�
�Missing CFGBVS and CONFIG_VOLTAGE Design Properties: Neither the CFGBVS nor CONFIG_VOLTAGE voltage property is set in the current_design.  Configuration bank voltage select (CFGBVS) must be set to VCCO or GND, and CONFIG_VOLTAGE must be set to the correct configuration voltage, in order to determine the I/O voltage support for the pins in bank 0.  It is suggested to specify these either using the 'Edit Device Properties' function in the GUI or directly in the XDC file using the following syntax:

 set_property CFGBVS value1 [current_design]
 #where value1 is either VCCO or GND

 set_property CONFIG_VOLTAGE value2 [current_design]
 #where value2 is the voltage provided to configuration bank 0

Refer to the device configuration user guide for more information.%s*DRC2
 DRC|Pin Planning8ZCFGBVS-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2l
 "h
1mrcore/inst/FU_MDU_module/mymul/a0b0/DSP48E1_inst	1mrcore/inst/FU_MDU_module/mymul/a0b0/DSP48E1_inst2v
 "r
9mrcore/inst/FU_MDU_module/mymul/a0b0/DSP48E1_inst/A[29:0]3mrcore/inst/FU_MDU_module/mymul/a0b0/DSP48E1_inst/A2+
 %DRC|Netlist|Instance|Pipeline|DSP48E18ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2l
 "h
1mrcore/inst/FU_MDU_module/mymul/a0b0/DSP48E1_inst	1mrcore/inst/FU_MDU_module/mymul/a0b0/DSP48E1_inst2v
 "r
9mrcore/inst/FU_MDU_module/mymul/a0b0/DSP48E1_inst/B[17:0]3mrcore/inst/FU_MDU_module/mymul/a0b0/DSP48E1_inst/B2+
 %DRC|Netlist|Instance|Pipeline|DSP48E18ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2l
 "h
1mrcore/inst/FU_MDU_module/mymul/a0b1/DSP48E1_inst	1mrcore/inst/FU_MDU_module/mymul/a0b1/DSP48E1_inst2v
 "r
9mrcore/inst/FU_MDU_module/mymul/a0b1/DSP48E1_inst/A[29:0]3mrcore/inst/FU_MDU_module/mymul/a0b1/DSP48E1_inst/A2+
 %DRC|Netlist|Instance|Pipeline|DSP48E18ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2l
 "h
1mrcore/inst/FU_MDU_module/mymul/a0b1/DSP48E1_inst	1mrcore/inst/FU_MDU_module/mymul/a0b1/DSP48E1_inst2v
 "r
9mrcore/inst/FU_MDU_module/mymul/a0b1/DSP48E1_inst/B[17:0]3mrcore/inst/FU_MDU_module/mymul/a0b1/DSP48E1_inst/B2+
 %DRC|Netlist|Instance|Pipeline|DSP48E18ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2l
 "h
1mrcore/inst/FU_MDU_module/mymul/a1b0/DSP48E1_inst	1mrcore/inst/FU_MDU_module/mymul/a1b0/DSP48E1_inst2v
 "r
9mrcore/inst/FU_MDU_module/mymul/a1b0/DSP48E1_inst/A[29:0]3mrcore/inst/FU_MDU_module/mymul/a1b0/DSP48E1_inst/A2+
 %DRC|Netlist|Instance|Pipeline|DSP48E18ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2l
 "h
1mrcore/inst/FU_MDU_module/mymul/a1b0/DSP48E1_inst	1mrcore/inst/FU_MDU_module/mymul/a1b0/DSP48E1_inst2v
 "r
9mrcore/inst/FU_MDU_module/mymul/a1b0/DSP48E1_inst/B[17:0]3mrcore/inst/FU_MDU_module/mymul/a1b0/DSP48E1_inst/B2+
 %DRC|Netlist|Instance|Pipeline|DSP48E18ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2l
 "h
1mrcore/inst/FU_MDU_module/mymul/a1b1/DSP48E1_inst	1mrcore/inst/FU_MDU_module/mymul/a1b1/DSP48E1_inst2v
 "r
9mrcore/inst/FU_MDU_module/mymul/a1b1/DSP48E1_inst/A[29:0]3mrcore/inst/FU_MDU_module/mymul/a1b1/DSP48E1_inst/A2+
 %DRC|Netlist|Instance|Pipeline|DSP48E18ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2l
 "h
1mrcore/inst/FU_MDU_module/mymul/a1b1/DSP48E1_inst	1mrcore/inst/FU_MDU_module/mymul/a1b1/DSP48E1_inst2v
 "r
9mrcore/inst/FU_MDU_module/mymul/a1b1/DSP48E1_inst/B[17:0]3mrcore/inst/FU_MDU_module/mymul/a1b1/DSP48E1_inst/B2+
 %DRC|Netlist|Instance|Pipeline|DSP48E18ZDPIP-1h px� 
�
�MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2l
 "h
1mrcore/inst/FU_MDU_module/mymul/a0b0/DSP48E1_inst	1mrcore/inst/FU_MDU_module/mymul/a0b0/DSP48E1_inst2v
 "r
9mrcore/inst/FU_MDU_module/mymul/a0b0/DSP48E1_inst/P[47:0]3mrcore/inst/FU_MDU_module/mymul/a0b0/DSP48E1_inst/P2+
 %DRC|Netlist|Instance|Pipeline|DSP48E18ZDPOP-2h px� 
�
�MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2l
 "h
1mrcore/inst/FU_MDU_module/mymul/a0b1/DSP48E1_inst	1mrcore/inst/FU_MDU_module/mymul/a0b1/DSP48E1_inst2v
 "r
9mrcore/inst/FU_MDU_module/mymul/a0b1/DSP48E1_inst/P[47:0]3mrcore/inst/FU_MDU_module/mymul/a0b1/DSP48E1_inst/P2+
 %DRC|Netlist|Instance|Pipeline|DSP48E18ZDPOP-2h px� 
�
�MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2l
 "h
1mrcore/inst/FU_MDU_module/mymul/a1b0/DSP48E1_inst	1mrcore/inst/FU_MDU_module/mymul/a1b0/DSP48E1_inst2v
 "r
9mrcore/inst/FU_MDU_module/mymul/a1b0/DSP48E1_inst/P[47:0]3mrcore/inst/FU_MDU_module/mymul/a1b0/DSP48E1_inst/P2+
 %DRC|Netlist|Instance|Pipeline|DSP48E18ZDPOP-2h px� 
�
�MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2l
 "h
1mrcore/inst/FU_MDU_module/mymul/a1b1/DSP48E1_inst	1mrcore/inst/FU_MDU_module/mymul/a1b1/DSP48E1_inst2v
 "r
9mrcore/inst/FU_MDU_module/mymul/a1b1/DSP48E1_inst/P[47:0]3mrcore/inst/FU_MDU_module/mymul/a1b1/DSP48E1_inst/P2+
 %DRC|Netlist|Instance|Pipeline|DSP48E18ZDPOP-2h px� 
�
�RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC26
 "2
your_cpu/reg1/rf_reg_1	your_cpu/reg1/rf_reg_12F
 "B
your_cpu/reg1/rf_reg_1/ENBWRENyour_cpu/reg1/rf_reg_1/ENBWREN2*
 "&
your_cpu/reg1/weyour_cpu/reg1/we2J
 "F
 your_cpu/reg_debug_wb_rf_wen_reg	 your_cpu/reg_debug_wb_rf_wen_reg20
 *DRC|Netlist|Instance|Required Pin|RAMB18E18Z	REQP-1840h px� 
�
�RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC26
 "2
your_cpu/reg1/rf_reg_1	your_cpu/reg1/rf_reg_12H
 "D
your_cpu/reg1/rf_reg_1/WEBWE[0]your_cpu/reg1/rf_reg_1/WEBWE[0]2*
 "&
your_cpu/reg1/weyour_cpu/reg1/we2J
 "F
 your_cpu/reg_debug_wb_rf_wen_reg	 your_cpu/reg_debug_wb_rf_wen_reg20
 *DRC|Netlist|Instance|Required Pin|RAMB18E18Z	REQP-1840h px� 
�
�RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC26
 "2
your_cpu/reg1/rf_reg_1	your_cpu/reg1/rf_reg_12H
 "D
your_cpu/reg1/rf_reg_1/WEBWE[1]your_cpu/reg1/rf_reg_1/WEBWE[1]2*
 "&
your_cpu/reg1/weyour_cpu/reg1/we2J
 "F
 your_cpu/reg_debug_wb_rf_wen_reg	 your_cpu/reg_debug_wb_rf_wen_reg20
 *DRC|Netlist|Instance|Required Pin|RAMB18E18Z	REQP-1840h px� 
�
�RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC26
 "2
your_cpu/reg1/rf_reg_1	your_cpu/reg1/rf_reg_12H
 "D
your_cpu/reg1/rf_reg_1/WEBWE[2]your_cpu/reg1/rf_reg_1/WEBWE[2]2*
 "&
your_cpu/reg1/weyour_cpu/reg1/we2J
 "F
 your_cpu/reg_debug_wb_rf_wen_reg	 your_cpu/reg_debug_wb_rf_wen_reg20
 *DRC|Netlist|Instance|Required Pin|RAMB18E18Z	REQP-1840h px� 
�
�RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC26
 "2
your_cpu/reg1/rf_reg_1	your_cpu/reg1/rf_reg_12H
 "D
your_cpu/reg1/rf_reg_1/WEBWE[3]your_cpu/reg1/rf_reg_1/WEBWE[3]2*
 "&
your_cpu/reg1/weyour_cpu/reg1/we2J
 "F
 your_cpu/reg_debug_wb_rf_wen_reg	 your_cpu/reg_debug_wb_rf_wen_reg20
 *DRC|Netlist|Instance|Required Pin|RAMB18E18Z	REQP-1840h px� 
�
�RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC26
 "2
your_cpu/reg1/rf_reg_2	your_cpu/reg1/rf_reg_22F
 "B
your_cpu/reg1/rf_reg_2/ENBWRENyour_cpu/reg1/rf_reg_2/ENBWREN2*
 "&
your_cpu/reg1/weyour_cpu/reg1/we2J
 "F
 your_cpu/reg_debug_wb_rf_wen_reg	 your_cpu/reg_debug_wb_rf_wen_reg20
 *DRC|Netlist|Instance|Required Pin|RAMB18E18Z	REQP-1840h px� 
�
�RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC26
 "2
your_cpu/reg1/rf_reg_2	your_cpu/reg1/rf_reg_22H
 "D
your_cpu/reg1/rf_reg_2/WEBWE[0]your_cpu/reg1/rf_reg_2/WEBWE[0]2*
 "&
your_cpu/reg1/weyour_cpu/reg1/we2J
 "F
 your_cpu/reg_debug_wb_rf_wen_reg	 your_cpu/reg_debug_wb_rf_wen_reg20
 *DRC|Netlist|Instance|Required Pin|RAMB18E18Z	REQP-1840h px� 
�
�RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC26
 "2
your_cpu/reg1/rf_reg_2	your_cpu/reg1/rf_reg_22H
 "D
your_cpu/reg1/rf_reg_2/WEBWE[1]your_cpu/reg1/rf_reg_2/WEBWE[1]2*
 "&
your_cpu/reg1/weyour_cpu/reg1/we2J
 "F
 your_cpu/reg_debug_wb_rf_wen_reg	 your_cpu/reg_debug_wb_rf_wen_reg20
 *DRC|Netlist|Instance|Required Pin|RAMB18E18Z	REQP-1840h px� 
�
�RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC26
 "2
your_cpu/reg1/rf_reg_2	your_cpu/reg1/rf_reg_22H
 "D
your_cpu/reg1/rf_reg_2/WEBWE[2]your_cpu/reg1/rf_reg_2/WEBWE[2]2*
 "&
your_cpu/reg1/weyour_cpu/reg1/we2J
 "F
 your_cpu/reg_debug_wb_rf_wen_reg	 your_cpu/reg_debug_wb_rf_wen_reg20
 *DRC|Netlist|Instance|Required Pin|RAMB18E18Z	REQP-1840h px� 
�
�RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC26
 "2
your_cpu/reg1/rf_reg_2	your_cpu/reg1/rf_reg_22H
 "D
your_cpu/reg1/rf_reg_2/WEBWE[3]your_cpu/reg1/rf_reg_2/WEBWE[3]2*
 "&
your_cpu/reg1/weyour_cpu/reg1/we2J
 "F
 your_cpu/reg_debug_wb_rf_wen_reg	 your_cpu/reg_debug_wb_rf_wen_reg20
 *DRC|Netlist|Instance|Required Pin|RAMB18E18Z	REQP-1840h px� 
�
�enum_USE_DPORT_FALSE_enum_DREG_ADREG_0_connects_CED_CEAD_RSTD_GND: %s: DSP48E1 is not using the D port (USE_DPORT = FALSE). For improved power characteristics, set DREG and ADREG to '1', tie CED, CEAD, and RSTD to logic '0'.%s*DRC2l
 "h
1mrcore/inst/FU_MDU_module/mymul/a0b0/DSP48E1_inst	1mrcore/inst/FU_MDU_module/mymul/a0b0/DSP48E1_inst2:
 4DRC|Netlist|Instance|Invalid attribute value|DSP48E18ZAVAL-4h px� 
�
�enum_USE_DPORT_FALSE_enum_DREG_ADREG_0_connects_CED_CEAD_RSTD_GND: %s: DSP48E1 is not using the D port (USE_DPORT = FALSE). For improved power characteristics, set DREG and ADREG to '1', tie CED, CEAD, and RSTD to logic '0'.%s*DRC2l
 "h
1mrcore/inst/FU_MDU_module/mymul/a0b1/DSP48E1_inst	1mrcore/inst/FU_MDU_module/mymul/a0b1/DSP48E1_inst2:
 4DRC|Netlist|Instance|Invalid attribute value|DSP48E18ZAVAL-4h px� 
�
�enum_USE_DPORT_FALSE_enum_DREG_ADREG_0_connects_CED_CEAD_RSTD_GND: %s: DSP48E1 is not using the D port (USE_DPORT = FALSE). For improved power characteristics, set DREG and ADREG to '1', tie CED, CEAD, and RSTD to logic '0'.%s*DRC2l
 "h
1mrcore/inst/FU_MDU_module/mymul/a1b0/DSP48E1_inst	1mrcore/inst/FU_MDU_module/mymul/a1b0/DSP48E1_inst2:
 4DRC|Netlist|Instance|Invalid attribute value|DSP48E18ZAVAL-4h px� 
�
�enum_USE_DPORT_FALSE_enum_DREG_ADREG_0_connects_CED_CEAD_RSTD_GND: %s: DSP48E1 is not using the D port (USE_DPORT = FALSE). For improved power characteristics, set DREG and ADREG to '1', tie CED, CEAD, and RSTD to logic '0'.%s*DRC2l
 "h
1mrcore/inst/FU_MDU_module/mymul/a1b1/DSP48E1_inst	1mrcore/inst/FU_MDU_module/mymul/a1b1/DSP48E1_inst2:
 4DRC|Netlist|Instance|Invalid attribute value|DSP48E18ZAVAL-4h px� 
�
�enum_AREG_0_connects_CEA1_GND_connects_CEA2_GND: %s: When DSP48E1 attribute AREG is set to 0, the CEA1 and CEA2 pins should be tied to GND to save power.%s*DRC2l
 "h
1mrcore/inst/FU_MDU_module/mymul/a0b0/DSP48E1_inst	1mrcore/inst/FU_MDU_module/mymul/a0b0/DSP48E1_inst2/
 )DRC|Netlist|Instance|Required Pin|DSP48E18ZREQP-20h px� 
�
�enum_AREG_0_connects_CEA1_GND_connects_CEA2_GND: %s: When DSP48E1 attribute AREG is set to 0, the CEA1 and CEA2 pins should be tied to GND to save power.%s*DRC2l
 "h
1mrcore/inst/FU_MDU_module/mymul/a0b1/DSP48E1_inst	1mrcore/inst/FU_MDU_module/mymul/a0b1/DSP48E1_inst2/
 )DRC|Netlist|Instance|Required Pin|DSP48E18ZREQP-20h px� 
�
�enum_AREG_0_connects_CEA1_GND_connects_CEA2_GND: %s: When DSP48E1 attribute AREG is set to 0, the CEA1 and CEA2 pins should be tied to GND to save power.%s*DRC2l
 "h
1mrcore/inst/FU_MDU_module/mymul/a1b0/DSP48E1_inst	1mrcore/inst/FU_MDU_module/mymul/a1b0/DSP48E1_inst2/
 )DRC|Netlist|Instance|Required Pin|DSP48E18ZREQP-20h px� 
�
�enum_AREG_0_connects_CEA1_GND_connects_CEA2_GND: %s: When DSP48E1 attribute AREG is set to 0, the CEA1 and CEA2 pins should be tied to GND to save power.%s*DRC2l
 "h
1mrcore/inst/FU_MDU_module/mymul/a1b1/DSP48E1_inst	1mrcore/inst/FU_MDU_module/mymul/a1b1/DSP48E1_inst2/
 )DRC|Netlist|Instance|Required Pin|DSP48E18ZREQP-20h px� 
�
�enum_BREG_0_connects_CEB1_GND_connects_CEB2_GND: %s: When DSP48E1 attribute BREG is set to 0, the CEB1 and CEB2 pins should be tied to GND to save power.%s*DRC2l
 "h
1mrcore/inst/FU_MDU_module/mymul/a0b0/DSP48E1_inst	1mrcore/inst/FU_MDU_module/mymul/a0b0/DSP48E1_inst2/
 )DRC|Netlist|Instance|Required Pin|DSP48E18ZREQP-24h px� 
�
�enum_BREG_0_connects_CEB1_GND_connects_CEB2_GND: %s: When DSP48E1 attribute BREG is set to 0, the CEB1 and CEB2 pins should be tied to GND to save power.%s*DRC2l
 "h
1mrcore/inst/FU_MDU_module/mymul/a0b1/DSP48E1_inst	1mrcore/inst/FU_MDU_module/mymul/a0b1/DSP48E1_inst2/
 )DRC|Netlist|Instance|Required Pin|DSP48E18ZREQP-24h px� 
�
�enum_BREG_0_connects_CEB1_GND_connects_CEB2_GND: %s: When DSP48E1 attribute BREG is set to 0, the CEB1 and CEB2 pins should be tied to GND to save power.%s*DRC2l
 "h
1mrcore/inst/FU_MDU_module/mymul/a1b0/DSP48E1_inst	1mrcore/inst/FU_MDU_module/mymul/a1b0/DSP48E1_inst2/
 )DRC|Netlist|Instance|Required Pin|DSP48E18ZREQP-24h px� 
�
�enum_BREG_0_connects_CEB1_GND_connects_CEB2_GND: %s: When DSP48E1 attribute BREG is set to 0, the CEB1 and CEB2 pins should be tied to GND to save power.%s*DRC2l
 "h
1mrcore/inst/FU_MDU_module/mymul/a1b1/DSP48E1_inst	1mrcore/inst/FU_MDU_module/mymul/a1b1/DSP48E1_inst2/
 )DRC|Netlist|Instance|Required Pin|DSP48E18ZREQP-24h px� 
�
�enum_CREG_0_connects_CEC_GND: %s: When the DSP48E1 CREG attribute is set to 0, the CEC input pin should be tied to GND to save power.%s*DRC2l
 "h
1mrcore/inst/FU_MDU_module/mymul/a0b0/DSP48E1_inst	1mrcore/inst/FU_MDU_module/mymul/a0b0/DSP48E1_inst2/
 )DRC|Netlist|Instance|Required Pin|DSP48E18ZREQP-29h px� 
�
�enum_CREG_0_connects_CEC_GND: %s: When the DSP48E1 CREG attribute is set to 0, the CEC input pin should be tied to GND to save power.%s*DRC2l
 "h
1mrcore/inst/FU_MDU_module/mymul/a0b1/DSP48E1_inst	1mrcore/inst/FU_MDU_module/mymul/a0b1/DSP48E1_inst2/
 )DRC|Netlist|Instance|Required Pin|DSP48E18ZREQP-29h px� 
�
�enum_CREG_0_connects_CEC_GND: %s: When the DSP48E1 CREG attribute is set to 0, the CEC input pin should be tied to GND to save power.%s*DRC2l
 "h
1mrcore/inst/FU_MDU_module/mymul/a1b0/DSP48E1_inst	1mrcore/inst/FU_MDU_module/mymul/a1b0/DSP48E1_inst2/
 )DRC|Netlist|Instance|Required Pin|DSP48E18ZREQP-29h px� 
�
�enum_CREG_0_connects_CEC_GND: %s: When the DSP48E1 CREG attribute is set to 0, the CEC input pin should be tied to GND to save power.%s*DRC2l
 "h
1mrcore/inst/FU_MDU_module/mymul/a1b1/DSP48E1_inst	1mrcore/inst/FU_MDU_module/mymul/a1b1/DSP48E1_inst2/
 )DRC|Netlist|Instance|Required Pin|DSP48E18ZREQP-29h px� 
�
�enum_MREG_0_connects_CEM_GND: %s: When the DSP48E1 MREG attribute is set to 0, the CEM input pin should be tied to GND to save power.%s*DRC2l
 "h
1mrcore/inst/FU_MDU_module/mymul/a0b0/DSP48E1_inst	1mrcore/inst/FU_MDU_module/mymul/a0b0/DSP48E1_inst2/
 )DRC|Netlist|Instance|Required Pin|DSP48E18ZREQP-30h px� 
�
�enum_MREG_0_connects_CEM_GND: %s: When the DSP48E1 MREG attribute is set to 0, the CEM input pin should be tied to GND to save power.%s*DRC2l
 "h
1mrcore/inst/FU_MDU_module/mymul/a0b1/DSP48E1_inst	1mrcore/inst/FU_MDU_module/mymul/a0b1/DSP48E1_inst2/
 )DRC|Netlist|Instance|Required Pin|DSP48E18ZREQP-30h px� 
�
�enum_MREG_0_connects_CEM_GND: %s: When the DSP48E1 MREG attribute is set to 0, the CEM input pin should be tied to GND to save power.%s*DRC2l
 "h
1mrcore/inst/FU_MDU_module/mymul/a1b0/DSP48E1_inst	1mrcore/inst/FU_MDU_module/mymul/a1b0/DSP48E1_inst2/
 )DRC|Netlist|Instance|Required Pin|DSP48E18ZREQP-30h px� 
�
�enum_MREG_0_connects_CEM_GND: %s: When the DSP48E1 MREG attribute is set to 0, the CEM input pin should be tied to GND to save power.%s*DRC2l
 "h
1mrcore/inst/FU_MDU_module/mymul/a1b1/DSP48E1_inst	1mrcore/inst/FU_MDU_module/mymul/a1b1/DSP48E1_inst2/
 )DRC|Netlist|Instance|Required Pin|DSP48E18ZREQP-30h px� 
d
DRC finished with %s
1905*	planAhead2&
$0 Errors, 23 Warnings, 20 AdvisoriesZ12-3199h px� 
i
BPlease refer to the DRC report (report_drc) for more information.
1906*	planAheadZ12-3200h px� 
W
)Running write_bitstream with %s threads.
1750*designutils2
2Z20-2272h px� 
?
Loading data files...
1271*designutilsZ12-1165h px� 
>
Loading site data...
1273*designutilsZ12-1167h px� 
?
Loading route data...
1272*designutilsZ12-1166h px� 
?
Processing options...
1362*designutilsZ12-1514h px� 
<
Creating bitmap...
1249*designutilsZ12-1141h px� 
7
Creating bitstream...
7*	bitstreamZ40-7h px� 
L
Writing bitstream %s...
11*	bitstream2
./soc_top.bitZ40-11h px� 
F
Bitgen Completed Successfully.
1606*	planAheadZ12-1842h px� 
�
�WebTalk data collection is mandatory when using a ULT device. To see the specific WebTalk data collected for your design, open the usage_statistics_webtalk.html or usage_statistics_webtalk.xml file in the implementation directory.698*projectZ1-1876h px� 
H
Releasing license: %s
83*common2
ImplementationZ17-83h px� 

G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
442
252
02
0Z4-41h px� 
O
%s completed successfully
29*	vivadotcl2
write_bitstreamZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
write_bitstream: 2

00:00:362

00:00:242

2579.5982	
681.984Z17-268h px� 


End Record