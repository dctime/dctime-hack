module DMux4Way_tb;

reg [1:0] sel = 2'b00;
reg a = 0, b = 0, c = 0, d = 0;
wire o;

DMux4Way dmux4way (sel, a, b, c, d, o);

initial begin
    $dumpfile("DMux4Way.vcd");
    $dumpvars(0, DMux4Way_tb);
    #1000 $finish;
end

always begin
    #16
    if (sel == 2'b11) begin
        sel = 2'b00;
    end else begin
        sel = sel + 1;
    end
end

always begin
    #1
    a = ~a; 
end

always begin
    #2
    b = ~b;
end

always begin
    #4 
    c = ~c;
end

always begin
    #8
    d = ~d;
    
end
    
endmodule