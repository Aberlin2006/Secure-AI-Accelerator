module score_selector(
    input [15:0] r1,
    input [15:0] r2,
    input [15:0] r3,
    input [15:0] r4,

    output reg [15:0] max_score,
    output reg [15:0] second_score
);

always @(*)
begin

    max_score = r1;
    second_score = r2;

    if(second_score > max_score)
    begin
        max_score = r2;
        second_score = r1;
    end

    if(r3 > max_score)
    begin
        second_score = max_score;
        max_score = r3;
    end
    else if(r3 > second_score)
    begin
        second_score = r3;
    end

    if(r4 > max_score)
    begin
        second_score = max_score;
        max_score = r4;
    end
    else if(r4 > second_score)
    begin
        second_score = r4;
    end

end

endmodule