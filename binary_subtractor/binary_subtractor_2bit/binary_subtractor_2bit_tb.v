module binary_subtractor_2bit_tb;
    reg [1:0]a, b;
    wire [2:0]y;

    binary_subtractor_2bit dut (
        .a(a),
        .b(b),
        .y(y)
    );

    initial begin
        $dumpfile("binary_subtractor_2bit.vcd");
        $dumpvars(0, binary_subtractor_2bit_tb);
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