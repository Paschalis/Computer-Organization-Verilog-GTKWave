// Code your design here
`timescale 1ns / 1ps

module homework2(
    input x,
    input y,
    output z
);

assign z=   ((x==1'b0) && (y==1'b0)) ? 1'b1 :
            ((x==1'b1) && (y==1'b1)) ? 1'b1 :
            1'b0;
endmodule
