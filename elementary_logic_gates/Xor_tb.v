module Xor_tb;

reg a0, a1;
wire o;
Xor xor1 (a0, a1, o);

initial begin
    $dumpfile("Xor.vcd");
    $dumpvars(0, Xor_tb);

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