`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/02/2016 05:57:55 PM
// Design Name: 
// Module Name: Logic
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


module Logic(
    input [3:0] sw,
    output [0:0] led
    );
    assign led[0]=(~sw[0]&~sw[1]&~sw[2]&sw[3])|
                  (~sw[0]&~sw[1]&sw[2]&~sw[3])|
                  (~sw[0]&sw[1]&~sw[2]&~sw[3])|
                  (sw[0]&~sw[1]&~sw[2]&~sw[3])|
        (~sw[0]&sw[1]&sw[2]&sw[3])|
        (sw[0]&~sw[1]&sw[2]&sw[3])|
        (sw[0]&sw[1]&sw[2]&~sw[3])|
        (sw[0]&sw[1]&~sw[2]&sw[3])
        ;
endmodule
