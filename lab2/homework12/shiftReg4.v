`timescale 1ns/1ps
module free_run_shift_reg
#(parameter N=4)
(
input wire clk, reset,
input wire s_in,
input enable,load,
output wire s_out
);
reg [N-1:0] r_reg;
wire [N-1:0] r_next;

always @(posedge clk, negedge reset)
begin
if (!reset)
r_reg <= 0;
else if(!load)
r_reg=3;
else
if(enable)
r_reg <= r_next;
end
assign r_next = {s_in, r_reg[N-1:1]};
assign s_out = r_reg[0];

endmodule
