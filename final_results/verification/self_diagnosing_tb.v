`timescale 1ns/1ns

module self_diagnosing_tb;

reg [3:0] x;

reg [3:0] h0;
reg [3:0] h1;
reg [3:0] h2;
reg [3:0] h3;

reg rst;
reg clk;
reg start_diag;

wire [9:0] y;

wire fault_detected;
wire [1:0] detected_location;
wire [2:0] detected_bit;
wire fault_type;
wire [3:0] fault_vector;

wire diag_busy;
wire diag_done;


self_diagnosing_fir dut(
    .x(x),
    .h0(h0),
    .h1(h1),
    .h2(h2),
    .h3(h3),
    .rst(rst),
    .clk(clk),
    .start_diag(start_diag),
    .y(y),
    .fault_detected(fault_detected),
    .fault_location(detected_location),
    .fault_bit(detected_bit),
    .fault_type(fault_type),
    .fault_vector(fault_vector),
    .diag_busy(diag_busy),
    .diag_done(diag_done)
);


initial begin
    clk = 0;
    forever #50 clk = ~clk;
end


initial begin

    $dumpfile("simulation/multi_fault_vector.vcd");
    $dumpvars(0, self_diagnosing_tb);

    h0 = 4'd15;
    h1 = 4'd13;
    h2 = 4'd11;
    h3 = 4'd9;

    x = 4'd0;

    rst = 1;
    start_diag = 0;

    #100;

    rst = 0;

    #100;


    // ========================================
    // TEST 1
    // p0 bit 0 stuck-at-0
    // p2 bit 3 stuck-at-0
    // Expected vector = 0101
    // ========================================

    force dut.p0[0] = 1'b0;
    force dut.p2[3] = 1'b0;

    start_diag = 1;

    #100;

    start_diag = 0;

    #1200;

    if ((fault_detected == 1'b1) &&
        (fault_vector == 4'b0101))

        $display("PASS | p0 + p2 faulty | vector=%b",
                 fault_vector);

    else

        $display("FAIL | p0 + p2 faulty | vector=%b",
                 fault_vector);

    release dut.p0[0];
    release dut.p2[3];


    // ========================================
    // TEST 2
    // p1 bit 7 stuck-at-1
    // p3 bit 6 stuck-at-1
    // Expected vector = 1010
    // ========================================

    force dut.p1[7] = 1'b1;
    force dut.p3[6] = 1'b1;

    start_diag = 1;

    #100;

    start_diag = 0;

    #1200;

    if ((fault_detected == 1'b1) &&
        (fault_vector == 4'b1010))

        $display("PASS | p1 + p3 faulty | vector=%b",
                 fault_vector);

    else

        $display("FAIL | p1 + p3 faulty | vector=%b",
                 fault_vector);

    release dut.p1[7];
    release dut.p3[6];


    // ========================================
    // TEST 3
    // All four multiplier stages faulty
    //
    // p0 bit 0 stuck-at-0
    // p1 bit 7 stuck-at-1
    // p2 bit 2 stuck-at-0
    // p3 bit 3 stuck-at-1
    //
    // Expected vector = 1111
    // ========================================

    force dut.p0[0] = 1'b0;
    force dut.p1[7] = 1'b1;
    force dut.p2[2] = 1'b0;
    force dut.p3[3] = 1'b1;

    start_diag = 1;

    #100;

    start_diag = 0;

    #1200;

    if ((fault_detected == 1'b1) &&
        (fault_vector == 4'b1111))

        $display("PASS | p0 + p1 + p2 + p3 faulty | vector=%b",
                 fault_vector);

    else

        $display("FAIL | p0 + p1 + p2 + p3 faulty | vector=%b",
                 fault_vector);

    release dut.p0[0];
    release dut.p1[7];
    release dut.p2[2];
    release dut.p3[3];


    // ========================================
    // TEST COMPLETE
    // ========================================

    $display("");
    $display("========================================");
    $display(" MULTIPLE FAULT VECTOR TEST COMPLETE");
    $display("========================================");

    $finish;

end

endmodule