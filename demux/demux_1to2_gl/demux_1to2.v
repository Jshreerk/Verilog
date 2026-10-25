module demux_1to2(input e, s0, output y0, y1);
    wire w0;
    not gate_1(w0, s0);
    and gate_2(y0, w0, e);
    and gate_3(y1, s0, e);
endmodule