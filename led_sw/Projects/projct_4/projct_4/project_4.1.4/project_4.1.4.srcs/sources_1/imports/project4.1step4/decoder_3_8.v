`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:49:30 10/08/2013 
// Design Name: 
// Module Name:    decoder_3_8 
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
module decoder_3_8(
 input [3:0] I,
    input D,
    input R,
    input F,
    input En,
    output [3:0] Y
    );
	 
  reg [3:0] Y;
 
always @ (I, En)
begin
    if (En == 0)
        Y = I;
    else
        if (R == 0)
            Y = (D == 0) ? {I[2:0], F} : {F, I[3:1]};
        else
            Y = (D == 0) ? {I[2:0], I[3]} : {I[0], I[3:1]};
end

endmodule
