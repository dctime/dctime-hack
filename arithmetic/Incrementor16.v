module Incrementor16 (
    input [15:0] in,
    output reg [15:0] out
);
    reg [4:0] rvCounter = 0;
    reg stopFlip = 0;
    always @(in) begin
        stopFlip = 0;
        for (rvCounter = 0; rvCounter < 16; rvCounter = rvCounter + 1) begin
            if (stopFlip == 0) begin
                if (in[rvCounter] == 0) begin
                    stopFlip = 1;
                    out[rvCounter] = ~in[rvCounter];
                end else begin
                    stopFlip = 0;
                    out[rvCounter] = ~in[rvCounter];
                end
            end else begin
                out[rvCounter] = in[rvCounter];
                stopFlip = 1;
            end
            
        end
    end

    // assign out = in + 1;
    
endmodule