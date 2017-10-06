`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/21/2015 05:17:23 PM
// Design Name: 
// Module Name: rapper
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


module rapper(
    input start,
    input stop,
    input inc,
    input clk,
    input clr,
    output [6:0] C,
    output DP,
    output [4:0] AN
    );
    
    wire clk100mhz;
    
    clk_div(
    .clk(clk),
    .rst(clr),
    .clk_div(clk100mhz)
    );
    
endmodule
