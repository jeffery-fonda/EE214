`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02/18/2016 11:39:40 AM
// Design Name: 
// Module Name:    demux 
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
module demux(
    input [1:0] I,
    input En,
    output [3:0] Y
    );

reg [3:0] Y;

always @ (I, En)

begin
    if (En == 0)
        Y = 4'h0;
            else 
                case (I)
	               2'd00: Y = 4'b0001;
                   2'd01: Y = 4'b0010;
                   2'd10: Y = 4'b0100;
                   2'd11: Y = 4'b1000;
               
	            default: Y = 4'b0000;
            endcase
end

endmodule