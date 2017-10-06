`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/02/2016 04:02:26 PM
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
reg [3:0] I;
    reg Ein;
    wire [1:0] Y;
    wire GS;
    wire Eout;
    
    prio_encode_logic uut(
    .I(I),
    .Ein(Ein),
    .Y(Y),
    .GS(GS),
    .Eout(Eout)
    );
    
    integer k;
    
    initial
    begin
  
        Ein=1;
        I=0;
        
     
        for (k=0; k<8; k=k+1)
        #20 I=k;
           
        #20 $finish;
    end
    
endmodule
