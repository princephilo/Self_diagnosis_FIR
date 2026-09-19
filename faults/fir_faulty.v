`timescale 1ns/1ns

module fir(
    x, h0, h1, h2, h3, y, rst, clk
);

input [3:0] x;
input rst, clk;
input [3:0] h0, h1, h2, h3;

output [9:0] y;

reg [3:0] x0, x1, x2, x3;

wire [7:0] p0, p1, p2, p3;

assign p0 = 8'd0;
assign p1 = h1 * x1;
assign p2 = h2 * x2;
assign p3 = h3 * x3;

always @(posedge clk) begin
    if (rst) begin
        x0 <= 4'd0;
        x1 <= 4'd0;
        x2 <= 4'd0;
        x3 <= 4'd0;
    end
    else begin
        x0 <= x;
        x1 <= x0;
        x2 <= x1;
        x3 <= x2;
    end
end

assign y = p0 + p1 + p2 + p3;

endmodule