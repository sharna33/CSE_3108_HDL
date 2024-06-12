module Demux_case
(
    input I,
    input [1:0] S,
    output reg [3:0] Y
);

always @(*)
    begin
        case(S)
            2'b00: Y = {3'b000, I};
            2'b01: Y = {2'b00, I, 1'b0};
            2'b10: Y = {1'b0, I, 2'b00};
            2'b11: Y = {3'b000, 1'b0};
            default: Y = {3'b000, I};
        endcase
    end
endmodule