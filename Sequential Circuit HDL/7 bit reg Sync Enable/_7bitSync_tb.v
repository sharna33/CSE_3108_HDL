`timescale 1ns/1ps

module _7bitSync_tb;
reg clk, rst, en;
reg [6:0] d;
wire [6:0] q;

_7bitSync uut(
  .clk(clk), .rst(rst), .en(en),
  .d(d),
  .q(q)
);

  always #5 clk = ~clk;

  initial begin
    $dumpfile("7bitSync_tb.vcd");
    $dumpvars(0, _7bitSync_tb);

    clk <= 0;
    rst <= 1;
    en <= 0;
    d <= 7'b0000_000;

    #10 rst <= 0; en <= 1;
    #10 d <= 7'b0000_001;
    #10 d <= 7'b0000_010;
    #10 d <= 7'b0000_011;
    #10 d <= 7'b0000_100;
    #10 d <= 7'b0000_101;
    #10 d <= 7'b0000_110;
    #10 d <= 7'b0000_111;
    #10 d <= 7'b0001_000;
    #10;
    $finish;
  end

  initial begin
    $monitor("clk=%b rst=%b en=%b d=%b q=%b", clk, rst, en, d, q);
  end

endmodule
