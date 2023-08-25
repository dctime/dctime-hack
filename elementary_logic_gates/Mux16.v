module Mux16(
    input wire [15:0] a1, a2,
    input wire sel,
    output reg [15:0] o
);

    always @(*) begin
        if (sel == 0) begin
            o = a1;
        end else begin
            o = a2;
        end
    end
    
endmodule