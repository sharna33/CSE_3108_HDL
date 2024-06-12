module pri_enc_always
(
    input [3:0] Y,
    output reg [1:0] A
);
    always @(*) begin
        case(Y)
            4'b0000: A = 2'b00;
            4'b0001: A = 2'b01;
            4'b0010: A = 2'b10;
            4'b0011: A = 2'b11;
            4'b0100: A = 2'b00;
            4'b0101: A = 2'b01;
            4'b0110: A = 2'b10;
            4'b0111: A = 2'b11;
            4'b1000: A = 2'b00;
            4'b1001: A = 2'b01;
            4'b1010: A = 2'b10;
            4'b1011: A = 2'b11;
            4'b1100: A = 2'b00;
            4'b1101: A = 2'b01;
            4'b1110: A = 2'b10;
            4'b1111: A = 2'b11;
            default: A = 2'b00;
        endcase
    end
endmodule