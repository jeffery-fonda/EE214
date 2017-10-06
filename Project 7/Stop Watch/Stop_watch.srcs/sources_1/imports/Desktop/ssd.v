`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/16/2015 10:25:00 AM
// Design Name: 
// Module Name: ssd
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


module ssd(
input [3:0] hex, //hexadecimal number, 2^4=16 from 0 to F. Other use until 9
output reg [6:0] segment, // 7 segment output
output dp //decimal point
    );

//active low logic to turn on the segment
//use case statement to represent each hexadecimal number
always @ (*)
   case (hex) 
		0: segment = 7'b0000001;
		1: segment = 7'b1001111;
		2: segment = 7'b0010010;
		3: segment = 7'b0000110;
		4: segment = 7'b1001100;
		5: segment = 7'b0100100;
		6: segment = 7'b0100000;
		7: segment = 7'b0001101;
		8: segment = 7'b0000000;
		9: segment = 7'b0000100;
      default: segment = 7'b0000001; //default is 0 
   endcase	
assign dp = 4'b1111; //turn off the decimal point as we don't need it
    
endmodule
