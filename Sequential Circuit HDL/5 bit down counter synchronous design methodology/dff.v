// 2003009

module dff(
  input wire clk, set, en,
  input wire [4:0] i,
  output wire [4:0] o
);
  reg [4:0] o_reg;
  wire [4:0] o_next;
  always @(posedge clk, posedge set)
  begin
    if (set)
      o_reg <= 5'b1111;
    else if (en)
      o_reg <= o_next;
  end
  assign o_next = i;
  assign o = o_reg;

endmodule