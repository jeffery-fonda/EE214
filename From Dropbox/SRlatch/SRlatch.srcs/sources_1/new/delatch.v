`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/24/2016 07:20:12 PM
// Design Name: 
// Module Name: delatch
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


module delatch(
input d,g,
output Q,Qn
    );
    wire d;
    wire g;
    assign #1 d=~(g&d);
    assign #1 g=~(d);
endmodule
