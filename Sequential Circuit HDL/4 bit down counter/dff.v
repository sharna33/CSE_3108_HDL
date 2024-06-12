module dff(
  input wire clk, set,
  input wire [3:0] i,
  output reg [3:0] o
);
  always @(posedge clk, posedge set)
  begin
    if (set)
      o <= 4'b1111;
    else
      o <= i;
  end
endmodule