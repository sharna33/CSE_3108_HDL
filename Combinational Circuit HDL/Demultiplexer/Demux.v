module Demux
(
    input I,
    input [1:0] S,
    output [3:0] Y
);

assign Y[3] = S[1] & S[0] & I;
assign Y[2] = S[1] & ~S[0] & I;
assign Y[1] = ~S[1] & S[0] & I;
assign Y[0] = ~S[1] & ~S[0] & I;

endmodule