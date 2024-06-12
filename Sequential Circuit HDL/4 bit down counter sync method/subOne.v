module subOne(
  input wire [3:0] i,
  output wire [3:0] o
);
  assign o = i - 1;
endmodule