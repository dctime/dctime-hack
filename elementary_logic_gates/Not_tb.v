// `include "Not.v"

module Not_tb;

    reg a;
    wire b;

    Not not1(a, b);

    initial begin
        $dumpfile("Not.vcd");
        $dumpvars(0, Not_tb);
        a = 0;
        #10;
        a = 1;
        #10;
        a = 0;
    end

endmodule