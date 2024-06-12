`timescale 1ns / 1ps

module reg_tb;
  reg clk, rst;
  reg [6:0] i;
  wire [6:0] o;

  register uut (
    .clk(clk),
    .rst(rst),
    .i(i),
    .o(o)
  );

  always begin
    clk = ~clk;
    #5;
  end

  initial begin
    $dumpfile("reg_tb.vcd");
    $dumpvars(0, reg_tb);

    clk <= 0;
    rst <= 1;
    i <= 7'b0000_000;
    #10 rst <= 0;
    #10 i <= 7'b0000_111;
    #10 $finish;
  end

  initial begin
    $monitor("clk=%b, rst=%b, i=%7b, o=%7b", clk, rst, i, o);
  end

endmodule