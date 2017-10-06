`timescale 1ns/ 1ps
 
module sim;
reg clk;
reg rst;
wire [7:0] A;

// Instantiate the Unit Under Test (UUT)
top uut (
.clk(clk),
.rst(rst),
    .A(A)
);
 
// Declare loop index variable
integer k;
always #1 clk = ~clk;
// Apply input stimulus
initial
begin
    rst = 0;
    clk = 0;
    for (k=0; k<2; k=k+1)
        #50000 {rst} = k;
 
    #20 $finish;
end
 
endmodule