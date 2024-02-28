`timescale 1ns/1ps
module stimulus;
reg clk, load,enable;
reg reset;
reg s_in;
wire s_out;
free_run_shift_reg #(2) s1 (
.clk(clk),
.reset(reset),
.s_in(s_in),
.s_out(s_out),
.enable(enable),
.load(load)
);
integer i, j;
initial
begin
clk = 0;
for(i =0; i<=40; i=i+1)
begin
#10 clk = ~clk;
end
end
initial
begin
$dumpfile("test.vcd");
$dumpvars(0,stimulus);
s_in = 0; reset =1;
enable=1; load=1;
#2 s_in = 0 ; reset = 0;
#2 reset =1;
for(i =0; i<=10; i=i+1)
begin
#20 s_in = ~s_in;
end
#20 s_in =1;
#20 s_in = 1;
#20 s_in =0;
#20 s_in =1;
#20 s_in = 1;
#20 s_in =0;
#20 s_in =1;
enable=0;
#20 s_in = 1;
enable=0; load=0;
#20 s_in =0;
end

endmodule 
