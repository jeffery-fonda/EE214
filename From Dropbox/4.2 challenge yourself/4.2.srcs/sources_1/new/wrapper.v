`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/28/2016 04:26:54 PM
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
    I0, I1, I2, I3, Y0, Y1, Y2, Y3, clk, tData
    );
    
    input I3, I2, I1, I0;
    output Y0, Y1, Y2, Y3;
    output tData;
    input clk;
    
    wire S0, S1;    
    wire sdata; 
    wire t3, t2, t1, t0;
    
    assign tData = sdata;       
    
    counter data_sel(
        .clk(clk),
        .Y1(S1),
        .Y0(S0)
        );

    latch the_latch(
        .I0(t0),
        .I1(t1),
        .I2(t2),
        .I3(t3),
        .S0(S0),
        .S1(S1),
        .O0(Y0),
        .O1(Y1),
        .O2(Y2),
        .O3(Y3)
        );
                           
    mux input_mux(
        .I0(I0),
        .I1(I1),
        .I2(I2),
        .I3(I3),
        .S0(S0),
        .S1(S1),
        .Y(sdata)
        );

    demux output_demux (
        .En(sdata),
        .I0(S0),
        .I1(S1),
        .Y0(t0),
        .Y1(t1),
        .Y2(t2),
        .Y3(t3)
    );                                               
    
endmodule
