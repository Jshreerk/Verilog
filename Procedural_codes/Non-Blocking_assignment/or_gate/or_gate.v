module or_gate_nonblocking;
  reg a,b,y;

  initial begin
    a = 0;
    b = 1;

    y <= a | b;

    #1; 
    $display("y=%b", y);
    $finish;
  end
endmodule