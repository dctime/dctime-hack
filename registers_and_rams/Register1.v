module Register1 (
    input in,
    input load,
    input clk,
    output reg out = 0
);

always @(posedge clk ) begin
    if (load == 1) begin
        out <= in;
    end else begin
        out <= out;
    end
end
    
endmodule