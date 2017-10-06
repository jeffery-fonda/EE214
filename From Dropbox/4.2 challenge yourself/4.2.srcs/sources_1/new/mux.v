`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/26/2016 04:18:04 PM
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
    
    always @ (*)
    begin
        if (S0 == 0 && S1 == 0)begin
            Y = I0;
            end
        else if (S0==1 && S1==0)begin
            Y = I1;
            end
        else if (S0==0 && S1==1)begin
            Y = I2;
            end
        else begin
            Y = I3;
            end
    end          
                        
         
    
//    assign Y = (~S0 && ~S1) ? I0 : (
//                    (S0 && ~S1) ? I1 : (
//                        (~S0 && S1) ? I2 : I3
//                    )
//                );
    
endmodule
