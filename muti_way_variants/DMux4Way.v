module DMux4Way (
    input wire [1:0] sel,
    input wire a, b, c, d,
    output reg o
);

always @(*) begin
    case (sel)
        2'b00: o = a;
        2'b01: o = b;
        2'b10: o = c;
        2'b11: o = d; 
        default: o = 0;
    endcase
end
    
endmodule