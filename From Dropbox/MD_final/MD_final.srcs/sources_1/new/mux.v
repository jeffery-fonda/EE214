`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/03/2016 09:14:34 AM
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
I0, I1, I2, I3, S0, S1, Y
    );
    input I0, I1, I2, I3, S0, S1;
    output reg Y;
    
  /*  assign Y = ( S1== 1'd0&&S0==1'd0) ? I0 : (
                    (S0 == 1'd1&&S1==1'd0) ? I1 : (
                        (S1 == 1'd1&&S0==1'd0) ? I2 : I3
                    )
                );
                */
                always @ (S0,S1, I0, I1, I2, I3)
                begin
                    if ( S1== 1'd0&&S0==1'd0)
                        Y = I0;
                    else if (S0 == 1'd1&&S1==1'd0)
                        Y = I1;
                    else if (S1 == 1'd1&&S0==1'd0)
                        Y = I2;
                    else
                        Y = I3;
                end
endmodule
