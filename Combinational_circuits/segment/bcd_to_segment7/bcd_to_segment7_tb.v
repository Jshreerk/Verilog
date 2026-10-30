module bcd_to_segment7_tb;
  reg [3:0]bcd;
  wire a,b,c,d,e,f,g;
  bcd_to_segment7 dut(
    .bcd(bcd),
    .a(a),
    .b(b),
    .c(c),
    .d(d),
    .e(e),
    .f(f),
    .g(g)
  );
  initial begin
    $dumpfile("bcd_to_segment7.vcd");
    $dumpvars(0,bcd_to_segment7_tb);
  end
  initial begin
    $monitor("bcd=%b|a=%b,b=%b,c=%b,d=%b,e=%b,f=%b,g=%b",bcd,a,b,c,d,e,f,g);
    bcd=4'b0000;#10;
    bcd=4'b0101;#10;
  end
endmodule