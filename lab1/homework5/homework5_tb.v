`timescale 1ns/1ps
`include "homework5.v"

module homework5_tb;
    reg [7:0] A, B;
    wire [7:0] Sum;
    wire Cout;

    ripple_carry DUT(
        .Sum(Sum),
        .Cout(Cout),
        .A(A), 
        .B(B));

    initial begin
        $dumpfile("homework5_tb.vcd");
        $dumpvars;    
             A=8'b00000000; B=8'b00001010;
        #0.1 A=8'b01110001; B=8'b11001110;
        #0.1 A=8'b01101100; B=8'b00100011;
        #0.1 A=8'b00011100; B=8'b01001011;
        #0.1;
    end

    initial begin
        $monitor ("Value of A is %d, B is %d, and the calculated sum is %d, as well as the Cout is %d at time %0t",A,B,Sum,Cout,$time);
    end

endmodule    

