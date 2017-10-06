`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/16/2015 10:28:55 AM
// Design Name: 
// Module Name: top
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


module top(
input clk,//clock
input button_n, //stop button
input reset_n, //reset button
output [6:0] segment, // seven segment display
output enable_D1,//right most digit
output enable_D2,//second right most digit
output enable_D3,//second left most digit
output enable_D4,//left most digit
output dp //decimal point
    );

wire clk_point1hz; //counter clock
wire refreshClk; ////refresh the display
reg [3:0] hex; //hexadecimal number
wire [3:0] reg_d0; //count for right most digit
wire [3:0] reg_d1; //count for second right most digit
wire [3:0] reg_d2; //count for second left most digit
wire [3:0] reg_d3; //count for left most digit

//instantiate the clock 
clkgen Uclkgen(
.clk(clk),
.refreshClk(refreshClk),
.clk_point1hz(clk_point1hz)
);

//instantiate enable_sr
enable_sr Uenable(
.refreshClk(refreshClk),
.enable_D1(enable_D1),
.enable_D2(enable_D2),
.enable_D3(enable_D3),
.enable_D4(enable_D4)
);

//instantiate counter
counter Ucounter(
.button_n(button_n),
.reset_n(reset_n),
.clk_point1hz(clk_point1hz),
.reg_d0(reg_d0),
.reg_d1(reg_d1),
.reg_d2(reg_d2),
.reg_d3(reg_d3)
);

//instantiate ssd 
ssd Ussd(
.hex(hex),
.segment(segment),
.dp(dp)
);

//use case satement to assign hexadecimal to each digit
//condition is which digit is on

always @ (*)

case ({enable_D1,enable_D2,enable_D3,enable_D4})
    4'b0111: hex = reg_d0;
    4'b1011: hex = reg_d1;
    4'b1101: hex = reg_d2;
    4'b1110: hex = reg_d3;
    default: hex = 0; 
endcase 

 
endmodule
