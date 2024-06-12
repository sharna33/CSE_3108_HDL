module Demux_if
(
    input I,
    input [1:0] S,
    output reg [3:0] Y
);

always @(*)
    begin
        if(S == 2'b00)
            Y = {3'b000, I};
        else if(S == 2'b01)
            Y = {2'b00, I, 1'b0};
        else if(S == 2'b10)
            Y = {1'b0, I, 2'b00};
        else if(S == 2'b11)
            Y = {3'b000, 1'b0};
        else
            Y = {3'b000, I};
    end

endmodule