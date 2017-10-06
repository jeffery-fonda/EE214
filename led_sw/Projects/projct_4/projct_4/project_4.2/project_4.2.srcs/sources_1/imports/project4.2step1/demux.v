`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    03:00:10 10/09/2013 
// Design Name: 
// Module Name:    demux 
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
module demux(
input [1:0] I,
input En,
output [3:0] Y
    );


reg [3:0] Y;

 
always @ (I, En)
begin

if (En == 0)

Y = 4'h0;
    else 
	 case (I)
	 2'd00: Y = 4'b0001;
    2'd01: Y = 4'b0010;
    2'd10: Y = 4'b0100;
    2'd11: Y = 4'b1000;
	 default: Y = 4'b0000;
endcase
end
	 
	 

//        Y = (I == 3'd0) ? 2'd1 : (
//		  (I == 3'd1) ? 2'd2 : (
//                (I == 3'd2) ? 2'd8 : 2d'16
//					  )
//            );
//    else
//        Y = 2'd16;
//end
// 
//always @ (I, Ein)
//begin
//    if (Ein == 1 && I == 0)
//        Eout = 1'b1;
//    else
//        Eout = 1'b0;
//end
//			always @ (I, Ein)
//begin
//    if (Ein == 1 && I != 0)
//        GS = 1'b1;
//    else
//        GS = 1'b0;		 


endmodule
