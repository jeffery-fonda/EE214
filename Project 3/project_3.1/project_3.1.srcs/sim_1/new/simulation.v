
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/22/2015 03:25:19 PM
// Design Name: 
// Module Name: majority_of_five_test_fixture
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

`timescale 1ns/ 1ps
 
module testbench;
 
// Inputs
reg [7:0] sw;
// Outputs
wire led;
 
// Instantiate the Unit Under Test (UUT)
top uut (
    .sw(sw),
    .led(led)
);
 
// Declare loop index variable
integer k;
 
// Apply input stimulus
initial
begin
    sw = 0;
 
    for (k=0; k<256; k=k+1)
        #20 sw = k;
     #20 $finish;
end
 
endmodule