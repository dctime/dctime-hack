module Not16_tb;
    reg [15:0] in = 16'b0000000000000000;
    wire [15:0] out;
    reg valid;

    Not16 notah(.in(in), .out(out));

    initial begin
        $dumpfile("Not16.vcd");
        $dumpvars(0, in, out, valid);
    end

    initial begin
        #100000 $finish;
    end

    always begin
        #1
        if (in == 16'b1111111111111111)begin
            in <= 16'b0000000000000000;
        end else begin
            in <= in + 1;
        end
    end

    always begin
        if (in == ~out)begin
            valid = 1;
        end else begin
            valid = 0;
        end
    end
    
endmodule