`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    
// Design Name: 
// Module Name:    counter 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module counter(
    input clk,
    input rst,
    output reg [1:0] Q
    );
 
always @ (posedge(clk), posedge(rst))   
begin
    if (rst == 1'b1)
        Q <= 2'b0;
    else
        Q <= Q + 1'b01;
end
 
endmodule
