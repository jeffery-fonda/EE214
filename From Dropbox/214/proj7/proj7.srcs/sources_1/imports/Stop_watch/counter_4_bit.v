`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:14:41 11/30/2013 
// Design Name: 
// Module Name:    counter_4_bit 
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
module counter_4_bit(
    input Cen,
    input clk,
    input rst,
    output reg [3:0] Q,
	 output reg TC
	 );
 
always @ (posedge(clk), posedge(rst))   // When will Always Block Be Triggered
begin
    if (rst == 1'b1)
        Q <= 4'b0;
	 else if (Q == 4'b1001 && Cen == 1'b1)
	     Q <= 4'b0;
    else if (Cen == 1'b1)
        Q <= Q + 1'b1;
end

always @ (posedge(clk), posedge(rst))
begin
	 if (rst == 1'b1)
		  TC <= 1'b0;
	 else if (Q == 4'b1001 && Cen == 1'b1)
		  TC <= 1'b1;
	 else
	     TC <= 1'b0;
end

endmodule
