`timescale 1ns/1ns

module fir(

    input [3:0] x,
    input [3:0] h0,
    input [3:0] h1,
    input [3:0] h2,
    input [3:0] h3,

    input rst,
    input clk,

    output [9:0] y,

    output [3:0] x0,
    output [3:0] x1,
    output [3:0] x2,
    output [3:0] x3,

    output [7:0] p0,
    output [7:0] p1,
    output [7:0] p2,
    output [7:0] p3

);

reg [3:0] x0_reg;
reg [3:0] x1_reg;
reg [3:0] x2_reg;
reg [3:0] x3_reg;

assign x0 = x0_reg;
assign x1 = x1_reg;
assign x2 = x2_reg;
assign x3 = x3_reg;

assign p0 = h0 * x0_reg;
assign p1 = h1 * x1_reg;
assign p2 = h2 * x2_reg;
assign p3 = h3 * x3_reg;

assign y = p0 + p1 + p2 + p3;

always @(posedge clk) begin

    if (rst) begin

        x0_reg <= 4'd0;
        x1_reg <= 4'd0;
        x2_reg <= 4'd0;
        x3_reg <= 4'd0;

    end

    else begin

        x0_reg <= x;
        x1_reg <= x0_reg;
        x2_reg <= x1_reg;
        x3_reg <= x2_reg;

    end

end

endmodule