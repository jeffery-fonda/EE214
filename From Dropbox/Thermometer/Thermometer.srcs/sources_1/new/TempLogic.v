`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/10/2016 02:00:19 PM
// Design Name: 
// Module Name: TempLogic
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


module TempLogic(
    input [7:0] sw,
    output led0,
    output led7,
    output led5,
    input btnC
    );

    assign led0=~btnC;
    assign led7=~btnC;
    assign led5=(sw[7]&~sw[6]&~sw[5]&~sw[4])||(sw[7]&~sw[6]&~sw[5]&~sw[3])||(sw[7]&~sw[6]&~sw[5]&~sw[2]&~sw[1])
                  ||(sw[7]&~sw[6]&~sw[5]&~sw[2]&~sw[0]);
endmodule
   
