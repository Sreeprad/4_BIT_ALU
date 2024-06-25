# Create a virtual clock with a period of 10 ns for timing analysis
create_clock -name virtual_clock -period 10.0

# Define input delays relative to the virtual clock
set_input_delay -clock virtual_clock 2.0 [get_ports {A0 A1 A2 A3}]
set_input_delay -clock virtual_clock 2.0 [get_ports {B0 B1 B2 B3}]
set_input_delay -clock virtual_clock 2.0 [get_ports B_inv]
set_input_delay -clock virtual_clock 2.0 [get_ports {SEL0 SEL1}]

# Define output delays relative to the virtual clock
set_output_delay -clock virtual_clock 2.0 [get_ports {Ov OUT0 OUT1 OUT2 OUT3}]

# Define input drive strength (optional, example with 1 unit drive strength)
set_driving_cell -lib_cell INV_X1 -pin Z [get_ports {A0 A1 A2 A3 B0 B1 B2 B3 B_inv SEL0 SEL1}]

# Define output load (optional, example with 1 unit load)
set_load 1.0 [get_ports {Ov OUT0 OUT1 OUT2 OUT3}]

# Specify timing exceptions if any (example provided for illustration)
# Set false paths if there are any paths that should not be considered for timing
# set_false_path -from [get_ports B_inv] -to [get_ports OUT0]
# set_false_path -from [get_ports SEL0] -to [get_ports OUT1]
# set_false_path -from [get_ports SEL1] -to [get_ports OUT2]

# Set multi-cycle paths if there are any paths that require multi-cycle analysis
# set_multicycle_path -setup 2 -from [get_ports A0] -to [get_ports OUT0]
# set_multicycle_path -hold 1 -from [get_ports A0] -to [get_ports OUT0]

# Define max and min delays if needed
# set_max_delay 10.0 -from [get_ports A0] -to [get_ports OUT0]
# set_min_delay 1.0 -from [get_ports A0] -to [get_ports OUT0]

# Define clock uncertainty (optional)
# set_clock_uncertainty 0.1 [get_clocks virtual_clock]

# Additional constraints can be added as required




# Define input delays
set_input_delay 2.0 [get_ports {A0 A1 A2 A3}]
set_input_delay 2.0 [get_ports {B0 B1 B2 B3}]
set_input_delay 2.0 [get_ports B_inv]
set_input_delay 2.0 [get_ports {SEL0 SEL1}]

# Define output delays
set_output_delay 2.0 [get_ports {Ov OUT0 OUT1 OUT2 OUT3}]

# Specify timing exceptions if any (none specified in this basic example)
# Example for false path (if applicable):
# set_false_path -from [get_ports B_inv] -to [get_ports OUT0]
# set_false_path -from [get_ports SEL0] -to [get_ports OUT1]
# set_false_path -from [get_ports SEL1] -to [get_ports OUT2]

# Example for multi-cycle paths (if applicable):
# set_multicycle_path -setup 2 -from [get_ports A0] -to [get_ports OUT0]
# set_multicycle_path -hold 1 -from [get_ports A0] -to [get_ports OUT0]

# Additional constraints can be added as required
