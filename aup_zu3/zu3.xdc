#============================================================================
# Constraints for AUP-ZU3 (xczu3eg-sfvc784-2-e)
# Get full pinout from: https://www.realdigital.org/hardware/aup-zu3
# (Constraints file, Schematic, Reference Manual)
#============================================================================

set_property BITSTREAM.CONFIG.UNUSEDPIN PULLUP [current_design]
set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]

#----------------------------------------------------------------------------
# Part (must match project)
#----------------------------------------------------------------------------
# Create project with: set part "xczu3eg-sfvc784-2-e"

#----------------------------------------------------------------------------
# 100 MHz reference clock (differential)
# Set CLK_100_P / CLK_100_N to the actual PL clock pins from board schematic.
# Many ZU3 boards use a 100 MHz or 33.33 MHz oscillator; check Reference Manual.
#----------------------------------------------------------------------------
# Example placeholder - REPLACE with your board's clock pins, then uncomment:
# set_property PACKAGE_PIN <pin_p> [get_ports CLK_100_P]
# set_property PACKAGE_PIN <pin_n> [get_ports CLK_100_N]
# set_property IOSTANDARD LVDS [get_ports {CLK_100_P CLK_100_N}]
# create_clock -period 10.000 -name sys_clk_100 [get_ports CLK_100_P]

# If your board has a single-ended 100 MHz clock, use IBUF in zu3_top and:
# create_clock -period 10.000 -name sys_clk [get_ports CLK_100]

#----------------------------------------------------------------------------
# White LEDs (8) - RealDigital AUP-ZU3
#----------------------------------------------------------------------------
set_property PACKAGE_PIN AF5 [get_ports {LEDS[0]}]
set_property PACKAGE_PIN AE7 [get_ports {LEDS[1]}]
set_property PACKAGE_PIN AH2 [get_ports {LEDS[2]}]
set_property PACKAGE_PIN AE5 [get_ports {LEDS[3]}]
set_property PACKAGE_PIN AH1 [get_ports {LEDS[4]}]
set_property PACKAGE_PIN AE4 [get_ports {LEDS[5]}]
set_property PACKAGE_PIN AG1 [get_ports {LEDS[6]}]
set_property PACKAGE_PIN AF2 [get_ports {LEDS[7]}]
set_property IOSTANDARD LVCMOS12 [get_ports LEDS*]

#----------------------------------------------------------------------------
# Pushbuttons (4)
#----------------------------------------------------------------------------
set_property PACKAGE_PIN AB6 [get_ports {BUTTONS[0]}]
set_property PACKAGE_PIN AB7 [get_ports {BUTTONS[1]}]
set_property PACKAGE_PIN AB2 [get_ports {BUTTONS[2]}]
set_property PACKAGE_PIN AC6 [get_ports {BUTTONS[3]}]
set_property IOSTANDARD LVCMOS12 [get_ports BUTTONS*]

#----------------------------------------------------------------------------
# Slide switches (8)
#----------------------------------------------------------------------------
set_property PACKAGE_PIN AB1 [get_ports {SWITCHES[0]}]
set_property PACKAGE_PIN AF1 [get_ports {SWITCHES[1]}]
set_property PACKAGE_PIN AE3 [get_ports {SWITCHES[2]}]
set_property PACKAGE_PIN AC2 [get_ports {SWITCHES[3]}]
set_property PACKAGE_PIN AC1 [get_ports {SWITCHES[4]}]
set_property PACKAGE_PIN AD6 [get_ports {SWITCHES[5]}]
set_property PACKAGE_PIN AD1 [get_ports {SWITCHES[6]}]
set_property PACKAGE_PIN AD2 [get_ports {SWITCHES[7]}]
set_property IOSTANDARD LVCMOS12 [get_ports SWITCHES*]

#----------------------------------------------------------------------------
# SDRAM - AUP-ZU3 has no PL SDRAM; these are driven by the core but unused.
# Leave unconstrained (Vivado will warn) or assign to dummy/PMOD if desired.
#----------------------------------------------------------------------------
# set_property IOSTANDARD LVCMOS33 [get_ports SDRAM_*]
# (add pin locations only if you attach external SDRAM)
