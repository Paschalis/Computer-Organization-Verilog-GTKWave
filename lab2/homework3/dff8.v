`timescale 1ns / 1ps
// * positive-edge triggered
// * synchronous active-high/low reset
module dff8 (
	output reg [7:0] q,
    input reset, 
    input clock,
	input [7:0] d
);

always @ (posedge clock)
	begin
        if(!reset) 
            q <= 8'b00000000; 
        else    
            q <= d;
    end    
endmodule

