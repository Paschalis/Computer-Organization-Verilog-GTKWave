// Code your design here
`timescale 1ns/1ps

module homework4(
    output wire z,
    input wire x,y
);

wire xy_xor;
xor U0 (xy_xor, x, y);
and U1 (z, xy_xor, x);

endmodule