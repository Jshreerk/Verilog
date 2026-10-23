module full_adder_tb;
  reg a,b,cin;
  wire sum,carry;

  full_adder dut(a,b,cin,sum,carry);

  initial begin
    $dumpfile("full_adder.vcd");
    $dumpvars(0,full_adder_tb);
  end

  initial begin
    $monitor("a=%b,b=%d,cin=%d,sum=%d,carry=%d",a,b,cin,sum,carry);
    a=0;b=0;cin=0;
    #5;
     a=1;b=0;cin=0;
    #5;
     a=1;b=1;cin=0;
     #5;
     a=1;b=1;cin=1;
     #10;
     $finish;
  end

endmodule
