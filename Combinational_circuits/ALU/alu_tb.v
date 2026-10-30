module alu_tb;
    reg [3:0]a, b;
    wire [7:0]y;

    alu dut(
        .a(a),
        .b(b),
        .y(y)
    );

    initial begin
        $monitor("a=%d, b=%d | y=%d", a, b, y);
        a=10'd2;b=10'd2;#10;
        $finish;
    end
endmodule