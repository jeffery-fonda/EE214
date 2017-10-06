`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/10/2016 02:40:10 PM
// Design Name: 
// Module Name: testbench
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


module testbench;
// Inputs
reg [7:0] sw;
// Outputs
wire led5;
// Instantiate the Unit Under Test (UUT)
TempLogic uut (
    .sw(sw),
    .led5(led5)
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
end;
endmodule
