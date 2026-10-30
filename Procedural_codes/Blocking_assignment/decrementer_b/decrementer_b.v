module blocking;
  reg [3:0] a;
  initial begin
    a = 1;
    a = a - 1;
    $display("a=%d", a);
    $finish;
  end
endmodule