`timescale 1ns/1ps

module dec_if_tb;
    reg [2:0] X;
    wire [7:0] D;

    dec_case uut(
        .X(X),
        .D(D)
    );

    initial begin
        $dumpfile("dec_if_tb.vcd");
        $dumpvars(0, dec_if_tb);

        X = 3'b000;
        #20;

        X = 3'b001;
        #20;

        X = 3'b010;
        #20;

        X = 3'b011;
        #20;

        X = 3'b100;
        #20;

        X = 3'b101;
        #20;

        X = 3'b110;
        #20;

        X = 3'b111;
        #20;

        $finish;
    end

    initial begin
        $monitor("X=%b, D=%b", X, D);
    end
endmodule


