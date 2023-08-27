`include "Adder16.v"

module Adder16_tb;

    reg [15:0] i1 = 0, i2 = 0;
    wire [15:0] out;

    Adder16 adder16 (.i1(i1), .i2(i2), .o(out));

    initial begin
        $dumpfile("Adder16.vcd");
        $dumpvars(0, Adder16_tb);

        #1000 $finish;
    end

    always begin
        #1
        i1 = i1 + 1;
    end

    always begin
        #2
        i2 = i2 + 1;
    end
    
endmodule