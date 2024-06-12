module comb
(
    input D, X, A,
    output L
);

assign L = (~D)&(~X)&A | (~D)&X&A | D&(~X)&(~A) | D&X&(~A) | D&X&A; 

endmodule