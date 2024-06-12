// 7 bit Register with synchronous enable input
module _7bitSync(
  input wire clk, rst, en,
  input wire [6:0] d,
  output reg [6:0] q
);
  always @(posedge clk, posedge rst)
    begin
      if (rst)
        q <= 7'b0000_000;
      else if (en)
        q <= d;
    end

endmodule