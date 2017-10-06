`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/17/2015 12:40:32 PM
// Design Name: 
// Module Name: sum
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


module sum(
input A,
input B,
input Cin,
output sum,
output Cout
    );

assign Cout = (A & B) | (A & Cin) | (B & Cin);
assign sum = A ^ B ^ Cin;

endmodule
