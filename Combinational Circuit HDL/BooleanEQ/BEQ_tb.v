`timescale 1ns/1ps

module BEQ_tb;

reg A;
reg B;
reg C;
reg D;
wire Z;

BEQ uut
(
    .A(A),
    .B(B),
    .C(C),
    .D(D),
    .Z(Z)
);

    initial begin
        $dumpfile("BEQ_tb.vcd");
        $dumpvars(0, BEQ_tb);
        A = 0;
        B = 0;
        C = 0;
        D = 0;
        #20 A = 0; C = 0; B = 0; D = 1;
        #20 A = 0; C = 0; B = 1; D = 0;
        #20 A = 0; C = 0; B = 1; D = 1; 
        #20 A = 0; C = 1; B = 0; D = 0;
        #20 A = 0; C = 1; B = 0; D = 1;
        #20 A = 0; C = 1; B = 1; D = 0;
        #20 A = 0; C = 1; B = 1; D = 1;
        #20 A = 1; C = 0; B = 0; D = 0;
        #20 A = 1; C = 0; B = 0; D = 1;
        #20 A = 1; C = 0; B = 1; D = 0;
        #20 A = 1; C = 0; B = 1; D = 1;
        #20 A = 1; C = 1; B = 0; D = 0; 
        #20 A = 1; C = 1; B = 0; D = 1;
        #20 A = 1; C = 1; B = 1; D = 0;
        #20 A = 1; C = 1; B = 1; D = 1;
        #20 $finish;
    end

    initial begin
        $monitor("A=%b, C=%b, B=%b, D=%b, Z=%b", A, C, B, D, Z);
    end
endmodule