//testbench for homework3
`timescale 1ns / 1ps

module homework3_tb;
    reg [1:0] x, y;
    wire z;

    homework3 DUT(
        .x(x),
        .y(y),
        .z(z)
    );

    initial begin
        $dumpfile("homework3_tb.vcd");
        $dumpvars;
             x=2'b00; y=2'b00;
        #0.1 x=2'b00; y=2'b01;
        #0.1 x=2'b00; y=2'b10;
        #0.1 x=2'b00; y=2'b11;
        #0.1 x=2'b01; y=2'b00;
        #0.1 x=2'b01; y=2'b01;
        #0.1 x=2'b01; y=2'b10;
        #0.1 x=2'b01; y=2'b11;
        #0.1 x=2'b10; y=2'b00;
        #0.1 x=2'b10; y=2'b01;
        #0.1 x=2'b10; y=2'b10;
        #0.1 x=2'b10; y=2'b11;
        #0.1 x=2'b11; y=2'b00;
        #0.1 x=2'b11; y=2'b01;
        #0.1 x=2'b11; y=2'b10;
        #0.1 x=2'b11; y=2'b11;
        #0.1;
    end
    
    initial begin
        $monitor("x=%d,y=%d,z=%d \n",x,y,z);
    end
endmodule