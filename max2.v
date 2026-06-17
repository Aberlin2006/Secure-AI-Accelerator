module max2(
    input [15:0] a,
    input [15:0] b,
    output [15:0] max_out
);

assign max_out = (a > b) ? a : b;

endmodule