module dec_case
(
    input [1:0] A,
    input E,
    output reg [3:0] Y
);

always @(*) 
begin
    case({E,A})
        3'b100: Y = 4'b0001;
        3'b101: Y = 4'b0010;
        3'b110: Y = 4'b0100;
        3'b111: Y = 4'b1000;
        default: Y = 4'b0000;
    endcase
end

endmodule