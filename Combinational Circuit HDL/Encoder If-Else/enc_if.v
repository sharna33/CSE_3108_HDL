module enc_if
(
    input [3:0] Y,
    output reg [1:0] A
);

always @(*)
    begin
        if(Y == 4'b0001)
            A = 2'b00;
        else if(Y == 4'b0010)
            A = 2'b01;
        else if(Y == 4'b0100)
            A = 2'b10;
        else if(Y == 4'b1000)
            A = 2'b11;
        else
            A = 2'b00;
    end
endmodule