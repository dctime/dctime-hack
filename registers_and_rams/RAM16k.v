`include "RAM4k.v"

module RAM16k (
    input [15:0] in,
    input [13:0] addr,
    input load, clk,
    output reg [15:0] out
);

wire [15:0] outs [7:0];
reg loads [7:0];
reg [2:0] loadCounter;
wire [1:0] ramAddr;
wire [11:0] allAddr;
assign allAddr = addr [11:0];
assign ramAddr = addr [13:12];

genvar RAMCounter;
generate
    for (RAMCounter = 0; RAMCounter < 4; RAMCounter = RAMCounter + 1) begin : RAM4kto16k
       RAM4k ram4k (.in(in), .addr(allAddr), .load(loads[RAMCounter]), .clk(clk), .out(outs[RAMCounter]));
    end
endgenerate

always @(*) begin
    for (loadCounter = 0; loadCounter < 4; loadCounter = loadCounter + 1) begin
        if (ramAddr == loadCounter) begin
            loads[loadCounter] <= load;
        end else begin
            loads[loadCounter] <= 0;
        end
    end

    out <= outs[ramAddr];
end
    
endmodule