`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 
// Design Name: 
// Module Name:    Wrapper 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Wrapper(
    input clk,
        input rst,
        output HS,
        output VS,
        output [3:0] R,
        output [3:0] G,
        output [3:0] B
    );
    
    wire clk_div_wire;
    wire [9:0] Hcnt_wire;
    wire [9:0] Vcnt_wire;
    wire enable_wire;
    wire RGBSig_wire;
    
    clk_div clkdiv(
        .clk(clk),
        .rst(rst),
        .clk_div(clk_div_wire)
    );
    
    HCounter HC(
        .clk(clk_div_wire),
        .rst(rst),
        .Q(Hcnt_wire),
        .TC(enable_wire)
    );
    
    VCounter VC(
        .En(enable_wire),
        .clk(clk_div_wire),
        .rst(rst),
        .Q(Vcnt_wire)
    );
    
    HSyncComparitor HSComp(
        .Hcnt(Hcnt_wire),
        .HS(HS)
    );
    
    VSyncComparitor VSComp(
        .Vcnt(Vcnt_wire),
        .VS(VS)
    );
    
    DisplayAreaComparitor DAComp(
        .Hcnt(Hcnt_wire),
        .Vcnt(Vcnt_wire),
        .RGBSig(RGBSig_wire)
    );
    
    Color_mux(
        .RGBSig(RGBSig_wire),
        .R(R),
        .G(G),
        .B(B)
    );



endmodule
