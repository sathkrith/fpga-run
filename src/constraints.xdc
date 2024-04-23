# Clock pin
set_property PACKAGE_PIN W5 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports clk]

# Reset button
set_property PACKAGE_PIN V17 [get_ports reset]
set_property IOSTANDARD LVCMOS33 [get_ports reset]

# Set Hours and Minutes buttons
set_property PACKAGE_PIN U17 [get_ports set_hours_button]
set_property IOSTANDARD LVCMOS33 [get_ports set_hours_button]
set_property PACKAGE_PIN U16 [get_ports set_minutes_button]
set_property IOSTANDARD LVCMOS33 [get_ports set_minutes_button]

# 7-segment display connections (example for one segment and one anode)
set_property PACKAGE_PIN W17 [get_ports seg[0]]
set_property IOSTANDARD LVCMOS33 [get_ports seg[0]]
# Repeat for other segments and anode pins