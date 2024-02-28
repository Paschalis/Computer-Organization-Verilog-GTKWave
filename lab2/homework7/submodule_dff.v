module submodule_dff (Q, D, Clock);
	output reg Q; 
    input Clock;
	input D;
    initial Q<=0;
always @ (posedge Clock)
	begin
		Q <= D;
	end
endmodule
