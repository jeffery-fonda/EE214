`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:40:58 10/17/2013 
// Design Name: 
// Module Name:    Bin2Seg 
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
module Bin2Seg(

input [3:0] sw,
input [3:0] sw1,
input btn,
output [7:0] seg,
output [3:0] an

    );
	 
	 assign an[1] = btn;
     assign an[0] = ~ btn;
     assign an[2] = 7'd1111111;
	 assign an[3] = 7'd1111111;
	 
	 reg [7:0] seg;
	 wire[3:0] sw;
	 wire btn;
	 wire [3:0] sw1;
	 
			 always @ (sw, sw1)
          begin
			 if (btn == 1)
	       case (sw)
	        4'b0000 : seg = 7'b1000000; 
            4'b0001 : seg = 7'b1111001;
            4'b0010 : seg = 7'b0100100; 
            4'b0011 : seg = 7'b0110000; 
            4'b0100 : seg = 7'b0011001; 
		    4'b0101 : seg = 7'b0010010;
            4'b0110 : seg = 7'b0000010; 	
            4'b0111 : seg = 7'b1111000; 
		    4'b1000 : seg = 7'b0000000; 
		    4'b1001 : seg = 7'b0011000; 
			4'b1010 : seg = 7'b0001000; 
			4'b1011 : seg = 7'b0000011; 
			4'b1100 : seg = 7'b1110000; 
			4'b1101 : seg = 7'b0100001; 
			4'b1110 : seg = 7'b0000110; 
			4'b1111 : seg = 7'b0001110; 
            default : seg = 7'b1111111; 
         endcase
			
			else if (btn == 0)
			
			case (sw1)
			4'b0000 : seg = 7'b1000000; 
            4'b0001 : seg = 7'b1111001;
            4'b0010 : seg = 7'b0100100; 
            4'b0011 : seg = 7'b0110000; 
            4'b0100 : seg = 7'b0011001; 
			4'b0101 : seg = 7'b0010010;
            4'b0110 : seg = 7'b0000010; 	
            4'b0111 : seg = 7'b1111000; 
			4'b1000 : seg = 7'b0000000; 
			4'b1001 : seg = 7'b0011000; 
			4'b1010 : seg = 7'b0001000; 
			4'b1011 : seg = 7'b0000011; 
			4'b1100 : seg = 7'b1110000; 
			4'b1101 : seg = 7'b0100001; 
			4'b1110 : seg = 7'b0000110; 
			4'b1111 : seg = 7'b0001110; 
            default : seg = 7'b1111111; 
		endcase
	 end
	 
endmodule
