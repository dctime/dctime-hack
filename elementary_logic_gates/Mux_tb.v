module Mux_tb;

reg a1 = 0, a2 = 0, sel = 0 ;
wire o;
Mux mux (a1, a2, sel, o);

initial begin
    $dumpfile("Mux.vcd");
    $dumpvars(0, Mux_tb);
    
end

always begin
    #10 a1 = ~a1;
end

always begin
    #20 a2 = ~a2;
end

always begin
    #40 sel = ~sel;
end

initial begin
    #100 $finish();
end

endmodule