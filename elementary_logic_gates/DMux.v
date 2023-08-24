module DMux (
    input wire a, sel,
    output reg o1, o2
);

always @(*) begin
    if (sel == 0) begin
        o1 = a;
        o2 = 0;
    end else begin
        o1 = 0;
        o2 = a;
    end
end
    
endmodule