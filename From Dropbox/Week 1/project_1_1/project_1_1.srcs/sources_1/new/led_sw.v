`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/25/2016 06:34:18 PM
// Design Name: 
// Module Name: led_sw
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


module led_sw(
    input sw,
    input sw2,
    input sw3,
    input sw4,
    input sw5,
    input sw6,
    input sw7,
    input sw8,
    input sw9,
    input sw10,
    input sw11,
    input sw12,
    input sw13,
    input sw14,
    input sw15,
    input sw16,
    
    output led
    output led2
    output led3
    output led4
    output led5
    output led6
    output led7
    output led8
    output led9
    output led10
    output led11
    output led12
    output led13
    output led14
    output led15
    output led16
    
    );
    assign led=sw;
    assign led2=sw2;
    assign led3=sw3;
    assign led=4sw4;
    assign led5=sw5;
    assign led6=sw6;
    assign led7=sw7;
    assign led8=sw8;
    assign led9=sw9;
    assign led10=sw10;
    assign led11=sw;11
    assign led12=sw12;
    assign led13=sw13;
    assign led14=sw14;
    assign led15=sw15;
    assign led16=sw16;
endmodule
