module _4bitDown(
  input wire clk, set, // wire = physical connection, reg = memory element
  output wire [3:0] o
);
  wire [3:0] i_temp, o_temp;
  dff uut_dff(
    .clk(clk), .set(set),
    .i(i_temp),
    .o(o_temp)
  );
  subOne uut_subOne(
    // the INPUT of 4bit is passed as OUTPUT of subOne
    // the OUTPUT of 4bit is passed as INPUT of subOne
    .i(o_temp),
    .o(i_temp)
  );
  assign o = o_temp;

endmodule