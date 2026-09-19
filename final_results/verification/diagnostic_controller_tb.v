`timescale 1ns/1ns

module diagnostic_controller_tb;

reg clk;
reg rst;
reg start_diag;

wire [3:0] test_x;
wire diag_busy;
wire diag_done;


diagnostic_controller dut(

    .clk(clk),
    .rst(rst),
    .start_diag(start_diag),

    .test_x(test_x),
    .diag_busy(diag_busy),
    .diag_done(diag_done)

);


initial begin

    clk = 0;

    forever #50 clk = ~clk;

end


initial begin

    $dumpfile("simulation/diagnostic_controller.vcd");
    $dumpvars(0, diagnostic_controller_tb);

    rst = 1;
    start_diag = 0;

    #100;

    rst = 0;

    #100;

    start_diag = 1;

    #100;

    start_diag = 0;

    #1200;

    $display("");
    $display("========================================");
    $display(" DIAGNOSTIC CONTROLLER TEST");
    $display("========================================");

    $display("test_x = %d", test_x);
    $display("diag_busy = %b", diag_busy);
    $display("diag_done = %b", diag_done);

    $display("========================================");

    $finish;

end


always @(posedge clk) begin

    $display("Time=%0t | test_x=%d | busy=%b | done=%b",
             $time,
             test_x,
             diag_busy,
             diag_done);

end

endmodule
