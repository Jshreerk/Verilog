module demux_1to4(input e, s0, s1, output y0, y1, y2, y3);
    wire w0, w1;
    not gate_1(w0, s0);
    not gate_2(w1, s1);
    and gate_3(y0, e, w0, w1);
    and gate_4(y1, e, w1, e);
    and gate_5(y2, s0, w1, e);
    and gate_6(y3, s0, s1, e);
endmodule