`include "Register16.v"

module Register16_tb;

reg [15:0] in = 16'habcd;
reg load = 0, clk = 0;
wire [15:0] out;

Register16 register16 (.in(in), .out(out), .load(load), .clk(clk));

initial begin
    $dumpfile("Register16.vcd");
    $dumpvars(0, Register16_tb);
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
    if (in == 16'hffff) begin
        in <= 0; 
    end else begin
        in <= in + 1;
    end
end
    
endmodule