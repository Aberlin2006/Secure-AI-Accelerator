module attack_detector(
    input [7:0] max_score,
    input [7:0] second_score,
    output attack_flag
);

assign attack_flag =
       ((max_score - second_score) < 8'd10);

endmodule