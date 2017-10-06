`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/16/2015 04:13:10 PM
// Design Name: 
// Module Name: top
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


module top(
input clk,
input rst,
output [7:0] A
);

wire [7:0] Q;
wire [7:0] Carry;
wire [7:0] D;
wire clk_div;

clk_div inst (
.clk(clk),
.rst(rst),
.clk_div(clk_div)
);

sum instant1(
.A(Q[0]),
.B(1'b1),
.Cin(1'b0),
.sum(D[0]),
.Cout(Carry[0])
);

clk_wait insta1(
.D(D[0]),
.clk(clk_div),
.rst(rst),
.Q(Q[0])
);

sum instant2(
.A(Q[1]),
.B(1'b0),
.Cin(Carry[0]),
.sum(D[1]),
.Cout(Carry[1])
);

clk_wait insta2(
.D(D[1]),
.clk(clk_div),
.rst(rst),
.Q(Q[1])
);

sum instant3(
.A(Q[2]),
.B(1'b0),
.Cin(Carry[1]),
.sum(D[2]),
.Cout(Carry[2])
);

clk_wait insta3(
.D(D[2]),
.clk(clk_div),
.rst(rst),
.Q(Q[2])
);

sum instant4(
.A(Q[2]),
.B(1'b0),
.Cin(Carry[2]),
.sum(D[3]),
.Cout(Carry[3])
);

clk_wait insta4(
.D(D[3]),
.clk(clk_div),
.rst(rst),
.Q(Q[3])
);

sum instant5(
.A(Q[4]),
.B(1'b0),
.Cin(Carry[3]),
.sum(D[4]),
.Cout(Carry[4])
);

clk_wait insta5(
.D(D[4]),
.clk(clk_div),
.rst(rst),
.Q(Q[4])
);

sum instant6(
.A(Q[5]),
.B(1'b0),
.Cin(Carry[4]),
.sum(D[5]),
.Cout(Carry[5])
);

clk_wait insta6(
.D(D[5]),
.clk(clk_div),
.rst(rst),
.Q(Q[5])
);

sum instant7(
.A(Q[6]),
.B(1'b0),
.Cin(Carry[5]),
.sum(D[6]),
.Cout(Carry[6])
);

clk_wait insta7(
.D(D[6]),
.clk(clk_div),
.rst(rst),
.Q(Q[6])
);

sum instant8(
.A(Q[7]),
.B(1'b0),
.Cin(Carry[6]),
.sum(D[7]),
.Cout(Carry[7])
);

clk_wait insta8(
.D(D[7]),
.clk(clk_div),
.rst(rst),
.Q(Q[7])
);

assign A = Q;

endmodule
