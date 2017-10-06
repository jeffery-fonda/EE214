`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    
// Design Name: 
// Module Name:    VCounter 
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
module VCounter(
    input En,
    input clk,
    input rst,
    output reg [9:0] Q
);
    
   always @ (posedge(clk), posedge(rst))
   begin
       if (rst == 1'b1)
           Q <= 10'b0;
       else if ((En == 1'b1) && (Q == 10'd524))
           Q <= 10'b0;
       else if (En == 1'b1)
           Q <= Q + 1'b1;
   end

endmodule
