`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:  
// Design Name: 
// Module Name:    VSyncComparitor 
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
module VSyncComparitor(
   input [9:0] Vcnt,
        output VS
    );
    
    assign VS = (Vcnt < 10'd2) ? 1'b1 : 1'b0;


endmodule
