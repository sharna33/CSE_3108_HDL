`timescale 1ns/1ps

module operators_tb;

    reg [3:0] A, B, C, D;
    wire [3:0] Arithmetic, Shift, Relational, Equality, Bitwise, Reduction, Logical, Concatenation, Conditional;

    operators uut
    (
        .A(A),
        .B(B),
        .C(C),
        .D(D),
        .Arithmetic(Arithmetic),
        .Shift(Shift),
        .Relational(Relational),
        .Equality(Equality),
        .Bitwise(Bitwise),
        .Reduction(Reduction),
        .Logical(Logical),
        .Concatenation(Concatenation),
        .Conditional(Conditional)
    );

    initial begin
        $dumpfile("operators_tb.vcd");
        $dumpvars(0, operators_tb);

        A = 4'b1100;
        B = 4'b0110;
        C = 4'b0010;
        D = 4'b1100;
        #20;
    end

    initial begin
        $monitor("A=%b, B=%b, C=%b, D=%b, Arithmetic=%b, Shift=%b, Relational=%b, Equality=%b, Bitwise=%b, Reduction=%b, Logical=%b, Concatenation=%b, Conditional=%b", A, B, C, D, Arithmetic, Shift, Relational, Equality, Bitwise, Reduction, Logical, Concatenation, Conditional);
    end 
endmodule