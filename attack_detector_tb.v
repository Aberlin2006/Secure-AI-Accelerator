`timescale 1ns / 1ps

module attack_detector_tb;

reg [7:0] max_score;
reg [7:0] second_score;

wire attack_flag;

attack_detector uut(
    .max_score(max_score),
    .second_score(second_score),
    .attack_flag(attack_flag)
);

initial begin

    // Safe Case
    max_score = 90;
    second_score = 10;

    #10;

    // Attack Case
    max_score = 55;
    second_score = 50;

    #10;

    // Safe Case
    max_score = 80;
    second_score = 20;

    #10;

    $finish;

end

endmodule