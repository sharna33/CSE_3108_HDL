`timescale 1ns/1ps

module comb_tb;

    reg D, X, A;
    wire L;

    comb uut
    (
        .D(D),
        .X(X),
        .A(A),
        .L(L)
    );
    
    initial begin
        $dumpfile("comb_tb.vcd");
        $dumpvars(0, comb_tb);
        
        D = 0; X = 0; A = 0;
        #10;
        
        D = 0; X = 0; A = 1;
        #10;
        
        D = 0; X = 1; A = 0;
        #10;
        
        D = 0; X = 1; A = 1;
        #10;
        
        D = 1; X = 0; A = 0;
        #10;
        
        D = 1; X = 0; A = 1;    
        #10;
        
        D = 1; X = 1; A = 0;
        #10;
        
        D = 1; X = 1; A = 1;
        #10;
    end
    
    initial begin
        $monitor("D=%b, X=%b, A=%b, L=%b", D, X, A, L);
        
    end
endmodule