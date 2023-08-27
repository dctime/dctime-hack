`include "FullAdder.v"

module Adder16 (
	input [15:0] i1, i2,
	output [15:0] o
);

	wire wCarry [0:15];

	genvar gCounter;
	generate
		for (gCounter = 0; gCounter < 16; gCounter = gCounter + 1) begin
			if (gCounter == 0) begin
				HalfAdder halfAdder (.a(i1[gCounter]), .b(i2[gCounter]), .sum(o[gCounter]), .carry(wCarry[gCounter])); 
			end else begin
				FullAdder fullAdder (.a(i1[gCounter]), .b(i2[gCounter]), .c(wCarry[gCounter-1]), .sum(o[gCounter]), .carry(wCarry[gCounter]));
			end
		end
	endgenerate
	
endmodule