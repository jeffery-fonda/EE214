`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/22/2015 03:22:32 PM
// Design Name: 
// Module Name: equations
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


module top(
//input [4:0] sw,
    input [7:0] sw,
    output led
    
    );
   
   //Challenge 
   assign led = (sw[7] & ~sw[6] & ~sw[5]) & 
                (
                    (~sw[4]) | (sw[4] & ~sw[3]) | (sw[4] & ~sw[2] & ~sw[1]) | (sw[4] & ~sw[2] & ~sw[0] & ~sw[1])
                );

    //Part 1
    /*assign led = (sw[0] | sw[1] | sw[2]) & //ABC
                   (sw[0] | sw[1] | sw[3]) & //ABD
                   (sw[0] | sw[2] | sw[3]) & //ACD
                   (sw[1] | sw[2] | sw[3]) & //BCD
                   (sw[0] | sw[1] | sw[4]) & //ABE
                   (sw[0] | sw[3] | sw[4]) & //ADE
                   (sw[0] | sw[2] | sw[4]) & //ACE
                   (sw[1] | sw[2] | sw[4]) & //BCE
                   (sw[2] | sw[3] | sw[4]) & //CDE
                   (sw[1] | sw[3] | sw[4]);  //BDE*/
    
   /* assign led = (sw[1] | sw[3] | sw[4]) & //B+D+E
                 (sw[0] | sw[1] | sw[4]) & //A+B+E
                 (sw[2] | sw[3] | sw[4]) & //C+D+E
                 (sw[0] | sw[2] | sw[4]) & //A+C+E
                 (sw[0] |~ sw[2] |sw[3] | ~sw[4]) & //A+~C+D+~E
                 (~sw[0] |sw[1]  |sw[2] | sw[4]) & //~A+B+C+E
                 (sw[0] | sw[2] | sw[3]) & //A+C+D
                 (sw[0] | sw[1] | sw[2]) & //A+B+C
                 (sw[0] | sw[1] | sw[3]) & //A+B+D
                 (sw[1] | sw[2] | sw[3]);  //B+C+D*/

    //Part 2
    /*assign led = (sw[0] | sw[1] | ~sw[2] | ~sw[3]| ~sw[4] ) & //1
                 (sw[0] | ~sw[1] | sw[2] |~ sw[3]| ~sw[4] )& //2
                 (sw[0] | ~sw[1] | ~sw[2] | sw[3]| ~sw[4] )&//3
                 (sw[0] | ~sw[1] | ~sw[2] | ~sw[3]| sw[4] )& //4
                 (sw[0] |~ sw[1] |~ sw[2] |~ sw[3]|~ sw[4] )& //5
                 (~sw[0] | sw[1] | sw[2] | ~sw[3]| ~sw[4] )& /////6
                 (~sw[0] | sw[1] | ~sw[2] | sw[3]| ~sw[4] )& //7
                 (~sw[0] | sw[1] | ~sw[2] |~ sw[3]| sw[4] )& //8
                 (~sw[0] | sw[1] | ~sw[2] | ~sw[3]| ~sw[4] )& //9
                 (~sw[0] | ~sw[1] | sw[2] | sw[3]|~ sw[4] )& //10
                 (~sw[0] |~ sw[1] | sw[2] |~ sw[3]|sw[4] ) &//11
                 (~sw[0] | ~sw[1] | sw[2] | ~sw[3]| ~sw[4] )&//12
                 (~sw[0] | ~sw[1] | ~sw[2] | sw[3]| sw[4] )& //13
                 (~sw[0] | sw[1] |~ sw[2] | sw[3]|~ sw[4] )& //14
                 (~sw[0] |~ sw[1] | ~sw[2] |~ sw[3]| sw[4] ) & //15
                 (~sw[0] | ~sw[1] | sw[2]  | ~sw[3]| ~sw[4] );*/
                                                             
endmodule
