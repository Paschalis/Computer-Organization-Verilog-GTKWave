`timescale 1ns / 1ps

module BCD_tb;
    reg [3:0] binary;  
    wire [3:0] tens;
    wire [3:0] ones;
    BCD DUT (
        .binary(binary),
        .ones(ones)
    );

    initial begin
    $dumpfile("BCD_tb.vcd");
    $dumpvars;
        binary=4'b1101;
    #10 binary=4'b1000;
    #10 binary=4'b1001;
    #10 binary=4'b1010;
    #10;
    end
endmodule