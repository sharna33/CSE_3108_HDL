`timescale 1ns/1ps

module Demux_tb;
    reg I;
    reg [1:0] S;
    wire [3:0] Y;

    Demux_case uut(
        .I(I),
        .S(S),
        .Y(Y)
    );
    
    initial begin
        $dumpfile("Demux_tb.vcd");
        $dumpvars(0, Demux_tb);
        
        S = 2'b00;
        I = 1'b1;
        #20;

        S = 2'b01;
        I = 1'b1;
        #20;

        S = 2'b10;
        I = 1'b1;
        #20;

        S = 2'b11;
        I = 1'b0;
        #20;
        $finish;
    end

    initial begin
        $monitor("S=%b, I=%b, Y=%b", S, I, Y);
    end
endmodule