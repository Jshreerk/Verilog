module full_adder(input a, b, cin, output cout, carry);
    wire x, y, z;
    assign x=a^b;
    assign y=a&b;
    assign cout=x^cin;
    assign z=x&cin;
    assign carry=z|y;
endmodule