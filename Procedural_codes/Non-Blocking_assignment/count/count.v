module non_blocking;
  reg [3:0] count;

  initial begin
    count = 0;
    count <= count + 1;
    #1;
    $display("Count=%d", count);
    $finish;
  end
endmodule