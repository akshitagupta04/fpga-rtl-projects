## This file is a general .xdc for the CmodA7 rev. B
## To use it in a project:
## - uncomment the lines corresponding to used pins
## - rename the used ports (in each line, after get_ports) according to the top level signal names in the project

## LEDs as outputs
set_property -dict { PACKAGE_PIN A17   IOSTANDARD LVCMOS33 } [get_ports { temp[0] }]; #IO_L12N_T1_MRCC_16 Sch=temp[1]
set_property -dict { PACKAGE_PIN C16   IOSTANDARD LVCMOS33 } [get_ports { temp[1] }]; #IO_L13P_T2_MRCC_16 Sch=temp[2]

## Buttons as inputs
set_property -dict { PACKAGE_PIN A18   IOSTANDARD LVCMOS33 } [get_ports { car[0] }]; #IO_L19N_T3_VREF_16 Sch=car[0]
set_property -dict { PACKAGE_PIN B18   IOSTANDARD LVCMOS33 } [get_ports { car[1] }]; #IO_L19P_T3_16 Sch=car[1]
