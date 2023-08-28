`include "RAM4k.v"

module RAM4k_tb;

    reg [15:0] in = 16'habcd;
    reg [11:0] addr = 12'b110011001001;
    reg load = 0;
    reg clk = 0;
    wire [15:0] out;

    RAM4k ram4k (.in(in), .addr(addr), .load(load), .clk(clk), .out(out));

    initial begin
        $dumpfile("RAM4k.vcd");
        $dumpvars(0, RAM4k_tb);
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
        if (addr == 12'b111111000000) begin
            addr = 12'b110011000000;
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