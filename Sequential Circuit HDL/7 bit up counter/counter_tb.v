`timescale 1ns/1ps

module counter_tb;
    reg CLK;
    reg Reset;
    wire [6:0] q;

    counter counter_circuit(CLK, Reset, q);

    always begin
        CLK = ~CLK;
        #10;
    end

    initial begin
        $dumpfile("counter_tb.vcd");
        $dumpvars(0, counter_tb);

        CLK <= 1;
        Reset <= 1;
        #20;
        CLK <= 0;
        Reset <= 0;
        #20;
        #20;
        #20;
        #20;
        $finish;
    end

    initial begin
        $monitor("CLK=%b, Reset=%b, q=%b", CLK, Reset, q);
    end
endmodule