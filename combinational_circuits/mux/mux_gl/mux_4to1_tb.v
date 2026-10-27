module mux4to1_tb;
  reg i0, i1, i2, i3, s0, s1;
  wire y;

  mux4to1 dut(
    .i0(i0),
    .i1(i1),
    .i2(i2),
    .i3(i3),
    .s0(s0),
    .s1(s1),
    .y(y)
  );
initial begin
    $dumpfile("mux4to1.vcd");
    $dumpvars(0,mux4to1_tb);
  end
  initial begin
    $monitor("Time=%t | s1=%b s0=%b | i=%b%b%b%b | y=%b", $time, s1, s0, i3, i2, i1, i0, y);
    i0=1; i1=0; i2=1; i3=0;
    s1=0; s0=0; #5;
    s1=0; s0=1; #5;
    s1=1; s0=0; #5;
    s1=1; s0=1; #5;
    $finish;
  end
endmodule