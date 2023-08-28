`include "RAM512.v"

module RAM512_tb;

    reg [15:0] in = 16'habcd;
    reg [8:0] addr = 9'b110011001;
    reg load = 0;
    reg clk = 0;
    wire [15:0] out;

    RAM512 ram512 (.in(in), .addr(addr), .load(load), .clk(clk), .out(out));

    initial begin
        $dumpfile("RAM512.vcd");
        $dumpvars(0, RAM512_tb);
        #1000 $finish;
    end

    always begin
        #1 clk = ~clk;
    end

    always begin
        #2 load = ~load;
        #6 load = load;
    end

    always begin
        #4 
        if (addr == 9'b111111000) begin
            addr = 9'b110011000;
        end else begin
            addr = addr + 1;
        end
    end

    always begin
        #4
        if (in == 16'hffff) begin
            in = 16'h0000;
        end begin
            in = in + 1;
        end
    end
    
endmodule