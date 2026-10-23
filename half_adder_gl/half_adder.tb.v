module half_adder_tb;
    reg a, b;
    wire sum, cout;
    half_adder dut(
        .a(a),.b(b),.sum(sum),.cout(cout)
    );
    initial begin
    $dumpfile("half_adder.vcd");
    $dumpvars(0,half_adder_tb);
  end
    initial begin
    $monitor("a=%b, b=%b | sum=%b, cout=%b",a,b,sum,cout);
    a=0;b=0;#10;
    a=0;b=1;#10;
    a=1;b=0;#10;
    a=1;b=1;#10;
    end
endmodule