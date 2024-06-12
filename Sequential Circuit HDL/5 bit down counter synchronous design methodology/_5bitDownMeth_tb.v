// 2003009

`timescale 1ns/1ps
module _5bitDownMeth_tb;
reg clk, set, en;
wire [4:0] o;

_5bitDownMeth uut(
  .clk(clk), .set(set), .en(en),
  .o(o)
);

always begin
  clk = ~clk;
  #5;
end

  initial begin
    $dumpfile("_5bitDownMeth_tb.vcd");
    $dumpvars(0, _5bitDownMeth_tb);

    clk <= 0;
    set <= 1;
    en <= 0;
    #10;

    en <= 1;
    set <= 0;
    #150;
    $finish;
  end

  initial begin
    $monitor($time, " clk=%b, set=%b, en=%b, o=%b", clk, set, en, o);
  end

endmodule
