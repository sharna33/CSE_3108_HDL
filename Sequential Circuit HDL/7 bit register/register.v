module register(
  input wire clk, rst,
  input wire [6:0] i,
  output reg [6:0] o
);
  always @(posedge clk, posedge rst) 
  begin
    if (rst)
      o <= 7'b0000_000;
    else
      o <= i;
  end

endmodule