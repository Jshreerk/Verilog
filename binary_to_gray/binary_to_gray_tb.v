module binary_to_gray_tb;
    reg [3:0]b;
    wire [3:0]g;

    binary_to_gray dut (
        .b(b),
        .g(g)
    );
    initial begin
        $dumpfile("binary_to_gray.vcd");
        $dumpvars(0, binary_to_gray_tb);
    end
    initial begin
        $monitor("b=%b | g=%b", b, g);
        b=4'b0011;10;
    end
endmodule
