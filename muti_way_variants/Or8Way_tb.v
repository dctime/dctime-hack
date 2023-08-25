module Or8Way_tb;

    reg [7:0] in = 16'h00;
    wire out;
    Or8Way or8way(.in(in), .out(out));

    initial begin
        $dumpfile("Or8Way.vcd");
        $dumpvars(0, Or8Way_tb);
        #1000 $finish;
    end

    always begin
        #1
        if (in == 8'hff) begin
            in = 8'h00;
        end else begin
            in = in + 1;
        end
    end
    
endmodule