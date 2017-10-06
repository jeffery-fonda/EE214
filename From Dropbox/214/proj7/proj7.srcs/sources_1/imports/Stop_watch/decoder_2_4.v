`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:06:59 11/30/2013 
// Design Name: 
// Module Name:    decoder_2_4 
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
module andecoder ( 
    input [1:0] I,
    output reg [7:0] Y,
    output reg dp
);
 
always @ (I)
begin
    case (I)
        2'b00:
            Y = 8'b11111110;
        2'b01:
            Y = 8'b11111101;
        2'b10:
            Y = 8'b11111011;
        2'b11:
            Y = 8'b11110111;
        default:
            Y = 8'b11110000;
    endcase
end

always @ (I)
begin
    case (I)
        2'b00:
            dp = 1'b1;
        2'b01:
           dp = 1'b1;
        2'b10:
            dp = 1'b1;
        2'b11:
            dp = 1'b0;
        default:
            dp = 1'b0;
    endcase
end

endmodule
