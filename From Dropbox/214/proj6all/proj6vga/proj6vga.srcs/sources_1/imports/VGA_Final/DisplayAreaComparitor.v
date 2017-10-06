`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:   
// Design Name: 
// Module Name:    DisplayAreaComparitor 
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
module DisplayAreaComparitor(
   input [9:0] Hcnt,
        input [9:0] Vcnt,
        output RGBSig
    ); 
       
       
    //assign RGBSig = (( (Hcnt >= 10'd144) && (Hcnt < 10'd784) ) && ( (Vcnt >= 10'd35) && (Vcnt < 10'd515) )) ? 1'b1 : 1'b0;	//White Screen
    assign RGBSig = (( (Hcnt >= 10'd459) && (Hcnt < 10'd464) ) || ( (Vcnt >= 10'd270) && (Vcnt < 10'd275) )) ? 1'b1 : 1'b0;	//Crosshair
    //assign RGBSig = (( (Hcnt >= 10'd459) && (Hcnt < 10'd464) ) && ( (Vcnt >= 10'd270) && (Vcnt < 10'd275) )) ? 1'b1 : 1'b0;	//Box
   

endmodule
