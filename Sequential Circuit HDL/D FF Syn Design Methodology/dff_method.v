module dff_method
(
    input wire clk,
    input wire reset,
    input wire en,
    input wire d,
    output reg q
);
    reg r_next, r_reg;
    always @(posedge clk or posedge reset)
    begin
        if (reset)
            r_reg <= 1'b0;
        else
            r_reg <= r_next;
    end

    always @(*)
    begin
        if (en)
            r_next = d;
        else
            r_next = r_reg;
    end

    always @(*)
    begin
        q = r_reg;
    end
endmodule