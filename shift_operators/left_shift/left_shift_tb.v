module left_shift_tb;
    reg  [3:0] in;
    wire [3:0] out;

    left_shift dut (
        .in(in),
        .out(out)
    );
    initial begin 
        $dumpfile("left_shift.vcd");
        $dumpvars(0, left_shift_tb);
    end 

    initial begin
        $monitor("in=%b out=%b", in, out);

        in = 4'b0000; #10;
        in = 4'b0001; #10;
        in = 4'b0101; #10;
        in = 4'b1000; #10;
        in = 4'b1111; #10;

        $finish;
    end
endmodule