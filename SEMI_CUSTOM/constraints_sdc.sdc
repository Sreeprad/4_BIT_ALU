# constraints.sdc for 4-bit ALU design

# Define clock with a period of 10 ns (100 MHz)
create_clock -period 10.0 [get_ports clk]

# Define input delays (assuming input data arrives 1 ns after clock edge)
set_input_delay -clock [get_clocks clk] 1.0 [get_ports {A0 A1 A2 A3 B0 B1 B2 B3 B_inv SEL0 SEL1}]

# Define output delays (assuming output data is required 1 ns before next clock edge)
set_output_delay -clock [get_clocks clk] 1.0 [get_ports {OUT0 OUT1 OUT2 OUT3 Ov}]

# Define maximum transition time for the inputs (1 ns rise/fall time)
set_max_transition 1.0 [get_ports {A0 A1 A2 A3 B0 B1 B2 B3 B_inv SEL0 SEL1}]

# Define maximum transition time for the outputs (1 ns rise/fall time)
set_max_transition 1.0 [get_ports {OUT0 OUT1 OUT2 OUT3 Ov}]

# Specify the load capacitance on the output pins
set_load 0.1 [get_ports {OUT0 OUT1 OUT2 OUT3 Ov}]

# Define input/output port capacitance (assuming 10pF)
set_input_transition 0.01 [get_ports {A0 A1 A2 A3 B0 B1 B2 B3 B_inv SEL0 SEL1}]
set_output_transition 0.01 [get_ports {OUT0 OUT1 OUT2 OUT3 Ov}]