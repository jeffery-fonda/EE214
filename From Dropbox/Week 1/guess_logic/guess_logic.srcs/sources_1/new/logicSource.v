`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/02/2016 05:33:10 PM
// Design Name: 
// Module Name: logicSource
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


module logicSource(
    input [7:0] sw,
    output [2:0] led
    );
    assign led[0]=(sw[0]&~sw[1])|(~sw[0]&sw[1]);
    assign led[1]=(~sw[3]&~sw[2]&~sw[1])|(~sw[3]&sw[2]&sw[1])|(sw[3]&~sw[2]&sw[1]);
    assign led[2] = (~sw[7] & ~sw[6] & ~sw[5] & sw[4]) | (~sw[7] & ~sw[6] & sw[5] & sw[4]) |
                    (~sw[7] & sw[6] & ~sw[5] & ~sw[4]) | (sw[7] & sw[6] & sw[5] & sw[4]);
endmodule