`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/18/2015 02:40:24 PM
// Design Name: 
// Module Name: source
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


module source(
    input [3:0] sw,
    output [0:0] led
    );
    
    /*assign led[0] = (sw[0] & ~sw[1]) | (~sw[0] & sw[1]);
    
    assign led[1] = (~sw[3] & ~sw[2] & ~sw[1]) | (~sw[3] & sw[2] & sw[1]) | (sw[3] & ~sw[2] & sw[1]);
    
    assign led[2] = (~sw[7] & ~sw[6] & ~sw[5] & sw[4]) | (~sw[7] & ~sw[6] & sw[5] & sw[4]) |
                    (~sw[7] & sw[6] & ~sw[5] & ~sw[4]) | (sw[7] & sw[6] & sw[5] & sw[4]);
                    
    assign led[3] = (sw[3] & ~sw[4] & ~sw[5] & ~sw[6]) | (sw[3] & sw[4] & ~sw[5] & ~sw[6]) |
                    (~sw[3] & ~sw[4] & sw[5] & ~sw[6]) | (~sw[3] & sw[4] & sw[5] & ~sw[6]) | 
                    (sw[3] & ~sw[4] & ~sw[5] & sw[6]) | (sw[3] & sw[4] & ~sw[5] & sw[6]) | 
                    (~sw[3] & ~sw[4] & sw[5] & sw[6]) | (~sw[3] & sw[4] & sw[5] & sw[6]);
                    
    assign led[3] = (sw[3] | ~sw[4] | ~sw[5] | ~sw[6]) & (sw[3] | sw[4] | ~sw[5] | ~sw[6]) &
                    (~sw[3] | ~sw[4] | sw[5] | ~sw[6]) & (~sw[3] | sw[4] | sw[5] | ~sw[6]) & 
                    (sw[3] | ~sw[4] | ~sw[5] | sw[6]) & (sw[3] | sw[4] | ~sw[5] | sw[6]) & 
                    (~sw[3] | ~sw[4] | sw[5] | sw[6]) & (~sw[3] | sw[4] | sw[5] | sw[6]);*/
                    
    assign led[0] = (sw[0] & ~sw[1] & ~sw[2] & ~sw[3]) | (~sw[0] & sw[1] & ~sw[2] & ~sw[3]) |
                    (~sw[0] & ~sw[1] & sw[2] & ~sw[3]) | (~sw[0] & ~sw[1] & ~sw[2] & sw[3]) |
                    (~sw[0] & sw[1] & sw[2] & sw[3]) | (sw[0] & sw[1] & sw[2] & ~sw[3]) |
                    (sw[0] & sw[1] & ~sw[2] & sw[3]) | (~sw[0] & sw[1] & sw[2] & sw[3]);
    
endmodule
