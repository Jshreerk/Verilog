module binary_to_bcd_tb;
  reg [3:0]binary;
  wire [7:0]BCD;
  binary_to_bcd dut(
    .binary(binary),.BCD(BCD)
  );
initial begin
    $dumpfile("binary_to_bcd.vcd");
    $dumpvars(0,binary_to_bcd_tb);
end
initial begin 
    $monitor("binary=%b|BCD=%b",binary,BCD);
    binary=4'b0000;#3;
    binary=4'b1010;#3;
    binary=4'b1010;#3;
    binary=4'b1100;#3;
    binary=4'b1111;#3;
end
endmodule