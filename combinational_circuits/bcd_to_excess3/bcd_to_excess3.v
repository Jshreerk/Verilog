module bcd_to_excess3(
  input [3:0]bcd,
  output [3:0]e
);
  assign e=bcd+4'b0011;
endmodule