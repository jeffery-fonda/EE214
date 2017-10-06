`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/27/2015 03:27:51 PM
// Design Name: 
// Module Name: simglitch
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
integer k = 0;
 
 
 
// Inputs
reg  A,B,C;
// Outputs
wire X ;
CombCirc uut(
.A(A),
.B(B),
.C(C),
.X(X)
);


initial begin
    // Initialize Inputs
    A = 0;
    B = 0;
    C = 0;
 
    // Wait 100 ns for global reset to finish
    // Add stimulus here
 
    for(k = 0; k < 4; k=k+1)
    begin
        {A,C} = k;
        #5 B = 1;
        #5 B = 0;
        #5 ;
    end
end
endmodule