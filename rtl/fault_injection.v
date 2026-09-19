`timescale 1ns/1ns

module fault_injection(

    input [7:0] p0_healthy,
    input [7:0] p1_healthy,
    input [7:0] p2_healthy,
    input [7:0] p3_healthy,

    input [1:0] fault_location,
    input [2:0] fault_bit,
    input [1:0] fault_type,

    output [7:0] p0,
    output [7:0] p1,
    output [7:0] p2,
    output [7:0] p3

);

reg [7:0] p0_reg;
reg [7:0] p1_reg;
reg [7:0] p2_reg;
reg [7:0] p3_reg;


always @(*) begin

    p0_reg = p0_healthy;
    p1_reg = p1_healthy;
    p2_reg = p2_healthy;
    p3_reg = p3_healthy;


    if (fault_type == 2'b01) begin

        case (fault_location)

            2'b00:
                p0_reg[fault_bit] = 1'b0;

            2'b01:
                p1_reg[fault_bit] = 1'b0;

            2'b10:
                p2_reg[fault_bit] = 1'b0;

            2'b11:
                p3_reg[fault_bit] = 1'b0;

        endcase

    end


    else if (fault_type == 2'b10) begin

        case (fault_location)

            2'b00:
                p0_reg[fault_bit] = 1'b1;

            2'b01:
                p1_reg[fault_bit] = 1'b1;

            2'b10:
                p2_reg[fault_bit] = 1'b1;

            2'b11:
                p3_reg[fault_bit] = 1'b1;

        endcase

    end

end


assign p0 = p0_reg;
assign p1 = p1_reg;
assign p2 = p2_reg;
assign p3 = p3_reg;


endmodule