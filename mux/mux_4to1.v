module mux4to1(input i0, i1, i2, i3, s0, s1, output y);
  wire ns0, ns1, w0, w1, w2, w3;
  not g1(ns0, s0);
  not g2(ns1, s1);
  and g3(w0, i0, ns1, ns0);
  and g4(w1, i1, ns1, s0);
  and g5(w2, i2, s1, ns0);
  and g6(w3, i3, s1, s0);
  or  g7(y, w0, w1, w2, w3);
endmodule