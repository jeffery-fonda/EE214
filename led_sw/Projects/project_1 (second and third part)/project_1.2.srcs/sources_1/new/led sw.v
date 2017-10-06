`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/10/2015 05:28:16 PM
// Design Name: 
// Module Name: led sw
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


module led_sw(
    output led,
    output an0,
    output an1,
    output an2,
    output an3,
    
    output seg0,
    output seg1,
    output seg2,
    output seg3,
    output seg4,
    output seg5,
    output seg6,
     
    input sw,
    input btnU,
    input btnD,
    input btnL,
    input btnR
    
    );
    
assign led = sw;

assign an0 = btnU;
assign an1 = btnD;
assign an2 = btnL;
assign an3 = btnR;

assign seg0 = 0;
assign seg1 = 0;
assign seg2 = 0;
assign seg3 = 0;
assign seg4 = 0;
assign seg5 = 0;
assign seg6 = 0;

endmodule
