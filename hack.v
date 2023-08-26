`include "arithmetic/FullAdder.v"

module hack(
	input a, b, c,
	output sum , carry
);
	FullAdder fullAdder (.a(a), .b(b), .c(c), .sum(sum), .carry(carry));
	
endmodule