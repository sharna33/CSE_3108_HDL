`timescale 1ns/1ps

module comparator_tb;
    reg x, y;
    wire z;

    comparator uut
    (
        .x(x),
        .y(y),
        .z(z)
    );

    initial begin
        $dumpfile("comparator_tb.vcd");
        $dumpvars(0, comparator_tb);
        x = 0;
        y = 0;
        #10 x = 0; y = 1;
        #10 x = 1; y = 0;
        #10 x = 1; y = 1;
        #10 $finish;
    end

    initial begin
        $monitor("x=%b, y=%b, z=%b", x, y, z);
    end

endmodule

