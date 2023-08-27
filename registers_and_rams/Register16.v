`include "Register1.v"

module Register16 (
    input [15:0] in,
    input load, clk,
    output [15:0] out
);

genvar registerCounter;
generate
    for (registerCounter = 0; registerCounter < 16; registerCounter = registerCounter + 1) begin
        Register1 register1 (.in(in[registerCounter]), .out(out[registerCounter]), .load(load), .clk(clk));
    end
endgenerate
    
endmodule