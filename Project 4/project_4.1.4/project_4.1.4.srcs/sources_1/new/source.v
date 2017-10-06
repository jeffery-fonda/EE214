`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/08/2015 04:36:59 PM
// Design Name: 
// Module Name: source
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


module source(
    input [3:0] I,
    input D,
    input R,
    input F,
    input Ein,
    output [3:0] Y
    );
    
reg [3:0] Y;
     
    always @ (I, Ein)
    begin
        if (Ein == 0)
            Y = I;
        else
            if (R == 0)
                Y = (D == 0) ? {I[2:0], F} : {F, I[3:1]};
            else
                Y = (D == 0) ? {I[2:0], I[3]} : {I[0], I[3:1]};
    end
    
endmodule
