`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:21:40 10/16/2013 
// Design Name: 
// Module Name:    wrapper 
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
module wrapper(
input [3:0] I,
    input [1:0] S, 
	 output [3:0] Y
    );
	 
    
 
wire sdata;
 
mux input_mux (
	 
	 .I(I),
	 .S(S),
	 .Y(sdata)
);
 
demux output_demux (

	 .En(sdata),
	 .I(S),
	 .Y(Y)
	 
);


endmodule
