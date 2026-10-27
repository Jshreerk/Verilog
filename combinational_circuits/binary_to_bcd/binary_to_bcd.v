module binary_to_bcd (
  input [3:0]binary,
  output [7:0]BCD
);
  assign BCD=(binary<10)? {4'b0000,binary}:{4'b0001,(binary-4'd10)};
endmodule