// `include "hack.v"

module hack_tb;

reg a;
wire b;

hack y(a,b);

initial begin
    $dumpfile("hack.vcd");
    $dumpvars(0, hack_tb);

    a = 0;
    #10
    a = 1;
    #10
    a = 0;
    #10
    a = 1;
    #10
    a = 0;
    #10
    a = 1;
    #10
    $finish();
end

endmodule