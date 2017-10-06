`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/08/2015 03:29:50 PM
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
    input [1:0] Sel,
    output [1:0] Y
    );
    
    reg [1:0] Y;
     
    always @ (Sel, I[0], I[1], I[2], I[3])
    begin
        case (Sel)
            2'd0:
                Y = I[0];
            2'd1:
                Y = I[1];
            2'd2:
                Y = I[2];
            2'd3:
                Y = I[3];
            default:
                Y = 2'd0;
        endcase
    end
    
    
    
endmodule
