`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:03:38 10/09/2013 
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
    input [3:0] I,
    input [1:0] S,
    output Y
    );


reg Y;

always @(S, I)
      case (S)
         2'd0: Y = I[0];
         2'd1: Y = I[1];
         2'd2: Y = I[2];
         2'd3: Y = I[3];
			
			default : Y = I[0];
      endcase

endmodule