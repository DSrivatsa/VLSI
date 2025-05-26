## URBANA BOARD CONSTRAINTS V2I1 1/3/2023 


## On-board Slide Switches
set_property -dict {PACKAGE_PIN G1 IOSTANDARD LVCMOS25} [get_ports {D}]
set_property -dict {PACKAGE_PIN F2 IOSTANDARD LVCMOS25} [get_ports {C}]
set_property -dict {PACKAGE_PIN F1 IOSTANDARD LVCMOS25} [get_ports {B}]
set_property -dict {PACKAGE_PIN E2 IOSTANDARD LVCMOS25} [get_ports {A}]



## On-board 7-Segment display 0
#set_property -dict {PACKAGE_PIN G6 IOSTANDARD LVCMOS25} [get_ports {D0_AN[0]}]  # Active LOW
#set_property -dict {PACKAGE_PIN H6 IOSTANDARD LVCMOS25} [get_ports {D0_AN[1]}]  # Active LOW
#set_property -dict {PACKAGE_PIN C3 IOSTANDARD LVCMOS25} [get_ports {D0_AN[2]}]  # Active LOW
#set_property -dict {PACKAGE_PIN B3 IOSTANDARD LVCMOS25} [get_ports {D0_AN[3]}]  # Active LOW
set_property -dict {PACKAGE_PIN E6 IOSTANDARD LVCMOS25} [get_ports {a}];  # CA Active LOW
set_property -dict {PACKAGE_PIN B4 IOSTANDARD LVCMOS25} [get_ports {b}];  # CB Active LOW
set_property -dict {PACKAGE_PIN D5 IOSTANDARD LVCMOS25} [get_ports {c}];  # CC Active LOW
set_property -dict {PACKAGE_PIN C5 IOSTANDARD LVCMOS25} [get_ports {d}];  # CD Active LOW
set_property -dict {PACKAGE_PIN D7 IOSTANDARD LVCMOS25} [get_ports {e}];  # CE Active LOW
set_property -dict {PACKAGE_PIN D6 IOSTANDARD LVCMOS25} [get_ports {f}];  # CF Active LOW
set_property -dict {PACKAGE_PIN C4 IOSTANDARD LVCMOS25} [get_ports {g}];  # CG Active LOW
#set_property -dict {PACKAGE_PIN B5 IOSTANDARD LVCMOS25} [get_ports {D0_SEG[7]}];  # CDP Active LOW
