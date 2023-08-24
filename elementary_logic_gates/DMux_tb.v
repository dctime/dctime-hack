module DMux_tb;

wire o1, o2;
reg a = 0, sel = 0;
DMux dmux (.a(a), .sel(sel), .o1(o1), .o2(o2));

initial begin
    $dumpfile("DMux.vcd");
    $dumpvars(0, DMux_tb);
end

always begin
    #5 a = ~a;
end

always begin
    #20 sel = ~sel;
end

initial begin
    #100 $finish;
end
    
endmodule