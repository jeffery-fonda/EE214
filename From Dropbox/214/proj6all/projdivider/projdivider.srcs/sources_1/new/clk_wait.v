`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/17/2015 12:48:31 PM
// Design Name: 
// Module Name: clk_wait
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


module clk_wait(
input D,
input clk,
input rst,
output reg Q
    );
    
always @ (posedge clk, posedge rst)
begin

if (rst == 1'b1)
Q = 1'b0;
else
Q = D;
end
    
endmodule
