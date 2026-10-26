module comparator_tb;
    reg [1:0]a;
    reg [1:0]b;
    wire y;

    comparator dut (
        .a(a),
        .b(b),
        .y(y)
    );

    initial begin
        $dumpfile("comparator.vcd");
        $dumpvars(0, comparator_tb);
    end 
    initial begin
        $monitor("a=%b, b=%b | y=%b", a, b, y);
        a=0;b=0;#10;
        a=0;b=1;#10;
        a=1;b=0;#10;
        a=1;b=1;#10;
        $finish;
    end
endmodule