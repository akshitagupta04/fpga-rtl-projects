## Clock signal (12MHz) - Pin L17
set_property PACKAGE_PIN L17 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports clk]

##LED A17 (Red LED) - Pin A17
set_property PACKAGE_PIN A17 [get_ports led]
set_property IOSTANDARD LVCMOS33 [get_ports led]

## Optional: Create clock constraint
create_clock -period 83.333 [get_ports clk]
