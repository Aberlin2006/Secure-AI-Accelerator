module systolic_array(
    input clk,
    input rst,

    input [7:0] a1,
    input [7:0] b1,

    input [7:0] a2,
    input [7:0] b2,

    input [7:0] a3,
    input [7:0] b3,

    input [7:0] a4,
    input [7:0] b4,

    output [15:0] r1,
    output [15:0] r2,
    output [15:0] r3,
    output [15:0] r4
);

pe pe1(
    .clk(clk),
    .rst(rst),
    .a(a1),
    .b(b1),
    .result(r1)
);

pe pe2(
    .clk(clk),
    .rst(rst),
    .a(a2),
    .b(b2),
    .result(r2)
);

pe pe3(
    .clk(clk),
    .rst(rst),
    .a(a3),
    .b(b3),
    .result(r3)
);

pe pe4(
    .clk(clk),
    .rst(rst),
    .a(a4),
    .b(b4),
    .result(r4)
);

endmodule