`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:23:17 11/30/2014
// Design Name: 
// Module Name:    mux_4_to_4 
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
module mux(
		input [3:0] Dig0,
		input [3:0] Dig1,
		input [3:0] Dig2,
		input [3:0] Dig3,
		input [1:0] sel,
		output reg [3:0] Y
    );

always @ (sel, Dig0, Dig1, Dig2, Dig3)
begin
	case (sel)
		2'b00:
				Y = Dig0;
		2'b01:
				Y = Dig1;
		2'b10: 
				Y = Dig2;
		2'b11:
				Y = Dig3;
		default:
				Y = 4'b0000000;
	endcase
end

endmodule
