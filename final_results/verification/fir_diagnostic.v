`timescale 1ns/1ns

module fir_diagnostic(

    input [3:0] h0,
    input [3:0] h1,
    input [3:0] h2,
    input [3:0] h3,

    input [3:0] x0,
    input [3:0] x1,
    input [3:0] x2,
    input [3:0] x3,

    input [7:0] p0,
    input [7:0] p1,
    input [7:0] p2,
    input [7:0] p3,

    output fault_p0,
    output fault_p1,
    output fault_p2,
    output fault_p3,

    output [3:0] fault_vector,

    output fault_detected,
    output [1:0] fault_location,
    output [2:0] fault_bit,
    output fault_type

);

wire [7:0] expected_p0;
wire [7:0] expected_p1;
wire [7:0] expected_p2;
wire [7:0] expected_p3;

wire [7:0] mismatch_p0;
wire [7:0] mismatch_p1;
wire [7:0] mismatch_p2;
wire [7:0] mismatch_p3;

wire [7:0] selected_expected;
wire selected_actual;


assign expected_p0 = h0 * x0;
assign expected_p1 = h1 * x1;
assign expected_p2 = h2 * x2;
assign expected_p3 = h3 * x3;


assign mismatch_p0 = expected_p0 ^ p0;
assign mismatch_p1 = expected_p1 ^ p1;
assign mismatch_p2 = expected_p2 ^ p2;
assign mismatch_p3 = expected_p3 ^ p3;


assign fault_p0 = |mismatch_p0;
assign fault_p1 = |mismatch_p1;
assign fault_p2 = |mismatch_p2;
assign fault_p3 = |mismatch_p3;


assign fault_vector = {
    fault_p3,
    fault_p2,
    fault_p1,
    fault_p0
};


assign fault_detected =
        fault_p0 |
        fault_p1 |
        fault_p2 |
        fault_p3;


assign fault_location =
        fault_p0 ? 2'b00 :
        fault_p1 ? 2'b01 :
        fault_p2 ? 2'b10 :
        fault_p3 ? 2'b11 :
                   2'b00;


assign fault_bit =
        fault_p0 ? (
            mismatch_p0[0] ? 3'd0 :
            mismatch_p0[1] ? 3'd1 :
            mismatch_p0[2] ? 3'd2 :
            mismatch_p0[3] ? 3'd3 :
            mismatch_p0[4] ? 3'd4 :
            mismatch_p0[5] ? 3'd5 :
            mismatch_p0[6] ? 3'd6 :
            mismatch_p0[7] ? 3'd7 :
            3'd0
        ) :
        fault_p1 ? (
            mismatch_p1[0] ? 3'd0 :
            mismatch_p1[1] ? 3'd1 :
            mismatch_p1[2] ? 3'd2 :
            mismatch_p1[3] ? 3'd3 :
            mismatch_p1[4] ? 3'd4 :
            mismatch_p1[5] ? 3'd5 :
            mismatch_p1[6] ? 3'd6 :
            mismatch_p1[7] ? 3'd7 :
            3'd0
        ) :
        fault_p2 ? (
            mismatch_p2[0] ? 3'd0 :
            mismatch_p2[1] ? 3'd1 :
            mismatch_p2[2] ? 3'd2 :
            mismatch_p2[3] ? 3'd3 :
            mismatch_p2[4] ? 3'd4 :
            mismatch_p2[5] ? 3'd5 :
            mismatch_p2[6] ? 3'd6 :
            mismatch_p2[7] ? 3'd7 :
            3'd0
        ) :
        fault_p3 ? (
            mismatch_p3[0] ? 3'd0 :
            mismatch_p3[1] ? 3'd1 :
            mismatch_p3[2] ? 3'd2 :
            mismatch_p3[3] ? 3'd3 :
            mismatch_p3[4] ? 3'd4 :
            mismatch_p3[5] ? 3'd5 :
            mismatch_p3[6] ? 3'd6 :
            mismatch_p3[7] ? 3'd7 :
            3'd0
        ) :
        3'd0;


assign selected_expected =
        fault_p0 ? expected_p0 :
        fault_p1 ? expected_p1 :
        fault_p2 ? expected_p2 :
        fault_p3 ? expected_p3 :
        8'd0;


assign selected_actual =
        fault_p0 ? p0[fault_bit] :
        fault_p1 ? p1[fault_bit] :
        fault_p2 ? p2[fault_bit] :
        fault_p3 ? p3[fault_bit] :
        1'b0;


assign fault_type =
        fault_detected ?
        ((selected_expected[fault_bit] == 1'b0) &&
         (selected_actual == 1'b1)) :
        1'b0;

endmodule