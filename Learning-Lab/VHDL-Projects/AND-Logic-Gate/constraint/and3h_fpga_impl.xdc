## Buttons as inputs
set_property -dict { PACKAGE_PIN A18   IOSTANDARD LVCMOS33 } [get_ports { a }]; #IO_L19N_T3_VREF_16 Sch=a
set_property -dict { PACKAGE_PIN B18   IOSTANDARD LVCMOS33 } [get_ports { b }]; #IO_L19P_T3_16 Sch=b

## LED
set_property -dict { PACKAGE_PIN C16   IOSTANDARD LVCMOS33 } [get_ports { y }]; #IO_L13P_T2_MRCC_16 Sch=y