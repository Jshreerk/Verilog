module encoder_8to3_tb;
    reg [7:0]d;
    wire [2:0]y;

    encoder_8to3 dut(
        .d(d),
        .y(y)
    );
    initial begin
        $dumpfile("encoder_8to3.vcd");
        $dumpvars(0, encoder_8to3_tb);
    end 
    initial begin
        $monitor("d=%b | y=%b", d, y);
        d=8'b10000000;#10;
        d=8'b01000000;#10;
        d=8'b00100000;#10;
        d=8'b00010000;#10;
        d=8'b00001000;#10;
        d=8'b00000100;#10;
        d=8'b00000010;#10;
        d=8'b00000001;#10;
        $finish;
        end
endmodule