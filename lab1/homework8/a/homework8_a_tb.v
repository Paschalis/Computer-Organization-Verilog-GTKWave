//testbench for homework8_a
`timescale 1ns / 1ps
`include "toplevel_hw_8_a.v"

module homework8_a_tb;
    reg p1a,p1b,p1c,p1d,p2a,p2b,p2c,p2d;
    wire p1y,p2y;

toplevel_hw_8_a DUT(
        .p1a(p1a),.p1b(p1b),.p1c(p1c),.p1d(p1d),
        .p2a(p2a),.p2b(p2b),.p2c(p2c),.p2d(p2d),
        .p1y(p1y),.p2y(p2y)
    );

    initial begin
        $dumpfile("homework8_a_tb.vcd");
        $dumpvars;
             p1a=1'b1; p1b=1'b1; p1c=1'b1; p1d=1'b1;
             p2a=1'b0; p2b=1'b0; p2c=1'b0; p2d=1'b1;
        #0.1 p1a=1'b1; p1b=1'b1; p1c=1'b0; p1d=1'b0;
             p2a=1'b0; p2b=1'b1; p2c=1'b1; p2d=1'b1;
        #0.1 p1a=1'b1; p1b=1'b1; p1c=1'b0; p1d=1'b0;
             p2a=1'b0; p2b=1'b1; p2c=1'b1; p2d=1'b0;
        #0.1 p1a=1'b1; p1b=1'b1; p1c=1'b1; p1d=1'b0;
             p2a=1'b1; p2b=1'b1; p2c=1'b1; p2d=1'b0;
        #0.1;
    end

endmodule