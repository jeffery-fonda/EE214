`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    
// Design Name: 
// Module Name:    controller 
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
module controller(
		input start,
		input stop,
		input inc,
		input clk,
		input rst,
		output Cen
    );

localparam S0 = 2'b00;
localparam S1 = 2'b01;
localparam S2 = 2'b11;
localparam S3 = 2'b10;

reg [1:0] State1, State2;

always @ (State1, start, stop, inc)
begin
	case (State1)
		S0:begin
			if (start == 1'b0 && inc == 1'b0)
				State2 = S0;
			else if (start == 1'b1)
				State2 = S1;
			else if (start == 1'b0 && inc == 1'b1)
				State2 = S2;
			else
				State2 = S0;
			end
		S1:
			if (stop == 1'b0)
				State2 = S1;
			else if (stop == 1'b1)
				State2 = S0;
			else
				State2 = S1;
		S2:
			State2 = S3;
		S3:
			if (inc == 1'b1)
				State2 = S3;
			else 
				State2 = S0;
		default:
			State2 = S0;
	endcase
end

always @ (posedge(clk), posedge(rst))
begin
	if (rst == 1'b1)
		State1 <= S0;
	else
		State1 <= State2;
end

assign Cen = (State1 == S1 || State1 == S2) ? 1'b1 : 1'b0;

endmodule
