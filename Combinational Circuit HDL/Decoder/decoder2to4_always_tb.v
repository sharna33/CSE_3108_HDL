`timescale 1ns/1ps

module decoder2to4_tb;

    reg [1:0] A;
    reg E;
    wire[3:0] Y;

    decoder2to4_always uut
    (
        .A(A),
        .E(E),
        .Y(Y)
    );

    initial begin
        $dumpfile("decoder2to4_always_tb.vcd");
        $dumpvars(0, decoder2to4_always_tb);

        A[1] = 0;
        A[0] = 0;
        E = 0;


        #20;
        E = 1;

        #20;
        A[0] = 1;

        #20;
        A[1] = 1;
        A[0] = 0;

        #20;
        A[1] = 1;
        A[0] = 1;

        #20;
    end

    initial begin
        $monitor("A=%b, E=%b, Y=%b", A, E, Y);
    end
endmodule