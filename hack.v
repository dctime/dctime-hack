`include "arithmetic/Incrementor16.v"

module hack(
	input [15:0] in,
	output [15:0] out
);
Incrementor16 incrementor16 (.in(in), .out(out));
	
endmodule