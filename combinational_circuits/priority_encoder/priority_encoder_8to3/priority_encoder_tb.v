module priority_encoder_8to3_tb;
  reg [7:0]d;
  wire [2:0]y;
  priority_encoder_8to3 dut(
    .d(d),
    .y(y)
  );
  initial begin
    $dumpfile("priority_encoder_8to3.vcd");
    $dumpvars(0,priority_encoder_8to3_tb);
  end
  initial begin
    $monitor("d=%b|y=%b",d,y);
    d=8'b00000000;#10;
    d=8'b00000010;#10;
    d=8'b10000000;#10;
  end
endmodule