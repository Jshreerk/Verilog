module bcd_to_excess3_tb;
  reg [3:0]bcd;
  wire [3:0]e;
  bcd_to_excess3 dut(
    .bcd(bcd),.e(e)
  );
  initial begin
    $dumpfile("bcd_to_excess3.vcd");
    $dumpvars(0,bcd_to_excess3_tb);
  end
  initial begin
    $monitor("bcd=%b|e=%b",bcd,e);
    bcd=8'b0000;#10;
    bcd=8'b1010;#10;
    bcd=8'b0110;#10;
    bcd=8'b0111;#10;
  end
endmodule