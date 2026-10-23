module logic_gates_tb;
    reg a, b;
    wire y;

    logic_gates dut(
        .a(a),
        .b(b),
        .y(y)
    );
    initial begin
        $dumpfile("logic_gates.vcd");
        $dumpvars(0, logic_gates_tb);
    end
    initial begin
        $monitor("a=%b, b=%b | y=%b", a, b);
        a=0; b=0; #10;
        a=0; b=1; #10;
        a=1; b=0; #10;
        a=1; b=1; #10;
    end
endmodule