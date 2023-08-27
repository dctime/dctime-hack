`include "Adder16.v"
`include "../16_bit_variants/Not16.v"

module ALU (
    input wire [15:0] x, y,
    input wire zx, nx, zy, ny, f, no,
    output reg [15:0] out,
    output reg zr, ng
);

/*
zx = 1, x = 0
nx = 1, x = ~x
f => x&y / x+y
no = 1, out = ~out
*/

reg [15:0] rvProcessedX, rvProcessedY, rvCalculated;
wire [15:0] wvAddedXAndY, wvNotOut;

Adder16 adder16 (.i1(rvProcessedX), .i2(rvProcessedY), .o(wvAddedXAndY));
Not16 not16 (.in(rvCalculated), .out(wvNotOut));

always @(*) begin
    if (zx == 1) begin
        rvProcessedX = 0;
    end else begin
        rvProcessedX = x;
    end

    if (nx == 1) begin
        rvProcessedX = ~rvProcessedX;
    end else begin
        rvProcessedX = rvProcessedX;
    end

    if (zy == 1) begin
        rvProcessedY = 0;
    end else begin
        rvProcessedY = y;
    end

    if (ny == 1) begin
        rvProcessedY = ~rvProcessedY;
    end else begin
        rvProcessedY = rvProcessedY;
    end

    if (f == 0) begin
        rvCalculated = rvProcessedX & rvProcessedY;
    end else begin
        rvCalculated = wvAddedXAndY;
    end

    if (no == 0) begin
        out = rvCalculated;
    end else begin
        out = wvNotOut;
    end

    if (out == 0) begin
        zr = 1;
    end else begin
        zr = 0;
    end

    if (out[15] == 0) begin
        ng = 0;
    end else begin
        ng = 1;
    end
end
endmodule