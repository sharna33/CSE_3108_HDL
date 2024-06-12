`timescale 1ns / 1ps

module register_tb;
  reg clk, reset;
  reg [6:0] d;
  wire [6:0] q;

  register uut (
    .clk(clk),
    .reset(reset),
    .d(d),
    .q(q)
  );

  always begin
    clk = ~clk;
    #10;
  end

  initial begin
    $dumpfile("register_tb.vcd");
    $dumpvars(0, register_tb);

    clk <= 0;
    reset <= 1;
    d <= 7'b0000_000;
    #10 reset <= 0;
    #10 d <= 7'b0000_111;
    #10 $finish;
  end

  initial begin
    $monitor("clk=%b, reset=%b, d=%7b, q=%7b", clk, reset, d, q);
  end

endmodule