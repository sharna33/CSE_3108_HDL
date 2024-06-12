module BEQ
(
    input A, B, C, D,
    output Z
);

wire p, q;
and(p, A, C);
and(q, B, D);
or(Z, p, q);

endmodule