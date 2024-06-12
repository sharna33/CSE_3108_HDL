`timescale 1ns/1ps

module dec_case_tb;
    reg [1:0] A;
    reg E;
    wire [3:0] Y;

    dec_case uut
    (
        .A(A),
        .E(E),
        .Y(Y)
    );

    initial begin
        $dumpfile("dec_case_tb.vcd");
        $dumpvars(0, dec_case_tb);

        A[1] = 0;
        A[0] = 0;
        E = 0;

        #20;
        E = 1;

        #20;
        A[0] = 1;

        #20;
        A[1] = 1;

        #20;
        A[0] = 0;

        #20;

    end

    initial begin
        $monitor("A=%b, E=%b, Y=%b", A, E, Y);
    end
endmodule
