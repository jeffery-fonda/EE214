`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/02/2016 09:40:20 AM
// Design Name: 
// Module Name: wrapper
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


module wrapper(
I0, I1, I2, I3, S0, S1, Y0, Y1, Y2, Y3
    );
 input I3, I2, I1, I0, S1, S0;
 
    output Y0, Y1, Y2, Y3;
    wire sdata;
     
    mux input_mux (
        .I3(I3),
        .I2(I2),
        .I1(I1),
        .I0(I0),
        .S1(S1),
        .S0(S0),
        .Y(sdata)
    );
     
    demux output_demux (
        .En(sdata),
        .I1(S1),
        .I0(S0),
        .Y0(Y0),
        .Y1(Y1),
        .Y2(Y2),
        .Y3(Y3)
    );
endmodule
