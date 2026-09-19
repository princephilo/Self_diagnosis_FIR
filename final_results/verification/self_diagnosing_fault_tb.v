`timescale 1ns/1ns

module self_diagnosing_fault_tb;

reg [3:0] x;

reg [3:0] h0;
reg [3:0] h1;
reg [3:0] h2;
reg [3:0] h3;

reg rst;
reg clk;
reg start_diag;

reg [1:0] fault_location;
reg [2:0] fault_bit;
reg [1:0] fault_type;

wire [9:0] y;

wire fault_detected;
wire [1:0] detected_location;
wire [2:0] detected_bit;
wire detected_fault_type;
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
    .fault_type(detected_fault_type),
    .fault_vector(fault_vector),

    .diag_busy(diag_busy),
    .diag_done(diag_done)

);


initial begin
    clk = 0;
    forever #50 clk = ~clk;
end


initial begin

    $dumpfile("simulation/complete_self_diagnosis.vcd");
    $dumpvars(0, self_diagnosing_fault_tb);

    h0 = 4'd15;
    h1 = 4'd13;
    h2 = 4'd11;
    h3 = 4'd9;

    x = 4'd0;

    rst = 1;
    start_diag = 0;

    fault_location = 2'b00;
    fault_bit = 3'd0;
    fault_type = 2'b00;

    #100;

    rst = 0;

    #100;


    // ========================================
    // TEST 1
    // HEALTHY SELF-DIAGNOSIS
    // ========================================

    x = 4'd1;

    start_diag = 1;

    #100;

    start_diag = 0;

    wait(diag_done);

    #10;

    if ((fault_detected == 1'b0) &&
        (fault_vector == 4'b0000))

        $display("PASS | HEALTHY | vector=%b | diagnostic complete",
                 fault_vector);

    else

        $display("FAIL | HEALTHY | vector=%b",
                 fault_vector);


    #100;


    // ========================================
    // TEST 2
    // p0 bit 0 stuck-at-0
    // ========================================

    force dut.p0[0] = 1'b0;

    x = 4'd1;

    start_diag = 1;

    #100;

    start_diag = 0;

    wait(diag_done);

    #10;

    if ((fault_detected == 1'b1) &&
        (detected_location == 2'b00) &&
        (detected_bit == 3'd0) &&
        (detected_fault_type == 1'b0) &&
        (fault_vector == 4'b0001))

        $display("PASS | p0 bit 0 stuck-at-0 | vector=%b | location=%b | bit=%d",
                 fault_vector,
                 detected_location,
                 detected_bit);

    else

        $display("FAIL | p0 bit 0 stuck-at-0 | vector=%b | location=%b | bit=%d",
                 fault_vector,
                 detected_location,
                 detected_bit);

    release dut.p0[0];

    #100;


    // ========================================
    // TEST 3
    // p2 bit 3 stuck-at-0
    // ========================================

    force dut.p2[3] = 1'b0;

    x = 4'd1;

    start_diag = 1;

    #100;

    start_diag = 0;

    wait(diag_done);

    #10;

    if ((fault_detected == 1'b1) &&
        (detected_location == 2'b10) &&
        (detected_bit == 3'd3) &&
        (detected_fault_type == 1'b0) &&
        (fault_vector == 4'b0100))

        $display("PASS | p2 bit 3 stuck-at-0 | vector=%b | location=%b | bit=%d",
                 fault_vector,
                 detected_location,
                 detected_bit);

    else

        $display("FAIL | p2 bit 3 stuck-at-0 | vector=%b | location=%b | bit=%d",
                 fault_vector,
                 detected_location,
                 detected_bit);

    release dut.p2[3];

    #100;


    // ========================================
    // TEST 4
    // p1 bit 7 stuck-at-1
    // ========================================

    force dut.p1[7] = 1'b1;

    x = 4'd1;

    start_diag = 1;

    #100;

    start_diag = 0;

    wait(diag_done);

    #10;

    if ((fault_detected == 1'b1) &&
        (detected_location == 2'b01) &&
        (detected_bit == 3'd7) &&
        (detected_fault_type == 1'b1) &&
        (fault_vector == 4'b0010))

        $display("PASS | p1 bit 7 stuck-at-1 | vector=%b | location=%b | bit=%d",
                 fault_vector,
                 detected_location,
                 detected_bit);

    else

        $display("FAIL | p1 bit 7 stuck-at-1 | vector=%b | location=%b | bit=%d",
                 fault_vector,
                 detected_location,
                 detected_bit);

    release dut.p1[7];

    #100;


    // ========================================
    // TEST 5
    // p3 bit 6 stuck-at-1
    // ========================================

    force dut.p3[6] = 1'b1;

    x = 4'd1;

    start_diag = 1;

    #100;

    start_diag = 0;

    wait(diag_done);

    #10;

    if ((fault_detected == 1'b1) &&
        (detected_location == 2'b11) &&
        (detected_bit == 3'd6) &&
        (detected_fault_type == 1'b1) &&
        (fault_vector == 4'b1000))

        $display("PASS | p3 bit 6 stuck-at-1 | vector=%b | location=%b | bit=%d",
                 fault_vector,
                 detected_location,
                 detected_bit);

    else

        $display("FAIL | p3 bit 6 stuck-at-1 | vector=%b | location=%b | bit=%d",
                 fault_vector,
                 detected_location,
                 detected_bit);

    release dut.p3[6];


    // ========================================
    // COMPLETE
    // ========================================

    $display("");
    $display("==============================================");
    $display(" COMPLETE SELF-DIAGNOSIS TEST COMPLETE");
    $display("==============================================");

    $finish;

end

endmodule