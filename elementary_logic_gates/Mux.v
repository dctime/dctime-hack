module Mux (
    input wire a1,
    input wire a2,
    input wire sel,     
    output reg o
);


always @(a1 or a2 or sel) begin
    if (sel == 0)
        o = a1;
    else
        o = a2;
end
    
endmodule