`include "ALU.v"

module ALU_tb;

    reg [15:0] x = 16'h0000, y = 16'h1111;
    reg zx = 0, nx = 0, zy = 0, ny = 0, f = 0, no = 0;
    wire [15:0] out;
    wire zr, ng;

    ALU alu (.x(x), .y(y), .zx(zx), .nx(nx), .zy(zy), .ny(ny), .f(f), .no(no), .out(out), .zr(zr), .ng(ng));

    initial begin
        $dumpfile("ALU.vcd");
        $dumpvars(0, ALU_tb);
        #1000 $finish;
    end

    always begin
        #1
        zx = ~zx;
    end

    always begin
        #2
        nx = ~nx;
    end

    always begin
        #4
        zy = ~zy;
    end
    always begin
        #8
        ny = ~ny;
    end
    always begin
        #16
        f = ~f;
    end
    always begin
        #32
        no = ~no;
    end



    
endmodule