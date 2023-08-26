`include "HalfAdder.v"

module FullAdder (
    input a, b, c,
    output sum, carry
);

    wire bAddCSum, bAddCCarry;
    wire aAddBAddCCarry;

    HalfAdder halfAdder1 (.a(b), .b(c), .sum(bAddCSum), .carry(bAddCCarry));
    HalfAdder halfAdder2 (.a(a), .b(bAddCSum), .sum(sum), .carry(aAddBAddCCarry));

    assign carry = bAddCCarry ^ aAddBAddCCarry;
endmodule