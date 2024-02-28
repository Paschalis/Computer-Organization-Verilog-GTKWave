`include "submodule_hw_8_a.v"

module toplevel_hw_8_a(
    output wire p1y,p2y,
    input wire p1a,p1b,p1c,p1d,p2a,p2b,p2c,p2d
);

submodule_hw_8_a U0 (p1y,p1a,p1b,p1c,p1d);
submodule_hw_8_a U1 (p2y,p2a,p2b,p2c,p2d);

endmodule