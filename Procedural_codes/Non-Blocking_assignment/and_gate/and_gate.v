module non_blocking_and;
  reg a,b,c;
  
  initial begin
    a=1;
    b=1;
    c<= a && b;
    
    #2;
    $display("c=%b",c);
    $finish;
  end
endmodule 