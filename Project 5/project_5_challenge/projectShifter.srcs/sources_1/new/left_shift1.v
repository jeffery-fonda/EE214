`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:22:27 11/06/2013 
// Design Name: 
// Module Name:    left_shift 
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
module left_shift(
    input clk,
    input rst,
    output reg [7:0] Q
    );
always @(posedge clk, posedge rst)
	if (rst == 1) begin
		Q <= 8'b00000001;
	end
	
	else	begin
		Q <= {Q[6:0], Q[7]};
	end

endmodule
