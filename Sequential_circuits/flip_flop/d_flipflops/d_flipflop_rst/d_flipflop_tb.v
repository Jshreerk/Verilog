module d_flipflop_rst_tb;
    reg clk, rst, a;
    wire y;

    d_flipflop_rst dut(
        .clk(clk),
        .rst(rst),
        .a(a),
        .y(y)
    );

    initial clk = 0;
    always #5 clk = ~clk;

    initial begin
        $dumpfile("d_flipflop.vcd");
        $dumpvars(0, d_flipflop_rst_tb);
    end

    initial begin 
        $monitor("clk=%b, rst=%b, a=%b | y=%b", clk, rst, a, y);
        rst=1;clk=1;a=1;#10;
        rst=0;clk=1;a=1;#10;
        rst=0;clk=1;a=1;#10;
        $finish;
    end
endmodule