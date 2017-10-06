`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/08/2015 05:39:40 PM
// Design Name: 
// Module Name: encoder
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


module encoder;

    reg [3:0] I;
    reg Ein;
    wire [1:0] Y;
    wire GS;
    wire Eout;
    
    source uut (
        .I(I),
        .Ein(Ein),
        .Y(Y),
        .GS(GS),
        .Eout(Eout)
    );
    
    integer k;
    
    initial
    begin
        Ein = 1;
        I = 0;
     
        for (k=0; k<16; k=k+1)
            #20 I = k;
     
        #20 $finish;
    end

endmodule
