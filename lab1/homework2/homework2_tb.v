//testbench for homework2
`timescale 1ns / 1ps

module homework2_tb;
    reg x;
    reg y;
    wire z;

    homework2 DUT(
        .x(x),
        .y(y),
        .z(z)
    );

    initial begin
        $dumpfile("homework2_tb.vcd");
        $dumpvars;
             x=1'b0; y=1'b0;
        #0.1 x=1'b1; y=1'b0;
        #0.1 x=1'b0; y=1'b1;
        #0.1 x=1'b1; y=1'b1;
        #0.1;
    end
    
    initial begin
        $monitor("x=%d,y=%d,z=%d \n",x,y,z);
    end
endmodule