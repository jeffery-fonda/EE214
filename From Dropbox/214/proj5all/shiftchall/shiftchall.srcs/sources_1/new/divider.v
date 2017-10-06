`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:53:22 11/07/2014 
// Design Name: 
// Module Name:    clk_divider 
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
module clk_divider(
    input clk,
    input rst,
    input [2:0] sw,
//    input [1:0] swInputToClockDiv,
//    output ClockOut,
    output [7:0] led
    );

//wire [26:0] din;
//wire [26:0] clkdiv;

//dff dff_inst0 (
//    .clk(clk), 
//    .rst(rst),
//    .D(din[0]),
//    .Q(clkdiv[0])
//);

//mux instance_name (
//    .sw(swInputToClockDiv), 
//    .clkdiv(clkdiv[26:0]), 
//    .clkout(ClockOut)
//    );

shifter shifter_inst (
.clk(clk),
.rst(rst),
.sw(sw),
.led(led)
);

//genvar i;
 
//generate
//for (i = 1; i < 27; i=i+1) 
//begin : dff_gen_label
//    dff dff_inst (
//        .clk(clkdiv[i-1]),
//        .rst(rst),
//        .D(din[i]),
//        .Q(clkdiv[i])
//    );
//    end
//endgenerate;

//assign din = ~clkdiv;
//assign ClockOut = clkdiv[26];

endmodule