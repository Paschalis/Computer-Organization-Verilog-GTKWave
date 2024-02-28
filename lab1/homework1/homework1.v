// Code your design here
`timescale 1ns / 1ps

module homework1(
    input x,
    input y,
    output z
);

assign z=(x^y)&x;

endmodule
