`include "RAM16k.v"

module RAM16k_tb;

    reg [15:0] in = 16'habcd;
    reg [13:0] addr = 14'b11001100100100;
    reg load = 0;
    reg clk = 0;
    wire [15:0] out;

    RAM16k ram16k (.in(in), .addr(addr), .load(load), .clk(clk), .out(out));

    initial begin
        $dumpfile("RAM16k.vcd");
        $dumpvars(0, RAM16k_tb);
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
        if (addr == 14'b11111100000000) begin
            addr = 14'b11001100000000;
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