module dec_if
(
    input [2:0] X,
    output reg [7:0] D
);

always @(*)
    begin
        if(X == 3'b000)
            D = 8'b00000001;
        else if(X == 3'b001)
            D = 8'b00000010;
        else if(X == 3'b010)
            D = 8'b00000100;
        else if(X == 3'b011)
            D = 8'b00001000;
        else if(X == 3'b100)
            D = 8'b00010000;
        else if(X == 3'b101)
            D = 8'b00100000;
        else if(X == 3'b110)
            D = 8'b01000000;
        else if(X == 3'b111)
            D = 8'b10000000;
        else
            D = 8'b00000001;
    end

endmodule