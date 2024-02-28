`timescale 1ns/1ps

module shiftReg4(
    input [3:0] din,
    input clock, reset,
    output reg [3:0] D00, D01, D02, D03);

always @(posedge clock) 
    begin
        if(!reset)
            begin    
                D00 <= 4'b0;
                D01 <= 4'b0;
                D02 <= 4'b0;
                D03 <= 4'b0;
            end
        else
            begin
                D00 <= din;
                D01 <= D00;
                D02 <= D01;
                D03 <= D02;
            end
    
    end

endmodule
