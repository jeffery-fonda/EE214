`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/02/2016 03:40:52 PM
// Design Name: 
// Module Name: testbench
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


module testbench;

module shifter_test;
    
    reg [3:0] Inputs;
    reg D;
    reg R;
    reg F;
    reg En;
    wire [3:0] Y;
    
    shifter uut (
        .I(Inputs),
        .D(D),
        .R(R),
        .F(F),
        .En(En),
        .Y(Y)
        );
    
    integer x;
    integer y;
    integer z;
    integer a;
   
    initial 
    begin
    
    a = 0;
    x=0;
    y=0;
    z=0;
    
    //Inputs = 9;

    En = 0;
    
    
    R = 0;
    D = 0;
    
    En = 1;
    F = 1;
    

    
    for (a = 0; a<16; a = a+1)begin
    #20 Inputs = a;
     
     for (y = 0; y < 2; y = y + 1)begin            
           #20 R = y;
           for (x = 0; x < 2; x = x+ 1)begin
                   #20 D = x;
                   
                   for (z = 0; z<2; z = z + 1)begin
                   #20 F = z;
                   end
                   
                     
                  
                   end       
    end
    end      
                
        #20 $finish;
        end

                                  
endmodule


