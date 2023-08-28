`include "RAM512.v"

module RAM4k (
    input [15:0] in,
    input [11:0] addr,
    input load, clk,
    output reg [15:0] out
);

wire [15:0] outs [7:0];
reg loads [7:0];
reg [3:0] loadCounter;
wire [2:0] ramAddr;
wire [8:0] allAddr;
assign allAddr = addr [8:0];
assign ramAddr = addr [11:9];

genvar RAMCounter;
generate
    for (RAMCounter = 0; RAMCounter < 8; RAMCounter = RAMCounter + 1) begin : RAM512to4k
       RAM512 ram512 (.in(in), .addr(allAddr), .load(loads[RAMCounter]), .clk(clk), .out(outs[RAMCounter]));
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