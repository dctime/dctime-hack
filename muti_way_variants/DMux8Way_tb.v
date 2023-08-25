module DMux8Way_tb;

reg [2:0] sel = 3'b000;
reg a = 0, b = 0, c = 0, d = 0, e = 0, f = 0, g = 0, h = 0;
wire o;

DMux4Way dmux4way (sel, a, b, c, d, e, f, g, h, o);

initial begin
    $dumpfile("DMux8Way.vcd");
    $dumpvars(0, DMux8Way_tb);
    #2000 $finish;
end

always begin
    #256
    if (sel == 3'b111) begin
        sel = 3'b000;
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

always begin
    #16
    e = ~e;
end

always begin
    #32 f = ~f;
end

always begin
    #64 g = ~g;
end

always begin
    #128 h = ~h;
end
endmodule