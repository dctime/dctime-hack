module Mux8Way16_tb;

    reg [7:0] [15:0] in;
    reg [2:0] sel = 0;
    wire [15:0] out;

    Mux8Way16 mux8way16 (in, sel, out);

    initial begin
        in[0] = 16'haabb;
        in[1] = 16'hccdd;
        in[2] = 16'h1122;
        in[3] = 16'h3344;
        in[4] = 16'h5566;
        in[5] = 16'h7788;
        in[6] = 16'h9900;
        in[7] = 16'h0000;
        
        $dumpfile("Mux8Way16.vcd");
        $dumpvars(0, Mux8Way16_tb);
        #1000 $finish;
    end

    always begin
        #1 if (sel == 3'b111) begin
            sel = 0;
        end else begin
            sel = sel + 1;
        end
        
    end
    
endmodule