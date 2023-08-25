module Or16_tb;
    reg [15:0] in1 = 16'h0000, in2 = 16'h0000;
    wire [15:0] out;

    Or16 dctime (.in1(in1), .in2(in2), .out(out));

    initial begin
        $dumpfile("Or16.vcd");
        $dumpvars(0, Or16_tb);
    end

    always begin
        #1
        if (in1 == 16'hffff) begin
            in1 = 16'h0000;
        end else begin
            in1 = in1 + 1;
        end
    end

    always begin
        #2
        if (in2 == 16'hffff) begin
            in2 = 16'h0000;
        end else begin
            in2 = in2 + 1;
        end
    end

    initial begin
        #1000 $finish;
    end
    
endmodule