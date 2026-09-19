`timescale 1ns/1ns

module diagnostic_controller(

    input clk,
    input rst,
    input start_diag,

    output reg [3:0] test_x,
    output reg diag_busy,
    output reg diag_done

);

reg [3:0] state;

localparam IDLE      = 4'd0;
localparam TEST1     = 4'd1;
localparam WAIT1     = 4'd2;
localparam TEST2     = 4'd3;
localparam WAIT2     = 4'd4;
localparam TEST3     = 4'd5;
localparam WAIT3     = 4'd6;
localparam TEST4     = 4'd7;
localparam WAIT4     = 4'd8;
localparam TEST5     = 4'd9;
localparam WAIT5     = 4'd10;
localparam DONE      = 4'd11;


always @(posedge clk) begin

    if (rst) begin

        state <= IDLE;

        test_x <= 4'd0;

        diag_busy <= 1'b0;
        diag_done <= 1'b0;

    end

    else begin

        diag_done <= 1'b0;

        case (state)

            IDLE: begin

                test_x <= 4'd0;
                diag_busy <= 1'b0;

                if (start_diag) begin

                    state <= TEST1;
                    diag_busy <= 1'b1;

                end

            end


            TEST1: begin

                test_x <= 4'd1;

                state <= WAIT1;

            end


            WAIT1: begin

                test_x <= 4'd1;

                state <= TEST2;

            end


            TEST2: begin

                test_x <= 4'd2;

                state <= WAIT2;

            end


            WAIT2: begin

                test_x <= 4'd2;

                state <= TEST3;

            end


            TEST3: begin

                test_x <= 4'd3;

                state <= WAIT3;

            end


            WAIT3: begin

                test_x <= 4'd3;

                state <= TEST4;

            end


            TEST4: begin

                test_x <= 4'd4;

                state <= WAIT4;

            end


            WAIT4: begin

                test_x <= 4'd4;

                state <= TEST5;

            end


            TEST5: begin

                test_x <= 4'd7;

                state <= WAIT5;

            end


            WAIT5: begin

                test_x <= 4'd7;

                state <= DONE;

            end


            DONE: begin

                test_x <= 4'd0;

                diag_busy <= 1'b0;
                diag_done <= 1'b1;

                state <= IDLE;

            end


            default: begin

                state <= IDLE;

                test_x <= 4'd0;

                diag_busy <= 1'b0;
                diag_done <= 1'b0;

            end

        endcase

    end

end

endmodule