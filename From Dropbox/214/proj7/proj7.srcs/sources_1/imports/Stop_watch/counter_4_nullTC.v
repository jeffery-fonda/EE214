`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:23:49 11/30/2013 
// Design Name: 
// Module Name:    counter_4_nullTC 
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
module counter_4_nullTC(
    input Cen1,
	 input Cen2,
	 input Cen3,
    input clk,
    input rst,
    output reg [3:0] Q
	 );
 
always @ (posedge(clk), posedge(rst))   // When will Always Block Be Triggered
begin
    if (rst == 1'b1)
        // How Output reacts when Reset Is Asserted
        Q <= 8'b0;
	 else if (Q == 4'b1010 && Cen1 == 1'b1 && Cen2 == 1'b1 && Cen3 == 1'b1)
	     Q <= 8'b0;
    else if (Cen1 == 1'b1 && Cen2 == 1'b1 && Cen3 == 1'b1)
        // How Output reacts when Rising Edge of Clock Arrives?
        Q <= Q + 1'b1;
end

endmodule
