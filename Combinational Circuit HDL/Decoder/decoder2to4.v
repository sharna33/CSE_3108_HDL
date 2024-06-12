module decoder2to4
(
    input [1:0] A,
    input E,
    output [3:0] Y
);

    assign Y[3] = E & A[1] & A[0];
    assign Y[2] = E & A[1] & ~A[0];
    assign Y[1] = E & ~A[1] & A[0];
    assign Y[0] = E & ~A[1] & ~A[0];
    
endmodule