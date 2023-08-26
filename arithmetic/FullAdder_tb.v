module FullAdder_tb;

    reg a = 0, b = 0, c = 0;
    wire sum, carry;
    
    FullAdder fullAdder (.a(a), .b(b), .c(c), .sum(sum), .carry(carry));

    initial begin
        $dumpfile("FullAdder.vcd");
        $dumpvars(0, FullAdder_tb);
        #1000 $finish;    
    end

    always begin
        #1 a = ~a;
    end

    always begin
        #2 b = ~b;
    end

    always begin
        #4 c = ~c;
    end
    
endmodule