module priority_encoder_4to2_tb;
  reg [3:0]d;
  wire [1:0]y;
  priority_encoder_4to2 dut(
    .d(d),
    .y(y)
  );
  initial begin
    $dumpfile("priority_encoder_4to2.vcd");
    $dumpvars(0,priority_encoder_4to2_tb);
  end
  initial begin
    $monitor("d=%b|y=%b",d,y);
    d=4'b0011;#10;
    d=4'b1111;#10;
    d=4'b0000;#10;
    d=4'b0010;#10;
  end
endmodule