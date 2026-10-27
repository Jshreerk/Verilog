module tb_parity_generator;
    reg  [3:0] data;
    wire parity;

    parity_generator dut (
        .data(data),
        .parity(parity)
    );

    initial begin 
        $dumpfile("waves/dump.vcd");
        $dumpvars(0,tb_parity_generator);
    end

    initial begin
        $monitor("time=%0t data=%b parity=%b", $time, data, parity);

        data = 4'b0000; #10; 
        data = 4'b0001; #10; 
        data = 4'b0011; #10; 
        data = 4'b0111; #10; 
        data = 4'b1111; #10; 

        $finish;
    end
endmodule