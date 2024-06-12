module counter
(
    input wire CLK,
    input wire Reset,
    output wire [6:0] q
);

    wire [6:0] d_temp, q_temp;
    register register_circuit(CLK, Reset, d_temp, q_temp);
    addOne addOne_circuit(q_temp, q);
    assign q = q_temp;
endmodule