`include "RAM8.v"

module RAM64 (
    input [15:0] in,
    input [5:0] addr,
    input load, clk,
    output reg [15:0] out
);

wire [15:0] outs [7:0];
reg loads [7:0];
reg [3:0] loadCounter;
wire [2:0] ramAddr, allAddr;
assign allAddr = addr [2:0];
assign ramAddr = addr [5:3];

genvar RAMCounter;
generate
    for (RAMCounter = 0; RAMCounter < 8; RAMCounter = RAMCounter + 1) begin
       RAM8 ram8 (.in(in), .addr(allAddr), .load(loads[RAMCounter]), .clk(clk), .out(outs[RAMCounter]));
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