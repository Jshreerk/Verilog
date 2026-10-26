module incrementer_tb;
    reg a;
    wire y;

    incrementer dut(
        .a(a),
        .y(y)
    );
    initial begin 
        $dumpfile("incrementer.vcd");
        $dumpvars(0, incrementer_tb);
    end
    initial begin
        $monitor("a=%b | y=%b", a, y);
        a=0;#10;
        a=1;#10;
        $finish;
    end
endmodule