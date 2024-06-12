module decoder2to4_always
(
    input [1:0] A,
    input E,
    output [3:0] Y
);

always @(*)
    begin
    if(E == 1'b0)
        Y = 4'b0000;
    else if(A == 2'b00)
        Y = 4'b0001;
    else if(A == 2'b01)
        Y = 4'b0010;
    else if(A == 2'b10)
        Y = 4'b0100;
    else if(A == 2'b11)
        Y = 4'b1000;
    end

endmodule