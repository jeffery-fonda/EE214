`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    
// Design Name: 
// Module Name:    
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
		input start,
		input stop,
		input inc,
		input clk,
		input clr,
		output [6:0] seg,
		output [7:0] an,
		output dp
    );

wire clk_div;
wire [1:0] Q_2;
wire run;

wire [3:0] Dig0;
wire [3:0] Dig1;
wire [3:0] Dig2;
wire [3:0] Dig3;

wire [3:0] Y;

Clk_Div clkdiv(
		.clk(clk),
		.rst(clr),
		.clk_div(clk_div)
	);


controller control(
		.start(start),
		.stop(stop),
		.inc(inc),
		.clk(clk_div),
		.rst(clr),
		.Cen(run)
	);

counter counter1(
		.clk(clk_div),
		.rst(clr),
		.Q(Q_2)
	);


seg_counter counter2(
		.clk(clk_div),
		.rst(clr),
		.Cen(run),
		.Dig0(Dig0),
		.Dig1(Dig1),
		.Dig2(Dig2),
		.Dig3(Dig3)
	);
	
mux mux1(
		.Dig0(Dig0),
		.Dig1(Dig1),
		.Dig2(Dig2),
		.Dig3(Dig3),
		.sel(Q_2),
		.Y(Y)
	);

andecoder andecoder1(
		.I(Q_2),
		.Y(an),
		.dp(dp)
	);

segdecoder segdecoder1(
		.segin(Y),
		.seg(seg)
	);	

endmodule
