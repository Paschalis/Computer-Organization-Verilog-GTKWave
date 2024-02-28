//testbench for homework1
`timescale 1ns / 1ps

module homework4_tb;
    reg x;
    reg y;
    wire z;

    homework4 DUT(
        .x(x),
        .y(y),
        .z(z)
    );

    initial begin
        $dumpfile("homework4_tb.vcd");
        $dumpvars;
             x=1'b0; y=1'b0;
        #0.1 x=1'b0; y=1'b1;
        #0.1 x=1'b1; y=1'b0;
        #0.1 x=1'b1; y=1'b1;
        #0.1;
    end
    
    initial begin
        $monitor("x=%d,y=%d,z=%d \n",x,y,z);
    end
endmodule