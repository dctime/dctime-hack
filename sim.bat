iverilog -o %1 %1_tb.v
vvp %1
gtkwave %1.vcd