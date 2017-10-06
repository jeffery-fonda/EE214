`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/27/2015 04:14:13 PM
// Design Name: 
// Module Name: simSR
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

 
 
 
// Inputs
reg   D,G;
// Outputs
wire Q,Qn ;
sr_latch uut(
.D(D),
.G(G),
.Q(Q),
.Qn(Qn)
);


initial begin
    // Initialize Inputs
    D = 1;
    G = 1;
 
    // Add stimulus here
    #100  D = 0;
    #100 D = 1;
    #100 G = 1;
    #100 G = 1;
    #100 D = 0;
        G = 1;
    #100 D = 1;
        G = 1;
    #100 D = 0;
        G = 1;
    #100 D=1;
        G=1;
    #100  D=0; 
    #100 ;
end
    
endmodule
