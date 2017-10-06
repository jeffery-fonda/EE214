`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:13:51 11/30/2013 
// Design Name: 
// Module Name:    Digit_decimal_count 
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
module seg_counter(
		input clk,
		input rst,
		input Cen,
		output [3:0] Dig0,
		output [3:0] Dig1,
		output [3:0] Dig2,
		output [3:0] Dig3
    );

wire TC1;
wire TC2;
wire TC3;
wire blank;

localparam constant1 = 1'b1;

counter_4_bit dig0(
		.Cen(Cen),
		.clk(clk),
		.rst(rst),
		.Q(Dig0),
		.TC(TC1)
	);

counter_4_bit dig1(
		.Cen(TC1),
		.clk(clk),
		.rst(rst),
		.Q(Dig1),
		.TC(TC2)
	);


counter_4_bit dig2(
		.Cen(TC2),
		.clk(clk),
		.rst(rst),
		.Q(Dig2),
		.TC(TC3)
	);
	

counter_4_bit dig3(
		.Cen(TC3),
		.clk(clk),
		.rst(rst),
		.Q(Dig3),
		.TC(blank)
	);



endmodule
