// Code your design here
`timescale 1ns / 1ps

module homework7(
    output Y,
    input A,B,C,D,
    input [1:0] sel
);

assign Y = (sel == 2'b00) ? A :
           (sel == 2'b10) ? B :
           (sel == 2'b01) ? C :
           (sel == 2'b11) ? D :
           1'bX;
endmodule