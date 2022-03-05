########################################################
# ZedBoard Pin Assignments
########################################################
# CLK - Zedboard 100MHz oscillator
set_property -dict {PACKAGE_PIN Y9 IOSTANDARD LVCMOS33} [get_ports clk]

########################################################
##ZedBoard Timing Constraints
########################################################
# define clock and period
create_clock -period 3.791 -name clk -waveform {0.000 1.895} [get_ports clk]


