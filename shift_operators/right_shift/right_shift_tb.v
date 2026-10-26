module tb_right_shift;
    reg  [3:0] a;
    wire [3:0] y;

    right_shift dut (
        .a(a),
        .y(y)
    );

    initial begin
        $monitor("a=%b y=%b", $time, a, y);

        a = 4'b0000; #10;
        a = 4'b0001; #10;
        a = 4'b1010; #10;
        a = 4'b1111; #10;
        a = 4'b1000; #10;

        #10; $finish;
    end
endmodule