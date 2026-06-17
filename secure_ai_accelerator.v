module secure_ai_accelerator(

    input clk,
    input rst,

    input [7:0] a1,b1,
    input [7:0] a2,b2,
    input [7:0] a3,b3,
    input [7:0] a4,b4,

    output attack_flag,

    output [15:0] debug_r1,
    output [15:0] debug_r2,
    output [15:0] debug_r3,
    output [15:0] debug_r4,

    output [15:0] debug_max,
    output [15:0] debug_second
);

wire [15:0] r1,r2,r3,r4;
wire [15:0] max_score;
wire [15:0] second_score;

systolic_array SA(
    .clk(clk),
    .rst(rst),

    .a1(a1), .b1(b1),
    .a2(a2), .b2(b2),
    .a3(a3), .b3(b3),
    .a4(a4), .b4(b4),

    .r1(r1),
    .r2(r2),
    .r3(r3),
    .r4(r4)
);

score_selector SS(
    .r1(r1),
    .r2(r2),
    .r3(r3),
    .r4(r4),

    .max_score(max_score),
    .second_score(second_score)
);

attack_detector AD(
    .max_score(max_score),
    .second_score(second_score),
    .attack_flag(attack_flag)
);

assign debug_r1 = r1;
assign debug_r2 = r2;
assign debug_r3 = r3;
assign debug_r4 = r4;

assign debug_max = max_score;
assign debug_second = second_score;

endmodule