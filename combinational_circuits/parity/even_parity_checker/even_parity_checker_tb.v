module even_parity_checker_tb;
  reg [3:0]data;
  wire parity;
  even_parity_checker dut(
    .data(data),
    .parity(parity)
  );
  initial begin
    $dumpfile("even_parity_checker.vcd");
    $dumpvars(0, even_parity_checker_tb);
  end
  initial begin
    $monitor("data=%b|parity=%b",data,parity);
    data=4'b1010;#10;
    data=4'b1100;#10;
    data=4'b1110;#10;
    data=4'b0001;#10;
  end
endmodule