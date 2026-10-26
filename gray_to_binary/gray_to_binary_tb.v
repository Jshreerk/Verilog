module gray_to_binary_tb;
    reg [3:0]g;
    wire [3:0]b;

    gray_to_binary dut (
        .g(g),
        .b(b)
    );
    initial begin
        $dumpfile("gray_to_binary.vcd");
        $dumpvars(0, gray_to_binary_tb);
    end
    initial begin
        $monitor("g=%b | b=%b", g, b);
        g=4'b0010;#10;
    end
endmodule
