module And_tb;

reg a1, a2;
wire o1;
And and1(a1, a2, o1);

initial begin
    $dumpfile("And.vcd");
    $dumpvars(0, And_tb);
    a1 = 0;
    a2 = 0;
    #10;
    a1 = 0;
    a2 = 1;
    #10;
    a1 = 1;
    a2 = 0;
    #10;
    a1 = 1;
    a2 = 1;
    #10;
end

endmodule