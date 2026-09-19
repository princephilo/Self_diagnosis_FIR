`timescale 1ns/1ns

module self_diagnosing_fir(
    input [3:0] x,

    input [3:0] h0,
    input [3:0] h1,
    input [3:0] h2,
    input [3:0] h3,

    input rst,
    input clk,

    input start_diag,

    output [9:0] y,

    output fault_detected,
    output [1:0] fault_location,
    output [2:0] fault_bit,
    output fault_type,
    output [3:0] fault_vector,

    output diag_busy,
    output diag_done
);

wire [3:0] test_x;
wire [3:0] fir_x;

wire [3:0] x0;
wire [3:0] x1;
wire [3:0] x2;
wire [3:0] x3;

wire [7:0] p0;
wire [7:0] p1;
wire [7:0] p2;
wire [7:0] p3;

wire fault_detected_live;
wire [1:0] fault_location_live;
wire [2:0] fault_bit_live;
wire fault_type_live;
wire [3:0] fault_vector_live;

reg fault_detected_reg;
reg [1:0] fault_location_reg;
reg [2:0] fault_bit_reg;
reg fault_type_reg;
reg [3:0] fault_vector_reg;

reg diag_done_d;


assign fir_x = diag_busy ? test_x : x;


diagnostic_controller controller(
    .clk(clk),
    .rst(rst),
    .start_diag(start_diag),
    .test_x(test_x),
    .diag_busy(diag_busy),
    .diag_done(diag_done)
);


fir fir_core(
    .x(fir_x),
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


fir_diagnostic diagnostic(
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

    .fault_p0(),
    .fault_p1(),
    .fault_p2(),
    .fault_p3(),

    .fault_vector(fault_vector_live),

    .fault_detected(fault_detected_live),
    .fault_location(fault_location_live),
    .fault_bit(fault_bit_live),
    .fault_type(fault_type_live)
);


always @(posedge clk) begin

    if (rst) begin

        fault_detected_reg <= 1'b0;
        fault_location_reg <= 2'b00;
        fault_bit_reg <= 3'd0;
        fault_type_reg <= 1'b0;
        fault_vector_reg <= 4'b0000;

        diag_done_d <= 1'b0;

    end

    else begin

        diag_done_d <= diag_done;

        if (diag_done_d) begin

            fault_detected_reg <= fault_detected_live;
            fault_location_reg <= fault_location_live;
            fault_bit_reg <= fault_bit_live;
            fault_type_reg <= fault_type_live;
            fault_vector_reg <= fault_vector_live;

        end

    end

end


assign fault_detected = fault_detected_reg;
assign fault_location = fault_location_reg;
assign fault_bit = fault_bit_reg;
assign fault_type = fault_type_reg;
assign fault_vector = fault_vector_reg;

endmodule