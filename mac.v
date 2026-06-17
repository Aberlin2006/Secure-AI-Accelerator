module mac(
    input clk,
    input rst,
    input [7:0] a,
    input [7:0] b,
    output reg [15:0] acc
);

always @(posedge clk or posedge rst)
begin
    if(rst)
        acc <= 16'd0;
    else
        acc <= acc + (a * b);
end

endmodule