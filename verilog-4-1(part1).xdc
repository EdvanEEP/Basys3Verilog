
# LEDs
set_property -dict { PACKAGE_PIN U16   IOSTANDARD LVCMOS33 } [get_ports Y]

set_property -dict { PACKAGE_PIN W17   IOSTANDARD LVCMOS33 } [get_ports {data[1]}]
set_property -dict { PACKAGE_PIN V15   IOSTANDARD LVCMOS33 } [get_ports {data[3]}]
set_property -dict { PACKAGE_PIN W15   IOSTANDARD LVCMOS33 } [get_ports {data[2]}]
set_property -dict { PACKAGE_PIN W16    IOSTANDARD LVCMOS33 } [get_ports {data[0]}]

set_property -dict { PACKAGE_PIN W19   IOSTANDARD LVCMOS33 } [get_ports {sel[1]}]
set_property -dict { PACKAGE_PIN T17   IOSTANDARD LVCMOS33 } [get_ports {sel[0]}]
