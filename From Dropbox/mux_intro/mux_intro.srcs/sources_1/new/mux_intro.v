`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/29/2016 07:23:09 PM
// Design Name: 
// Module Name: mux_intro
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


module mux_intro(
   input [1:0] I0,
 input [1:0] I1,
 input [1:0] I2,
 input [1:0] I3,
 input [1:0] Sel,
 output [1:0] Y
    );
    
/*assign Y = (Sel == 2'd0) ? I0 : (
                    (Sel == 2'd1) ? I1 : (
                        (Sel == 2'd2) ? I2 : I3
                    )
                );
                */
/*                 
                always @ (Sel, I0, I1, I2, I3)
                begin
                    if (Sel == 2'd0)
                        Y = I0;
                    else if (Sel == 2'd1)
                        Y = I1;
                    else if (Sel == 2'd2)
                        Y = I2;
                    else
                        Y = I3;
                end
*/
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
