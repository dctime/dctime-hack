module Mux4Way16_tb;

    reg [1:0] sel = 2'b00;
    reg [15:0] in1 = 16'hdadf;
    reg [15:0] in2 = 16'haaaf;
    reg [15:0] in3 = 16'hbdef;
    reg [15:0] in4 = 16'h1245;
    wire [15:0] out;

    Mux4Way16 mux4way16(.sel(sel), .in1(in1), .in2(in2), .in3(in3), .in4(in4), .out(out));

    initial begin
        $dumpfile("Mux4Way16.vcd");
        $dumpvars(0, Mux4Way16_tb, sel);
        #1000 $finish;
    end

    always begin
        # 1
        if (sel == 2'b11) begin
            sel = 2'b00;
        end else begin
            sel = sel + 1;
        end
    end
    
endmodule