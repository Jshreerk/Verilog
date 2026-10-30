module segment7_to_bcd_tb;
    reg [6:0]seg;
    wire [3:0]bcd;

    segment7_to_bcd dut(
        .seg(seg),
        .bcd(bcd)
    );

    initial begin 
        $dumpfile("segment7_to_bcd.vcd");
        $dumpvars(0, segment7_to_bcd_tb);
    end 
    initial begin
        $monitor("seg=%b | bcd=%b", seg, bcd);
        seg=7'b1011011;#10;
        seg=7'b1111011;#10;
        $finish;
    end
endmodule
