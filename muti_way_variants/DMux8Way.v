module DMux4Way (
    input wire [2:0] sel,
    input wire a, b, c, d, e, f, g, h,
    output reg o
);

always @(*) begin
    case (sel)
        3'b000: o = a;
        3'b001: o = b;
        3'b010: o = c;
        3'b011: o = d;
        3'b100: o = e;
        3'b101: o = f;
        3'b110: o = g;
        3'b111: o = h;
        default: o = 0;
    endcase
end
    
endmodule