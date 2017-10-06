`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:56:55 11/07/2014 
// Design Name: 
// Module Name:    shifter 
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
module shifter(
    input clk,
    input rst,
    input [1:0] sw,
    output reg [7:0] Q,
    output [7:0] led
    );
    
    wire [26:0] din;
    wire [26:0] clkdiv;
    wire out;
    
    assign led = Q;
    
    dff dff_inst0 (
        .clk(clk), 
        .rst(rst),
        .D(din[0]),
        .Q(clkdiv[0])
    );
    
    genvar i;
     
    generate
    for (i = 1; i < 27; i=i+1) 
    begin : dff_gen_label
        dff dff_inst (
            .clk(clkdiv[i-1]),
            .rst(rst),
            .D(din[i]),
            .Q(clkdiv[i])
        );
        end
    endgenerate;
    
    assign din = ~clkdiv;
    
    mux instance_name (
        .sw(sw), 
        .clkdiv(clkdiv[26:0]), 
        .clkout(out)
        );
 
always @ (posedge(out), posedge(rst))
begin
    if (rst == 1)
        Q <= 8'b10000000;
    else
        Q <= { Q[6:0], Q[7]};
end



endmodule