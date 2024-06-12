module register
(
    input wire clk,
    input wire reset,
    input wire [6:0] d,
    output wire [6:0] q
);

    reg [6:0] q_reg;
    wire [6:0] q_next;

    always @(posedge clk, posedge reset)
    begin
        if (reset)
            q_reg <= 7'b0000_000;
        else
            q_reg <= q_next;
    end

    assign q_next = d;
    assign q = q_reg;

endmodule