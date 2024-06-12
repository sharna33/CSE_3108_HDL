// 2003009

module _5bitDownMeth(
  input wire clk, set, en, 
  output wire [4:0] o
);
  wire [4:0] i_temp, o_temp;

  dff uut_dff(
    .clk(clk), .set(set), .en(en),
    .i(i_temp),
    .o(o_temp)
  );
  subOne uut_subOne(
    .i(o_temp),
    .o(i_temp)
  );
  assign o = o_temp;

endmodule