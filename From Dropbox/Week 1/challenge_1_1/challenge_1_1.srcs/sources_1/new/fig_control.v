`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/25/2016 06:53:21 PM
// Design Name: 
// Module Name: fig_control
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


module fig_control(
    output cas,
    output cbs,
    output ccs,
    output cds,
    output ces,
    output cfs,
    output cgs,
    output dps,
    input sscas,
    input sscbs,
    input ssccs,
    input sscds,
    input ssces,
    input sscfs,
    input sscgs,
    input ssdps,
    input btnl,
    input btnu,
    input btnr,
    input btnd,
    output an0,
    output an1,
    output an2,
    output an3
    );
    assign cas=sscas;
    assign cbs=sscbs;
    assign ccs=ssccs;
    assign cds=sscds;
    assign ces=ssces;
    assign cfs=sscfs;
    assign cgs=sscgs;
    assign dps=ssdps;
    assign an0=btnl;
    assign an1=btnu;
    assign an2=btnr;
    assign an3=btnd;
endmodule
