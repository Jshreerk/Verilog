module half_subtractor(input a, b, output diff, borrow);
    wire x;
    assign diff=a^b;
    assign x=~a;
    assign borrow=x&b;
endmodule