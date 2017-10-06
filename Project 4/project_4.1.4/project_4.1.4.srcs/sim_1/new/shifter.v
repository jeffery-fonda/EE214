`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/08/2015 04:55:17 PM
// Design Name: 
// Module Name: shifter
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


module shifter;

    reg [3:0] I;
    reg D;
    reg R;
    reg F;
    reg Ein;
    wire [3:0] Y;
    
    source uut (
        .I(I),
        .D(D),
        .R(R),
        .F(F),
        .Ein(Ein),
        .Y(Y)
    );
    
    integer k;
    
    initial
    begin
        Ein = 1;
        R = 0;
        D = 0;
        F = 0;
        I = 0;
     
        for (k=0; k<16; k=k+1)
            #20 I = k;
            
        Ein = 1;
        R = 0;
        D = 0;
        F = 1;
        I = 0;
                 
        for (k=0; k<16; k=k+1)
            #20 I = k;
            
        Ein = 1;
        R = 1;
        D = 0;
        F = 0;
        I = 0;
                             
        for (k=0; k<16; k=k+1)
             #20 I = k;
             
        Ein = 1;
        R = 1;
        D = 0;
        F = 1;
        I = 0;
                              
        for (k=0; k<16; k=k+1)
             #20 I = k;
             
        Ein = 1;
        R = 0;
        D = 1;
        F = 0;
        I = 0;
                              
        for (k=0; k<16; k=k+1)
             #20 I = k;
             
        Ein = 1;
        R = 0;
        D = 1;
        F = 1;
        I = 0;
                              
        for (k=0; k<16; k=k+1)
             #20 I = k;
             
        Ein = 1;
        R = 1;
        D = 1;
        F = 0;
        I = 0;
                              
        for (k=0; k<16; k=k+1)
             #20 I = k;
             
        Ein = 1;
        R = 1;
        D = 1;
        F = 1;
        I = 0;
                              
        for (k=0; k<16; k=k+1)
             #20 I = k;
     
        #160 $finish;
    end

endmodule
