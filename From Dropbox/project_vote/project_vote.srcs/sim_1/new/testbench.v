`timescale 1ns / 1ps

module testbench;
// Inputs
reg [4:0] sw;
// Outputs
wire led;
// Instantiate the Unit Under Test (UUT)
major5 uut (
    .sw(sw),
    .led(led)
);
// Declare loop index variable
integer k;
 
// Apply input stimulus
initial
begin
    sw = 0;
 
    for (k=0; k<32; k=k+1)
        #20 sw = k;
 
    #20 $finish;
end
endmodule
