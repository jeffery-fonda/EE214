`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/18/2016 11:28:43 AM
// Design Name: 
// Module Name: sources
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


module sources(
    input [3:0] I,
    input [1:0] S,
    output Y
    );
    
    reg Y;
    
    always @(S, I)
          case (S)
             2'd0: Y = I[0];
             2'd1: Y = I[1];
             2'd2: Y = I[2];
             2'd3: Y = I[3];
                
                default : Y = I[0];
          endcase
    
    endmodule
    
endmodule
