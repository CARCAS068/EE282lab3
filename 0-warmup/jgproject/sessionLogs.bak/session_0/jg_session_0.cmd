# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2023.12
# platform  : Linux 4.18.0-553.32.1.el8_10.x86_64
# version   : 2023.12p001 64 bits
# build date: 2024.01.23 16:09:24 UTC
# ----------------------------------------
# started   : 2025-05-30 21:42:01 PDT
# hostname  : caddy14.stanford.edu.(none)
# pid       : 341338
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:35189' '-style' 'windows' '-data' 'AAAA3nicVY6xCsJAEETfKfYp/YaAEoSARYo0dkpQwTZItBBCEkxEsDGf6p+ccwkpbpad2V1uuDFA8rXWMmD+EQXsOXBiJ864SGFJzIYtESkFV26UPDRFo8/8RiUx+HD7zL8ce09hMZmnJ84QstI/parmTc6LilbcqGqedNyVIlfC85DZ7a14rS7kcvgD8wMZTQ==' '-proj' '/home/users/ccarrete/cva6-formal/0-warmup/jgproject/sessionLogs/session_0' '-init' '-hidden' '/home/users/ccarrete/cva6-formal/0-warmup/jgproject/.tmp/.initCmds.tcl' 'test.tcl'
# Run JG with a TCl file: jg foo.tcl
# To get help about the tcl command syntax
# use the help command "help" at the JG console
# This will list an overview of all commands.
# To get details about individual command use
# help in combination with the command name and its options.
# For example "help assert"

# Clear previous run
clear -all

# Analyze RTL files
analyze -sv -f Flist.counter

# Elaborate
elaborate

# Initialization
# Clock specification
# clock pin is called "clk"
# duty cycle is 1:1 by default
clock clk_i

# Define reset condition
# reset pin is called rst_n, active low
reset !rst_ni

# Start the verification
prove -all

report -summary -results -file jg_summary.txt -force

visualize -violation -property <embedded>::counter.output_never_error -new_window
visualize -violation -property <embedded>::counter.output_never_error -new_window
