`timescale 1ns/1ns

module d_ff_tb;
    reg clk;
    reg d;
    wire q;

    d_ff uut
    (
        .clk(clk),
        .d(d),
        .q(q)
    );
    
    always begin
        clk = ~clk;
        #10;
    end

    initial begin
        $dumpfile("d_ff_tb.vcd");
        $dumpvars(0, d_ff_tb);

        clk <= 1;
        d <= 0;
        #20;

        clk <= 0;
        d <= 1;
        #20;

        $finish;

    end

    initial begin
        $monitor("clk = %b, d = %b, q = %b", clk, d, q);
    end
endmodule

 