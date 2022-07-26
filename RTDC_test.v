`include "RTDC.v"
module RTDC_test;

//Inputs
reg clk;
reg rst;

//Outputs
wire [6:0] HRM;
wire [6:0] HRL;
wire [6:0] MIN_M;
wire [6:0] MIN_L;
wire [6:0] SEC_M;
wire [6:0] SEC_L;

//Instantiate the Unit Under Test
RTDC uut(
    .clk(clk),
    .rst(rst),
    .HRM(HRM),
    .HRL(HRL),
    .MIN_M(MIN_M),
    .MIN_L(MIN_L),
    .SEC_M(SEC_M),
    .SEC_L(SEC_L)
);

always #10 clk=~clk;

initial begin

    $dumpfile("RTDC_test.vcd");
    $dumpvars(0,RTDC_test);

    //Initialize Inputs
    clk=0;rst=1;

    //Wait for 10 ns for global reset to finish
    #10;rst=0;
    #3000;
    $finish();

    //Add stimulus here

end

endmodule
