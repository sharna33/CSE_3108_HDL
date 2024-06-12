`timescale 1ns/1ps

module pri_enc_always_tb;
    reg [3:0] Y;
    wire [1:0] A;

    pri_enc_always uut(
        .Y(Y),
        .A(A)
    );

    initial begin
        $dumpfile("pri_enc_always_tb.vcd");
        $dumpvars(0, pri_enc_always_tb);

        Y = 4'b0000;
        #10;
        Y = 4'b0001;
        #10;
        Y = 4'b0010;
        #10;
        Y = 4'b0011;
        #10;
        Y = 4'b0100;
        #10;
        Y = 4'b0101;
        #10;
        Y = 4'b0110;
        #10;
        Y = 4'b0111;
        #10;
        Y = 4'b1000;
        #10;
        Y = 4'b1001;
        #10;
        Y = 4'b1010;
        #10;
        Y = 4'b1011;
        #10;
        Y = 4'b1100;
        #10;
        Y = 4'b1101;
        #10;
        Y = 4'b1110;
        #10;
        Y = 4'b1111;
        #10;
        $finish;
    end

    initial begin
        $monitor("Y=%b, A=%b", Y, A);
    end
endmodule
