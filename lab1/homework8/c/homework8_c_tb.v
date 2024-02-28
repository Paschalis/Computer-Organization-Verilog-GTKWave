//testbench for homework1
`timescale 1ns / 1ps
`include "toplevel_hw_8_c.v"

module homework8_c_tb;
    reg X;
    reg Y;
    reg Z;
    wire F;

    toplevel_hw_8_c DUT(
        .X(X),
        .Y(Y),
        .Z(Z),
        .F(F)
    );

    initial begin
        $dumpfile("homework8_c_tb.vcd");
        $dumpvars;
             X=1'b0; Y=1'b0; Z=1'b0;
        #10 X=1'b0; Y=1'b0; Z=1'b1;
        #10 X=1'b0; Y=1'b1; Z=1'b0;
        #10 X=1'b0; Y=1'b1; Z=1'b1;
        #10 X=1'b1; Y=1'b0; Z=1'b0;
        #10 X=1'b1; Y=1'b0; Z=1'b1;
        #10 X=1'b1; Y=1'b1; Z=1'b0;
        #10 X=1'b1; Y=1'b1; Z=1'b1;
        #10;
    end
    
    initial begin
        $monitor("X=%d,Y=%d,Z=%d,F=%d \n",X,Y,Z,F);
    end
endmodule