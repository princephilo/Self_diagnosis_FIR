`timescale 1ns/1ns

module healthy_output_tb;

reg [3:0] x;
reg [3:0] h0, h1, h2, h3;
reg rst;
reg clk;

wire [9:0] y;

wire [3:0] x0, x1, x2, x3;
wire [7:0] p0, p1, p2, p3;

fir dut (
    .x(x),
    .h0(h0),
    .h1(h1),
    .h2(h2),
    .h3(h3),
    .rst(rst),
    .clk(clk),
    .y(y),
    .x0(x0),
    .x1(x1),
    .x2(x2),
    .x3(x3),
    .p0(p0),
    .p1(p1),
    .p2(p2),
    .p3(p3)
);

always #50 clk = ~clk;

initial begin
    clk = 0;
    rst = 1;
    x = 0;

    h0 = 1;
    h1 = 2;
    h2 = 2;
    h3 = 1;

    #100;
    rst = 0;

    #25 x = 1;
    #100 x = 2;
    #100 x = 3;
    #100 x = 4;

    #200;

    $finish;
end

always @(posedge clk) begin
    #1;
    $display("Time=%0t | x=%0d | x0=%0d x1=%0d x2=%0d x3=%0d | p0=%0d p1=%0d p2=%0d p3=%0d | y=%0d",
             $time, x, x0, x1, x2, x3, p0, p1, p2, p3, y);
end

endmodule
