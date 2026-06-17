module pe(
    input clk,
    input rst,
    input [7:0] a,
    input [7:0] b,
    output [15:0] result
);

wire [15:0] acc;

mac mac_inst(
    .clk(clk),
    .rst(rst),
    .a(a),
    .b(b),
    .acc(acc)
);

assign result = acc;

endmodule