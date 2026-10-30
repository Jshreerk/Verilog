module blocking_assign;
    reg a, b;

    initial begin
    a = 1'b1;
    b = 1'b0;
    $display("a=%d, b=%d", a, b);
    end
endmodule
