`timescale 1ns/1ps

module mux_tb;
    reg [3:0] I;
    reg [1:0] S;
    wire Y;

    mux_case uut
    (
        .I(I),
        .S(S),
        .Y(Y)
    );

    initial begin
        $dumpfile("mux_tb.vcd");
        $dumpvars(0, mux_tb);

        I = 4'b0000;
        S = 2'b00;
        #20;

        I = 4'b0001;
        S = 2'b00;
        #20;

        I = 4'b0010;
        S = 2'b01;
        #20;

        I = 4'b0100;
        S = 2'b10;
        #20;

        I = 4'b1000;
        S = 2'b11;
        #20;
        $finish;
    end

    initial begin
        $monitor("I=%b, S=%b, Y=%b", I, S, Y);
    end
endmodule