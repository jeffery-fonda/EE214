`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:42:37 11/30/2013 
// Design Name: 
// Module Name:    bin2seg_decoder 
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
module segdecoder(
		input [3:0] segin,
		output reg [6:0] seg
    );

always @ (segin)
begin
		case (segin)
			4'b0000:
				seg = 7'b1000000;
			4'b0001:
				seg = 7'b1111001;
			4'b0010:
				seg = 7'b0100100;
			4'b0011:
				seg = 7'b0110000;
			4'b0100:
				seg = 7'b0011001;
			4'b0101:
				seg = 7'b0010010;
			4'b0110:
				seg = 7'b0000010;
			4'b0111:
				seg = 7'b1111000;
			4'b1000:
				seg = 7'b0000000;
			4'b1001:
				seg = 7'b0011000;
			default:
				seg = 7'b1000000;
		endcase
end

endmodule
