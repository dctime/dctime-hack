module Or_tb;

reg a0, a1;
wire o0;

Or or1 (.in_a(a0), .in_b(a1), .out(o0));

initial begin
    $dumpfile("Or.vcd");
    $dumpvars(0, Or_tb);

    a0 = 0;
    a1 = 0;
    #10;
    a0 = 0;
    a1 = 1;
    #10;
    a0 = 1;
    a1 = 1;
    #10;
    a0 = 1;
    a1 = 0;
    #10;

end
    
endmodule