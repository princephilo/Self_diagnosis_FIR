`timescale 1ns/1ns

module fir_complete_tb;

reg [3:0] x;
reg rst;
reg clk;

reg [3:0] h0;
reg [3:0] h1;
reg [3:0] h2;
reg [3:0] h3;

reg [1:0] fault_location;
reg [1:0] fault_type;

wire [3:0] x0;
wire [3:0] x1;
wire [3:0] x2;
wire [3:0] x3;

wire [7:0] p0_healthy;
wire [7:0] p1_healthy;
wire [7:0] p2_healthy;
wire [7:0] p3_healthy;

wire [7:0] p0;
wire [7:0] p1;
wire [7:0] p2;
wire [7:0] p3;

wire [9:0] y;

wire fault_p0;
wire fault_p1;
wire fault_p2;
wire fault_p3;

wire fault_detected;
wire [1:0] detected_location;
wire [1:0] detected_type;

integer passed;
integer total;

fir f1(
    .x(x),
    .h0(h0),
    .h1(h1),
    .h2(h2),
    .h3(h3),
    .y(y),
    .rst(rst),
    .clk(clk)
);

assign x0 = f1.x0;
assign x1 = f1.x1;
assign x2 = f1.x2;
assign x3 = f1.x3;

assign p0_healthy = h0 * x0;
assign p1_healthy = h1 * x1;
assign p2_healthy = h2 * x2;
assign p3_healthy = h3 * x3;

fault_injection fi(
    .p0_healthy(p0_healthy),
    .p1_healthy(p1_healthy),
    .p2_healthy(p2_healthy),
    .p3_healthy(p3_healthy),

    .fault_location(fault_location),
    .fault_type(fault_type),

    .p0(p0),
    .p1(p1),
    .p2(p2),
    .p3(p3)
);

assign y = p0 + p1 + p2 + p3;

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
    .fault_location(detected_location),
    .fault_type(detected_type)
);

initial begin
    clk = 0;
    forever #50 clk = ~clk;
end

task run_fault;

input [1:0] test_location;
input [1:0] test_type;

begin

    fault_location = test_location;
    fault_type = test_type;

    rst = 1;
    x = 4'd0;

    #100;

    rst = 0;

    x = 4'd1;
    #100;

    x = 4'd2;
    #100;

    x = 4'd3;
    #100;

    x = 4'd4;
    #100;

    x = 4'd7;
    #100;

    if ((fault_detected == 1'b1) &&
        (detected_location == test_location) &&
        (detected_type == test_type)) begin

        $display("PASS | Location=%b | Type=%b",
                 test_location,
                 test_type);

        passed = passed + 1;

    end
    else begin

        $display("FAIL | Expected Location=%b Type=%b | Detected Location=%b Type=%b DET=%b",
                 test_location,
                 test_type,
                 detected_location,
                 detected_type,
                 fault_detected);

    end

    total = total + 1;

end

endtask

initial begin

    $dumpfile("simulation/fir_complete.vcd");
    $dumpvars(0, fir_complete_tb);

    h0 = 4'd1;
    h1 = 4'd2;
    h2 = 4'd2;
    h3 = 4'd1;

    fault_location = 2'b00;
    fault_type = 2'b00;

    passed = 0;
    total = 0;

    #100;

    $display("");
    $display("========================================");
    $display(" SELF-DIAGNOSING FIR FAULT TEST");
    $display("========================================");
    $display("");

    $display("Testing p0 SA0");
    run_fault(2'b00, 2'b01);

    $display("Testing p0 SA1");
    run_fault(2'b00, 2'b10);

    $display("Testing p1 SA0");
    run_fault(2'b01, 2'b01);

    $display("Testing p1 SA1");
    run_fault(2'b01, 2'b10);

    $display("Testing p2 SA0");
    run_fault(2'b10, 2'b01);

    $display("Testing p2 SA1");
    run_fault(2'b10, 2'b10);

    $display("Testing p3 SA0");
    run_fault(2'b11, 2'b01);

    $display("Testing p3 SA1");
    run_fault(2'b11, 2'b10);

    $display("");
    $display("========================================");
    $display(" FINAL RESULT");
    $display("========================================");

    $display("Passed = %0d / %0d", passed, total);

    if (passed == total)
        $display("FAULT COVERAGE = 100%%");
    else
        $display("FAULT COVERAGE = %0d%%", (passed * 100) / total);

    $display("========================================");

    $finish;

end

endmodule