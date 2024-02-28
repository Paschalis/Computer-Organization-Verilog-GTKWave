`include "submodule_dff.v"
`include "submodule_xor.v"
module toplevel_hw_7(
    output wire out,
    input wire in,Clock
);
wire XOR;
submodule_xor U0 (XOR,in,out); // XOR is data in to D Flip Flop
submodule_dff U1 (out,XOR,Clock);
endmodule
