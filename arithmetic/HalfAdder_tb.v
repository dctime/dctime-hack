module HalfAdder_tb;
    reg a = 0, b = 0;
    wire out, carry;
    HalfAdder halfadder (a, b, out, carry);

    initial begin
        $dumpfile("HalfAdder.vcd");
        $dumpvars(0, HalfAdder_tb);
        #1000 $finish;
    end

    always begin
        #1 a = ~a;
    end

    always begin
        #2 b = ~b;
    end
    
endmodule