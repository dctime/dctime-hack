module Mux4Way16 (
    input wire [1:0] sel,
    input wire [15:0] in1,
    input wire [15:0] in2,
    input wire [15:0] in3,
    input wire [15:0] in4,
    output reg [15:0] out
);

    always @(*) begin
        if (sel == 2'b00) begin
            out = in1;
        end else if (sel == 2'b01) begin
            out = in2;
        end else if (sel == 2'b10) begin
            out = in3;
        end else if (sel == 2'b11) begin
            out = in4;
        end
    end
    
    
endmodule