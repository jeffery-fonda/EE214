`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:   
// Design Name: 
// Module Name:    HCounter 
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
module HCounter(
    input clk,
        input rst,
        output reg [9:0] Q,
        output TC
    );
    
    assign TC = (Q == 10'd799) ? 1'b1 : 1'b0;
    
    always @ (posedge(clk), posedge(rst))
    begin
        if (rst == 1'b1)
            Q <= 10'b0;
        else if (Q == 10'd799)
            Q <= 10'b0;
        else
            Q <= Q + 1'b1;
    end


endmodule
