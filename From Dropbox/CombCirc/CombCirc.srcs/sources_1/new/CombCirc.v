`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/23/2016 12:56:00 PM
// Design Name: 
// Module Name: CombCirc
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


module CombCirc(
   input A,
input B,
input C,
output X
    );
     
   wire N1, N2, N3;
    
  //3 then 1 is a nor cell
  //1 then 3 is nand  
    
   // AND gate with 1ns delay
   assign #5 N1 = A & B;
   // Not Gate with 1ns delay
   assign #5 N2 = ~B;
   // And Gate with 1ns delay
   assign #5 N3 = N2 & C;
   // Or Gate with 1ns delay
   assign #5 X = N1 | N3;

endmodule
