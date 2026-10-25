module demux_1to4_tb;
    reg e, s0, s1;
    wire y0, y1, y2, y3;

    demux_1to4 dut(
        .e(e),
        .s0(s0),
        .s1(s1),
        .y0(y0),
        .y1(y1),
        .y2(y2),
        .y3(y3)
    );
    initial begin
    $dumpfile("demux_1to4.vcd");
    $dumpvars(0, demux_1to4_tb);
    end
    initial begin
    $monitor("e=%b, s0=%b, s1=%b | y0=%b, y1=%b, y3=%b", e, s0, s1, y0, y1, y2, y3);
    e=1;s0=0;s1=0;#10;
    e=1;s0=0;s1=1;#10;
    e=1;s0=1;s1=0;#10;
    e=1;s0=1;s1=1;#10;
    $finish;
    end
endmodule