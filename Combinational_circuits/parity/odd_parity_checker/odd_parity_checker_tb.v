module odd_parity_checker_tb;
    reg  [3:0] data;
    wire parity;

    odd_parity_checker dut (
        .data(data),
        .parity(parity)
    );
    initial begin 
        $dumpfile("odd_parity_checker.vcd");
        $dumpvars(0, odd_parity_checker_tb);
    end
    initial begin
        $monitor("time=%0t data=%b parity=%b", $time, data, parity);

        data = 4'b0000; #10;
        data = 4'b0001; #10;
        data = 4'b0011; #10;
        data = 4'b0111; #10;
        data = 4'b1111; #10;

        $finish;
    end
endmodule