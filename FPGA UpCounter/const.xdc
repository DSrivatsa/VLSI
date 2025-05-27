# Define the input pins for A and B
set_property -dict { PACKAGE_PIN F4    IOSTANDARD LVCMOS33 } [get_ports { segments[0] }]
set_property -dict { PACKAGE_PIN J3    IOSTANDARD LVCMOS33 } [get_ports { segments[1] }]
set_property -dict { PACKAGE_PIN D2    IOSTANDARD LVCMOS33 } [get_ports { segments[2] }]
set_property -dict { PACKAGE_PIN C2    IOSTANDARD LVCMOS33 } [get_ports { segments[3] }]
set_property -dict { PACKAGE_PIN B1    IOSTANDARD LVCMOS33 } [get_ports { segments[4] }]
set_property -dict { PACKAGE_PIN H4    IOSTANDARD LVCMOS33 } [get_ports { segments[5] }]
set_property -dict { PACKAGE_PIN D1    IOSTANDARD LVCMOS33 } [get_ports { segments[6] }]
set_property -dict { PACKAGE_PIN C1    IOSTANDARD LVCMOS33 } [get_ports { segments[7] }]

set_property -dict { PACKAGE_PIN E4    IOSTANDARD LVCMOS33 } [get_ports { anodes[3] }]
set_property -dict { PACKAGE_PIN F3    IOSTANDARD LVCMOS33 } [get_ports { anodes[2] }]
set_property -dict { PACKAGE_PIN J4    IOSTANDARD LVCMOS33 } [get_ports { anodes[1] }]
set_property -dict { PACKAGE_PIN H3    IOSTANDARD LVCMOS33 } [get_ports { anodes[0] }]

set_property -dict { PACKAGE_PIN F14    IOSTANDARD SSTL135 } [get_ports { clk }];
create_clock -add -name sys_clk_pin -period 10.000 -waveform {0 5.000}  [get_ports { clk }];
#set_property PACKAGE_PIN J2 [get_ports { rst }]
#set_property IOSTANDARD LVCMOS33 [get_ports { rst }]
#buttons
set_property -dict {PACKAGE_PIN H2 IOSTANDARD LVCMOS33} [get_ports {reset}]
#set_property -dict {PACKAGE_PIN J5 IOSTANDARD LVCMOS33} [get_ports {load}]

#Led
set_property -dict {PACKAGE_PIN G1 IOSTANDARD LVCMOS33} [get_ports {counter[0]}]
set_property -dict {PACKAGE_PIN G2 IOSTANDARD LVCMOS33} [get_ports {counter[1]}]
set_property -dict {PACKAGE_PIN F1 IOSTANDARD LVCMOS33} [get_ports {counter[2]}]
set_property -dict {PACKAGE_PIN F2 IOSTANDARD LVCMOS33} [get_ports {counter[3]}]
#set_property -dict {PACKAGE_PIN E1 IOSTANDARD LVCMOS33} [get_ports {din2[0]}]
#set_property -dict {PACKAGE_PIN E2 IOSTANDARD LVCMOS33} [get_ports {din2[1]}]
#set_property -dict {PACKAGE_PIN E3 IOSTANDARD LVCMOS33} [get_ports {din2[2]}]
#set_property -dict {PACKAGE_PIN E5 IOSTANDARD LVCMOS33} [get_ports {din2[3]}]
