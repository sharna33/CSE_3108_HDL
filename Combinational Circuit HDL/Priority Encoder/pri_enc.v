module pri_enc
(
    input [3:0] Y,
    output [1:0] A
);

assign A[1] = (~Y[3] & Y[2]) | (Y[3]);
assign A[0] =(~Y[3] & ~Y[2] & Y[1]) | (Y[3]);
endmodule