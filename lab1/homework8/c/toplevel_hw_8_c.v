`include "submodule_hw_8_c_or.v"
`include "submodule_hw_8_c_not.v"
`include "submodule_hw_8_c_xor.v"

module toplevel_hw_8_c(
    output wire F,
    input wire X,Y,Z
);

wire OR1,NOTX,OR2,XOR1;
submodule_hw_8_c_or U0 (OR1,X,Y);
submodule_hw_8_c_not U1 (NOTX,X);
submodule_hw_8_c_xor U2 (XOR1,Y,Z);
submodule_hw_8_c_or U3 (OR2,NOTX,XOR1);
submodule_hw_8_c_xor U4 (F,XOR1,OR2);
endmodule
