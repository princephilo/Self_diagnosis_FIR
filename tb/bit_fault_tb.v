`timescale 1ns/1ns

module bit_fault_tb;

reg [3:0] x;

reg [3:0] h0;
reg [3:0] h1;
reg [3:0] h2;
reg [3:0] h3;

reg rst;
reg clk;

reg [1:0] fault_location;
reg [2:0] fault_bit;
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

wire fault_p0;
wire fault_p1;
wire fault_p2;
wire fault_p3;

wire fault_detected;
wire [1:0] detected_location;
wire [2:0] detected_bit;

integer total_faults;
integer detected_faults;
integer correctly_localized;

integer loc;
integer bit_index;
integer input_value;

reg fault_seen;
reg localization_seen;


fir f1(
    .x(x),
    .h0(h0),
    .h1(h1),
    .h2(h2),
    .h3(h3),
    .rst(rst),
    .clk(clk),
    .y(),
    .x0(x0),
    .x1(x1),
    .x2(x2),
    .x3(x3),
    .p0(),
    .p1(),
    .p2(),
    .p3()
);


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
    .fault_bit(fault_bit),
    .fault_type(fault_type),
    .p0(p0),
    .p1(p1),
    .p2(p2),
    .p3(p3)
);


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
    .fault_bit(detected_bit)
);


initial begin

    clk = 0;

    forever #50 clk = ~clk;

end


task run_fault;

input [1:0] test_location;
input [2:0] test_bit;
input [1:0] test_type;

begin

    fault_location = test_location;
    fault_bit = test_bit;
    fault_type = test_type;

    fault_seen = 1'b0;
    localization_seen = 1'b0;

    rst = 1;
    x = 4'd0;

    #100;

    rst = 0;

    for (input_value = 0; input_value < 16; input_value = input_value + 1) begin

        x = input_value;

        #100;

        if (fault_detected) begin

            fault_seen = 1'b1;

            if ((detected_location == test_location) &&
                (detected_bit == test_bit)) begin

                localization_seen = 1'b1;

            end

        end

    end

    x = 4'd15;

    #100;

    if (fault_detected) begin

        fault_seen = 1'b1;

        if ((detected_location == test_location) &&
            (detected_bit == test_bit)) begin

            localization_seen = 1'b1;

        end

    end

    #100;

    if (fault_detected) begin

        fault_seen = 1'b1;

        if ((detected_location == test_location) &&
            (detected_bit == test_bit)) begin

            localization_seen = 1'b1;

        end

    end

    #100;

    if (fault_detected) begin

        fault_seen = 1'b1;

        if ((detected_location == test_location) &&
            (detected_bit == test_bit)) begin

            localization_seen = 1'b1;

        end

    end

    #100;

    if (fault_detected) begin

        fault_seen = 1'b1;

        if ((detected_location == test_location) &&
            (detected_bit == test_bit)) begin

            localization_seen = 1'b1;

        end

    end


    if (fault_seen) begin

        detected_faults = detected_faults + 1;

    end
    else begin

        $display(
            "DETECTION MISS | Location=%b | Bit=%d | Type=%b",
            test_location,
            test_bit,
            test_type
        );

    end


    if (localization_seen) begin

        correctly_localized = correctly_localized + 1;

    end
    else begin

        $display(
            "LOCALIZATION MISS | Expected Location=%b | Expected Bit=%d | Type=%b",
            test_location,
            test_bit,
            test_type
        );

    end


    total_faults = total_faults + 1;

    fault_type = 2'b00;

end

endtask


initial begin

    $dumpfile("simulation/bit_fault.vcd");
    $dumpvars(0, bit_fault_tb);

    h0 = 4'd15;
    h1 = 4'd13;
    h2 = 4'd11;
    h3 = 4'd9;

    fault_location = 2'b00;
    fault_bit = 3'd0;
    fault_type = 2'b00;

    total_faults = 0;
    detected_faults = 0;
    correctly_localized = 0;

    fault_seen = 1'b0;
    localization_seen = 1'b0;

    #100;


    $display("");
    $display("========================================");
    $display(" BIT-LEVEL FAULT DIAGNOSIS TEST");
    $display("========================================");


    for (loc = 0; loc < 4; loc = loc + 1) begin

        for (bit_index = 0; bit_index < 8; bit_index = bit_index + 1) begin

            run_fault(loc, bit_index, 2'b01);

            run_fault(loc, bit_index, 2'b10);

        end

    end


    $display("");
    $display("========================================");
    $display(" FINAL RESULT");
    $display("========================================");

    $display(
        "Faults detected          = %0d / %0d",
        detected_faults,
        total_faults
    );

    $display(
        "Faults correctly located = %0d / %0d",
        correctly_localized,
        total_faults
    );

    $display(
        "FAULT DETECTION COVERAGE = %0d%%",
        (detected_faults * 100) / total_faults
    );

    $display(
        "FAULT LOCALIZATION COVERAGE = %0d%%",
        (correctly_localized * 100) / total_faults
    );

    $display("========================================");

    $finish;

end

endmodule