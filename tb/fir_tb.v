module fir_tb;

reg [3:0] x;
reg rst, clk;
reg [3:0] h0, h1, h2, h3;

wire [9:0] y;

wire [7:0] p0, p1, p2, p3;
wire [3:0] x0, x1, x2, x3;

wire fault_p0;
wire fault_p1;
wire fault_p2;
wire fault_p3;

wire fault_detected;
wire [1:0] fault_location;
wire [1:0] fault_type;

wire [7:0] expected_p0;
wire [7:0] expected_p1;
wire [7:0] expected_p2;
wire [7:0] expected_p3;

fir f1(
    x, h0, h1, h2, h3, y, rst, clk
);

assign x0 = f1.x0;
assign x1 = f1.x1;
assign x2 = f1.x2;
assign x3 = f1.x3;

assign p0 = f1.p0;
assign p1 = f1.p1;
assign p2 = f1.p2;
assign p3 = f1.p3;

assign expected_p0 = h0 * x0;
assign expected_p1 = h1 * x1;
assign expected_p2 = h2 * x2;
assign expected_p3 = h3 * x3;

fir_diagnostic d1(
    .h0(h0),
    .h1(h1),
    .h2(h2),
    .h3(h3),

    .x0(x0),
    .x1(x1),
    .x2(x2),
    .x3(x3),

    .p0(p0),
    .p1(p1),
    .p2(p2),
    .p3(p3),

    .fault_p0(fault_p0),
    .fault_p1(fault_p1),
    .fault_p2(fault_p2),
    .fault_p3(fault_p3),

    .fault_detected(fault_detected),
    .fault_location(fault_location),
    .fault_type(fault_type)
);

initial begin
    clk = 0;
    forever #50 clk = ~clk;
end

initial begin
    $dumpfile("simulation/fir.vcd");
    $dumpvars(0, fir_tb);

    h0 = 4'd1;
    h1 = 4'd2;
    h2 = 4'd2;
    h3 = 4'd1;

    rst = 1;
    x = 4'd0;

    #100;
    rst = 0;

    #25 x = 4'd1;
    #100 x = 4'd2;
    #100 x = 4'd3;
    #100 x = 4'd4;

    #200;
    $finish;
end

initial begin
    $monitor("Time=%0t | x=%d | p0=%d F0=%b | p1=%d F1=%b | p2=%d F2=%b | p3=%d F3=%b | DET=%b | LOC=%b | TYPE=%b | y=%d",
             $time,
             x,
             p0, fault_p0,
             p1, fault_p1,
             p2, fault_p2,
             p3, fault_p3,
             fault_detected,
             fault_location,
             fault_type,
             y);
end

endmodule