`include "RAM8.v"

module RAM8_tb;

    reg [15:0] in = 16'habcd;
    reg [2:0] addr = 3'b000;
    reg load = 0;
    reg clk = 0;
    wire [15:0] out;

    RAM8 ram8 (.in(in), .addr(addr), .load(load), .clk(clk), .out(out));

    initial begin
        $dumpfile("RAM8.vcd");
        $dumpvars(0, RAM8_tb);
        #1000 $finish;
    end

    always begin
        #1 clk = ~clk;
    end

    always begin
        #2 load = ~load;
    end

    always begin
        #4 
        if (addr == 3'b111) begin
            addr = 0;
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