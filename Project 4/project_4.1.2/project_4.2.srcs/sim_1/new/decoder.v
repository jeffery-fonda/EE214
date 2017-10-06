`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/08/2015 06:20:23 PM
// Design Name: 
// Module Name: decoder
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


module decoder;

    reg [2:0] I;
    wire [7:0] Y;
    
    source uut (
        .I(I),
        .Y(Y)
    );
    
    integer k;
    
    initial
    begin
        I = 0;
     
        for (k=0; k<8; k=k+1)
            #20 I = k;
     
        #160 $finish;
    end

endmodule