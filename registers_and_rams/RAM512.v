`include "RAM64.v"

module RAM512 (
    input [15:0] in,
    input [8:0] addr,
    input load, clk,
    output reg [15:0] out
);

wire [15:0] outs [7:0];
reg loads [7:0];
reg [3:0] loadCounter;
wire [2:0] ramAddr;
wire [5:0] allAddr;
assign allAddr = addr [5:0];
assign ramAddr = addr [8:6];

genvar RAMCounter;
generate
    for (RAMCounter = 0; RAMCounter < 8; RAMCounter = RAMCounter + 1) begin : RAM64to512
       RAM64 ram64 (.in(in), .addr(allAddr), .load(loads[RAMCounter]), .clk(clk), .out(outs[RAMCounter]));
    end
endgenerate

always @(*) begin
    for (loadCounter = 0; loadCounter < 8; loadCounter = loadCounter + 1) begin
        if (ramAddr == loadCounter) begin
            loads[loadCounter] <= load;
        end else begin
            loads[loadCounter] <= 0;
        end
    end

    out <= outs[ramAddr];
end
    
endmodule