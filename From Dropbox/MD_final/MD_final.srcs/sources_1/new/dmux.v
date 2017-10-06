`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/03/2016 09:19:58 AM
// Design Name: 
// Module Name: dmux
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


module dmux(
En, I0, I1, Y0, Y1, Y2, Y3
    );
    
    input En, I0, I1;
    output reg Y0, Y1, Y2, Y3;
    
    reg Y0,Y1,Y2,Y3;
    always @ (I0,I1,En)
    begin
    
    case(I0&&I1)
    (I0==0&&I1==0):
        Y0=En;
      
  
    (I0==1&&I1==0):
 
        
        Y1=En;
       
        
    (I0==0&&I1==1):
          
           Y2=En;
         
 
          
        
     (I0==1&&I1==1):
         
            Y3=En;
             
      default:
           Y0=En;
         endcase  
    end
  
    
    
endmodule
