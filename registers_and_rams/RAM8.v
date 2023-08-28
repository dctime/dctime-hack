`include "Register16.v"

module RAM8 (
    input [15:0] in,
    input [2:0] addr,
    input load,
    input clk,
    output reg [15:0] out
);

wire [15:0] registerOut [7:0];
reg registerLoad [7:0];
genvar indexCounter;
reg [3:0] loadCounter; //Max 7

generate
    for (indexCounter = 0; indexCounter < 8; indexCounter = indexCounter + 1) begin : Register16toRAM8
        Register16 register16 (.in(in), .load(registerLoad[indexCounter]), .clk(clk), .out(registerOut[indexCounter]));
    end
endgenerate

always @(*) begin
    if (load == 1) begin
        for (loadCounter = 0; loadCounter < 8; loadCounter = loadCounter + 1) begin
            if (loadCounter == addr) begin
                registerLoad[loadCounter] <= load;
            end else begin
                registerLoad[loadCounter] <= 0;
            end
        end
    end else begin
        for (loadCounter = 0; loadCounter < 8; loadCounter = loadCounter + 1) begin
            registerLoad[loadCounter] <= 0;
        end
    end

    out <= registerOut[addr];
end

endmodule