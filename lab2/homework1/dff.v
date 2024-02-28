`timescale 1ns / 1ps
// Verilog code for D Flip FLop
module dff (CLK, D, Q);
	input CLK;
	input D;
	output reg Q; 

// The posedge keyword specifies the direction 
// of the clock signal changing from 0 to 1. 
always @ (posedge CLK)
	begin
		Q <= D;
	end

endmodule
