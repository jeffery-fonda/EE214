`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/02/2016 03:27:33 PM
// Design Name: 
// Module Name: mux
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


module mux(
  input  I0,
input I1,
input  I2,
input  I3,
input  Sel,
output  Y
    );
    
    reg [1:0] Y;
     
    always @ (Sel, I0, I1, I2, I3)
    begin
        case (Sel)
            2'd0:
                Y = I0;
            2'd1:
                Y = I1;
            2'd2:
                Y = I2;
            2'd3:
                Y = I3;
            default:
                Y = 2'd0;
        endcase
    end
endmodule
