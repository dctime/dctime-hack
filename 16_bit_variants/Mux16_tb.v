module Mux16_tb;
    
    reg [15:0] a1 = 16'h0000, a2 = 16'h0000;
    reg sel = 0;
    wire [15:0] o;

    Mux16 mux16(.a1(a1), .a2(a2), .sel(sel), .o(o));

    always begin
        #1
        sel = ~sel;
    end

    always begin
        #2
        if (a1 == 16'hffff) begin
            a1 = 16'h0000;
        end else begin
            a1 = a1 + 1;
        end
    end

    always begin
        #4
        if (a2 == 16'hffff) begin
            a2 = 16'h0000;
        end else begin
            a2 = a2 + 1;
        end
    end

    initial begin
        $dumpfile("Mux16.vcd");
        $dumpvars(0, Mux16_tb);
        #1000 $finish;
    end



endmodule