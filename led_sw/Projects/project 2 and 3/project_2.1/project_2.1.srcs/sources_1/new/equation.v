`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/15/2015 08:11:24 PM
// Design Name: 
// Module Name: equation
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



// Comment
 
module top (
    input [7:0] sw,
    output [3:0] led
    );
//assign led[0] = (sw[0] & ~sw[1]) | (~sw[0] & sw[1]);
//assign led[1] = (~sw[3] & ~sw[2] & ~sw[1]) | (~sw[3] & sw[2] & sw[1]) | (sw[3] & ~sw[2] & sw[1]);
//assign led[2] = (~sw[7] & ~sw[6] & ~sw[5] & sw[4]) | (~sw[7] & ~sw[6] & sw[5] & sw[4]) |
                    //(~sw[7] & sw[6] & ~sw[5] & ~sw[4]) | (sw[7] & sw[6] & sw[5] & sw[4]);

 assign led[0] = (~sw[0] |~ sw[1]) & (sw[0] | sw[1]);
 assign led[1] = (~sw[3] | ~sw[2] | ~sw[1])&(sw[3]|sw[2]|sw[1]) & (sw[3] | ~sw[2] | sw[1]) & (sw[3] |sw[2] | ~sw[1])&(~sw[3]|~sw[2]|sw[1]);
 assign led[2] = (sw[7] | sw[6] | sw[5] | sw[4]) & (sw[7] |sw[6] | ~sw[5] | sw[4]) &
               (sw[7] | ~sw[6] | sw[5] | ~sw[4]) & (sw[7] |~ sw[6] |~ sw[5] | sw[4])&
               (sw[7] | ~sw[6] | ~sw[5] | ~sw[4]) & (~sw[7] | sw[6] | sw[5] | sw[4])&
               (~sw[7] | sw[6] |~ sw[5] | sw[4]) & (~sw[7] | sw[6] |~ sw[5] | ~sw[4])&
               (~sw[7] | ~sw[6] | sw[5] | sw[4]) & (~sw[7] |~ sw[6] |sw[5] | ~sw[4])&
               (~sw[7] | ~sw[6] |~ sw[5] | sw[4]);
                         
 assign led[3] =(~sw[6] & ~sw[5] & sw[3]) | (sw[6] &~sw[5] & sw[3])&
                (~sw[3] & sw[5] ) | (~sw[5] & sw[3]);
 
 //assign led[0]=(sw[0] & sw[1] & sw[2] & ~sw[3]) | (sw[0] & sw[1] & ~sw[2] & sw[3]) |
              // (sw[0] & ~sw[1] & sw[2] & sw[3]) | (~sw[0] & sw[1] & sw[2] & sw[3]) |
               //(~sw[0] & sw[1] & sw[2] & sw[3]) | (~sw[0] & sw[1] & ~sw[2] &~sw[3])|
              // (~sw[0] & ~sw[1] & sw[2] & ~sw[3]) | (~sw[0] & ~sw[1] & ~sw[2] & sw[3]);

endmodule