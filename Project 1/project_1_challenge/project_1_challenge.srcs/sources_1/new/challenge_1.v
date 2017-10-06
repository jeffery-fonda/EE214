`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/09/2015 05:58:32 PM
// Design Name: 
// Module Name: challenge_1
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


module challenge_1(
    input [3:0] button,
    output [7:0] segment_display,
    output [3:0] an
    );
    
    assign segment_display[7:0] = 0;
    assign an[3:0] = button[3:0];
    
endmodule
