## Buttons as inputs
set_property -dict { PACKAGE_PIN A18   IOSTANDARD LVCMOS33 } [get_ports { A }]; #IO_L19N_T3_VREF_16 Sch=A
set_property -dict { PACKAGE_PIN B18   IOSTANDARD LVCMOS33 } [get_ports { B }]; #IO_L19P_T3_16 Sch=B

## LED as output
set_property -dict { PACKAGE_PIN C16   IOSTANDARD LVCMOS33 } [get_ports { Y }]; #IO_L13P_T2_MRCC_16 Sch=Y