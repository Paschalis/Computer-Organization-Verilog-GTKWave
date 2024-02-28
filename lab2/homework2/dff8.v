`timescale 1ns / 1ps
// * positive-edge triggered
// * no reset
module dff8 (
	output reg [7:0] q,
	input clock,
	input [7:0] d
);

always @ (posedge clock)
	begin
		q <= d;
	end
endmodule

