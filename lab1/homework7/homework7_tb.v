//testbench for homework7
`timescale 1ns / 1ps

module homework7_tb;
    reg A;
    reg B;
    reg C;
    reg D;
    wire Y;
    reg [1:0] sel;

    homework7 DUT(
        .A(A),
        .B(B),
        .C(C),
        .D(D),
        .sel(sel),
        .Y(Y)
    );

    initial begin
        $dumpfile("homework7_tb.vcd");
        $dumpvars;
             A=1'b1; B=1'b0; C=1'b1; D=1'b0; sel=2'b00;
        #0.1 A=1'b1; B=1'b0; C=1'b1; D=1'b0; sel=2'b10;
        #0.1 A=1'b1; B=1'b0; C=1'b1; D=1'b0; sel=2'b01;
        #0.1 A=1'b1; B=1'b0; C=1'b1; D=1'b0; sel=2'b11;
        #0.1;
    end
    
    initial begin
        $monitor("SELECT=%d,A=%d,B=%d,C=%d,D=%d,Y=%d \n",sel,A,B,C,D,Y);
    end
endmodule