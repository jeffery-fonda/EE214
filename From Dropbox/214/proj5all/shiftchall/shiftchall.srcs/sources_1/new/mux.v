`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:18:04 11/07/2014 
// Design Name: 
// Module Name:    mux 
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
    input [1:0] sw,
    input [26:0] clkdiv,
    output reg clkout
    );
 
always @ (sw,clkout,clkdiv)
 
begin 
	case (sw) 
 
      2'b00:
       clkout = clkdiv[26];
                                
      2'b01:
       clkout = clkdiv[25];
                                
      2'b10:
       clkout = clkdiv[24];
                                
      2'b11:
       clkout = clkdiv[23];

	default:
       clkout = clkdiv[26];

endcase 
 
end

endmodule
