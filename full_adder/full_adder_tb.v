module full_adder_tb;
  reg a,b,cin;
  wire sum,carry;

  full_adder dut(a,b,cin,sum,carry);

  initial begin
    $monitor("a=%b,b=%d,cin=%d,sum=%d,carry=%d",a,b,cin,sum,carry);
    a=0;b=0;cin=0;
    #5;
     a=1;b=0;cin=0;
  end

endmodule
