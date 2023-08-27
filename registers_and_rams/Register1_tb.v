`include "Register1.v"

module Register1_tb;


reg in = 0, load = 0, clk = 0;
wire out;
Register1 register1 (.in(in), .out(out), .load(load), .clk(clk));

initial begin
    $dumpfile("Register1.vcd");
    $dumpvars(0, Register1_tb);
    #1000 $finish;
end

always begin
    #1
    clk = ~clk;
end

always begin
    #2
    load = ~load;
end

always begin
    #4
    in = ~in;
end
    
endmodule