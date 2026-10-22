module half_subtractor(input a, b, output diff, borrow);
 wire c;
 xor gate1(diff, a, b);
 not gate2(c, a);
 and gate3(borrow, c, b);
endmodule