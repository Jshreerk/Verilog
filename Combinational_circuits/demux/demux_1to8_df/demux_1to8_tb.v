module demux_1to8_tb;
    reg s2,s1,s0;
    reg d;
    wire [7:0]y;

    demux_1to8 dut(
        .s2(s2),
        .s1(s1),
        .s0(s0),
        .d(d),
        .y(y)
    );
initial begin 
    $dumpfile("demux_1to8.vcd");
    $dumpvars(0, demux_1to8_tb);
end
initial begin 
    $monitor("s2=%b, s1=%b, s0=%b, d=%b | y=%b", s2, s1, s0, d, y);
    d=1;
    s2=0;s1=0;s0=0;#10;
    s2=0;s1=0;s0=1;#10;
    s2=0;s1=1;s0=0;#10;
    s2=0;s1=1;s0=1;#10;
    s2=1;s1=0;s0=0;#10;
    s2=1;s1=0;s0=1;#10;
    s2=1;s1=1;s0=0;#10;
    s2=1;s1=1;s0=1;#10;
    $finish;
end
endmodule