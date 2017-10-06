`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/26/2016 04:23:19 PM
// Design Name: 
// Module Name: demux
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


module demux(
    En, I0, I1, Y0, Y1, Y2, Y3
    );
    
    input En, I0, I1;
    output reg Y0, Y1, Y2, Y3;
    
    
    always @ (En, I0, I1)
    begin
        if (En == 0)begin
            Y0 = 0;
            Y1 = 0;
            Y2 = 0;
            Y3 = 0;
            end        
        else if (En == 1 && I0 ==0 && I1==0)begin
            Y0 = 1;
            Y1 = 0;
            Y2 = 0;
            Y3 = 0;
            end
            
        else if (En == 1 && I0 == 1 && I1 == 0)begin
            Y0 = 0;
            Y1 = 1;
            Y2 = 0;
            Y3 = 0;
            end
            
        else if (En == 1 && I0 == 0 && I1 == 1)begin
            Y0 = 0;
            Y1 = 0;
            Y2 = 1;
            Y3 = 0;
            end
            
        else begin
            Y0 = 0;
            Y1 = 0;
            Y2 = 0;
            Y3 = 1;
            end    
    end
    
endmodule
