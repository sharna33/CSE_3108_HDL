`timescale 1ns/1ps

module dec_tb;
    reg x,y,z;
    wire [7:0] D;

    dec uut(
        .x(x),
        .y(y),
        .z(z),
        .D(D)
    );

    initial begin
        $dumpfile("dec_tb.vcd");
        $dumpvars(0, dec_tb);
        
        x = 1'b0;
        y = 1'b0;
        z = 1'b0;
        #20;

        x = 1'b0;
        y = 1'b0;
        z = 1'b1;
        #20;

        x = 1'b0;
        y = 1'b1;
        z = 1'b0;
        #20;

        x = 1'b0;
        y = 1'b1;
        z = 1'b1;
        #20;

        x = 1'b1;
        y = 1'b0;
        z = 1'b0;
        #20;

        x = 1'b1;
        y = 1'b0;
        z = 1'b1;
        #20;

        x = 1'b1;
        y = 1'b1;
        z = 1'b0;
        #20;

        x = 1'b1;
        y = 1'b1;
        z = 1'b1;
        #20;
        $finish;
    end

    initial begin
        $monitor("x=%b, y=%b, z=%b, D=%b", x, y, z, D);
    end
endmodule