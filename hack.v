`include "registers_and_rams/RAM64.v"

module hack(
	input [15:0] in,
   input [8:0] addr,
   input load, clk,
   output [15:0] out
);
RAM64 ram64 (.in(in), .addr(addr), .load(load), .clk(clk), .out(out));
	
endmodule