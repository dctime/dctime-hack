`include "Incrementor16.v"

module Incrementor16_tb;

    reg [15:0] rvIn = 0;
    wire [15:0] ovOut;

    Incrementor16 incrementor_16 (.in(rvIn), .out(ovOut));

    initial begin
        $dumpfile("Incrementor16.vcd");
        $dumpvars(0, Incrementor16_tb);
        #1000 $finish;
    end

    always begin
        #1
        if (rvIn == 16'h1111) begin
            rvIn = 16'h0000;
        end else begin
            rvIn = rvIn + 1;
        end
    end
    
endmodule