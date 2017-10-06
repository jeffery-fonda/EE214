`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/08/2015 06:26:51 PM
// Design Name: 
// Module Name: multiplexor
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


module multiplexor;

    reg [3:0] I;
    reg [1:0] Sel;
    wire [1:0] Y;
    
    source uut (
        .I(I),
        .Sel(Sel),
        .Y(Y)
    );
    
    integer k;
    
    initial
    begin
    I = 0;
    Sel = 0;
     
    for (k=0; k<4; k=k+1)
    #20 I = k;
            
    Sel = 1;   
    
    for (k=0; k<4; k=k+1)
    #20 I = k;
                
    Sel = 2;   
                    
    for (k=0; k<4; k=k+1)
    #20 I = k; 
                                
    Sel = 3;   
                                    
    for (k=0; k<4; k=k+1)
    #20 I = k;
     
        #160 $finish;
    end

endmodule
