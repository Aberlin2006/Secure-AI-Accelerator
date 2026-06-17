`timescale 1ns / 1ps

module mac_tb;

reg clk;
reg rst;
reg [7:0] a;
reg [7:0] b;

wire [15:0] acc;

mac uut (
    .clk(clk),
    .rst(rst),
    .a(a),
    .b(b),
    .acc(acc)
);

always #5 clk = ~clk;

initial begin

    clk = 0;
    rst = 1;
    a = 0;
    b = 0;

    #10;
    rst = 0;

    a = 2;
    b = 3;
    #10;

    a = 4;
    b = 5;
    #10;

    a = 1;
    b = 2;
    #10;

    $finish;

end

endmodule