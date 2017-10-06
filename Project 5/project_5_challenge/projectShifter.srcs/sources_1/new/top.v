`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:18:13 11/06/2013 
// Design Name: 
// Module Name:    top 
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
module top(
    input clk,
    output [15:0] led,
    input rst,
	input [2:0] sw
    );
wire q;

clk_divider clock_divider (
	.clk(clk),
	.rst(rst),
	.speed(q),
	.sw(sw)
);

left_shift left_shift1 (
    .clk(q), 
    .rst(rst), 
    .Q(led[7:0])
    );

left_shift left_shift2 (
	.clk(q),
	.rst(rst),
	.Q(led[15:8])
	);


endmodule
