// Code your design here
`timescale 1ns / 1ps

module homework3(
    input [1:0]x,
    input [1:0]y,
    output z
);
assign z=   ((x==2'b00) && (y==2'b00)) ? 1'b1 :
            ((x==2'b10) && (y==2'b10)) ? 1'b1 :
            ((x==2'b01) && (y==2'b01)) ? 1'b1 :
            ((x==2'b11) && (y==2'b11)) ? 1'b1 :
            2'b0;
endmodule