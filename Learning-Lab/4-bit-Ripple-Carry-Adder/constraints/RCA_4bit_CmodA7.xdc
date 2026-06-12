##input pins for 4-bit Ripple Carry Adder on Cmod Artix-7 35T 
set_property PACKAGE_PIN R3 [get_ports {a[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {a[3]}]
set_property PULLDOWN true [get_ports {a[3]}]

set_property PACKAGE_PIN T3 [get_ports {a[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {a[2]}]
set_property PULLDOWN true [get_ports {a[2]}]

set_property PACKAGE_PIN R2 [get_ports {a[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {a[1]}]
set_property PULLDOWN true [get_ports {a[1]}]

set_property PACKAGE_PIN T1 [get_ports {a[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {a[0]}]
set_property PULLDOWN true [get_ports {a[0]}]

set_property PACKAGE_PIN T2 [get_ports {b[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {b[3]}]
set_property PULLDOWN true [get_ports {b[3]}]

set_property PACKAGE_PIN U1 [get_ports {b[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {b[2]}]
set_property PULLDOWN true [get_ports {b[2]}]

set_property PACKAGE_PIN W2 [get_ports {b[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {b[1]}]
set_property PULLDOWN true [get_ports {b[1]}]

set_property PACKAGE_PIN V2 [get_ports {b[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {b[0]}]
set_property PULLDOWN true [get_ports {b[0]}]

set_property PACKAGE_PIN V3 [get_ports c]
set_property IOSTANDARD LVCMOS33 [get_ports c]
set_property PULLDOWN true [get_ports c]

##output pins for 4-bit Ripple Carry Adder on Cmod Artix-7 35T
set_property PACKAGE_PIN A17 [get_ports {sum[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {sum[3]}]

set_property PACKAGE_PIN C16 [get_ports {sum[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {sum[2]}]

set_property PACKAGE_PIN B17 [get_ports {sum[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {sum[1]}]

set_property PACKAGE_PIN B16 [get_ports {sum[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {sum[0]}]

set_property PACKAGE_PIN C17 [get_ports cout]
set_property IOSTANDARD LVCMOS33 [get_ports cout]