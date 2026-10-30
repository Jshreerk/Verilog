module binary_adder_4bit_tb;
    reg  [3:0] a, b;
    wire [4:0] y;

    binary_adder_4bit dut (
        .a(a),
        .b(b),
        .y(y)
    );

    initial begin
        $dumpfile("binary_adder_4bit.vcd");
        $dumpvars(0, binary_adder_4bit_tb);
    end

    initial begin
        $monitor("a=%b, b=%b | y=%b", a, b, y);

        a = 4'b0000; b = 4'b0000; #10;
        a = 4'b0001; b = 4'b0010; #10;
        a = 4'b0101; b = 4'b0011; #10;
        a = 4'b1111; b = 4'b0001; #10;
        $finish;
    end
endmodule