`timescale 1ns / 1ps

module secure_ai_accelerator_tb;

reg clk;
reg rst;

reg [7:0] a1,b1;
reg [7:0] a2,b2;
reg [7:0] a3,b3;
reg [7:0] a4,b4;

wire attack_flag;

wire [15:0] debug_r1;
wire [15:0] debug_r2;
wire [15:0] debug_r3;
wire [15:0] debug_r4;

wire [15:0] debug_max;
wire [15:0] debug_second;

secure_ai_accelerator uut(

    .clk(clk),
    .rst(rst),

    .a1(a1), .b1(b1),
    .a2(a2), .b2(b2),
    .a3(a3), .b3(b3),
    .a4(a4), .b4(b4),

    .attack_flag(attack_flag),

    .debug_r1(debug_r1),
    .debug_r2(debug_r2),
    .debug_r3(debug_r3),
    .debug_r4(debug_r4),

    .debug_max(debug_max),
    .debug_second(debug_second)
);

always #5 clk = ~clk;

initial begin

    clk = 0;
    rst = 1;

    #10;
    rst = 0;

    // Safe Case

    a1=10; b1=10;
    a2=5;  b2=10;
    a3=3;  b3=10;
    a4=2;  b4=10;

    #20;

    // Suspicious Case

    a1=10; b1=10;
    a2=9;  b2=10;
    a3=9;  b3=10;
    a4=8;  b4=10;

    #20;

    $finish;

end

endmodule