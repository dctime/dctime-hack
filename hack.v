`include "arithmetic/FullAdder.v"

module hack(
	input a, b, c,
	output sum , carry
);
	wire nota, notb, notc, notsum, notcarry;
	assign nota = ~a;
	assign notb = ~b;
	assign notc = ~c;
	assign sum = ~notsum;
	assign carry = ~notcarry;
	
	FullAdder fullAdder (.a(nota), .b(notb), .c(notc), .sum(notsum), .carry(notcarry));
	
endmodule