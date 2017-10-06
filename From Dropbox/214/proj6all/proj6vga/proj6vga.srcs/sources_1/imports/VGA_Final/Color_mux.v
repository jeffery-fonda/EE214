`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    
// Design Name: 
// Module Name:    Color_mux 
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
module Color_mux(
    input RGBSig,
        output [3:0] R,
        output [3:0] G,
        output [3:0] B
    );
    
    
    assign R = (RGBSig == 1'b1) ? 4'b1111 : 4'b0000;
    assign G = (RGBSig == 1'b1) ? 4'b1111 : 4'b0000;
    assign B = (RGBSig == 1'b1) ? 4'b1111 : 4'b0000;   


endmodule
