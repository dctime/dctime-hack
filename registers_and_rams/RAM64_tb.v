`include "RAM64.v"

module RAM64_tb;

    reg [15:0] in = 16'habcd;
    reg [5:0] addr = 6'b110011;
    reg load = 0;
    reg clk = 0;
    wire [15:0] out;

    RAM64 ram64 (.in(in), .addr(addr), .load(load), .clk(clk), .out(out));

    initial begin
        $dumpfile("RAM64.vcd");
        $dumpvars(0, RAM64_tb);
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
        if (addr == 6'b111111) begin
            addr = 6'b110011;
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