module xor_nb;
reg [3:0] a, b, c;

initial begin
    a = 4'b1010;
    b = 4'b1100;

    c <= a ^ b;
    #1;
    $display("a = %b, b = %b, c = %b", a, b, c);
end
endmodule