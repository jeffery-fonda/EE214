`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/01/2016 07:49:15 PM
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
  input  I1,
  input  I2,
  input  I3,
  input  S1,
  input S0,
  output Y0, Y1, Y2, Y3
    );
reg  Y0, Y1, Y2, Y3;
     
 always @ (S1,S0, I0, I1, I2, I3)
begin
    if (S0==0&&S1==0)
        Y0 = I0;
    else if (S0==0&&S1==1)
        Y1 = I1;
    else if (S1 ==0&&S0==1)
        Y2 = I2;
    else
        Y3 = I3;
end
endmodule
