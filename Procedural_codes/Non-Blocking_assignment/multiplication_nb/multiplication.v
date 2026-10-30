module non_blocking_multiplication;
  reg [3:0] a;

  initial begin
    a = 4'b0011;
    a <= a * 2;

    #1;
    $display("a=%b", a);
    $finish;
end
endmodule