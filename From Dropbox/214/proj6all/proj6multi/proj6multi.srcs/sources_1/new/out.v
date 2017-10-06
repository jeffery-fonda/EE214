`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/15/2015 12:37:56 PM
// Design Name: 
// Module Name: out
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


module out(
input [3:0] A,
[3:0] B,
output [7:0] R
    );
    
wire [3:0] P0;
wire [3:0] P1;
wire [3:0] P2;
wire [3:0] P3;
wire [6:0] line1;
wire [6:0] line2;
wire [2:0] line3;

assign P0[0] = A[0] & B[0];
assign P1[0] = A[0] & B[1];
assign P2[0] = A[0] & B[2];
assign P3[0] = A[0] & B[3];
assign P0[1] = A[1] & B[0];
assign P1[1] = A[1] & B[1];
assign P2[1] = A[1] & B[2];
assign P3[1] = A[1] & B[3];
assign P0[2] = A[2] & B[0];
assign P1[2] = A[2] & B[1];
assign P2[2] = A[2] & B[2];
assign P3[2] = A[2] & B[3];
assign P0[3] = A[3] & B[0];
assign P1[3] = A[3] & B[1];
assign P2[3] = A[3] & B[2];
assign P3[3] = A[3] & B[3];
    
assign R[0] = P0[0];

HA inst1(
.A(P0[1]), 
.B(P1[0]), 
.S(R[1]), 
.Cout(line1[0])
);

FA add_1 (
.A(P0[2]), 
.B(P1[1]), 
.Cin(P2[0]), 
.S(line1[1]), 
.Cout(line1[2])
);

FA add_2 (
.A(P0[3]), 
.B(P1[2]), 
.Cin(P2[1]), 
.S(line1[3]), 
.Cout(line1[4])
);

HA inst2(
.A(P1[3]), 
.B(P2[2]), 
.S(line1[5]), 
.Cout(line1[6])
);

HA inst3(
.A(line1[0]), 
.B(line1[1]), 
.S(R[2]), 
.Cout(line2[0])
);

FA add_3 (
.A(line1[3]), 
.B(P3[0]), 
.Cin(line1[2]), 
.S(line2[1]), 
.Cout(line2[2])
);

FA add_4 (
.A(line1[5]), 
.B(P3[1]), 
.Cin(line1[4]), 
.S(line2[3]), 
.Cout(line2[4])
);

FA add_5 (
.A(P2[3]), 
.B(P3[2]), 
.Cin(line1[6]), 
.S(line2[5]), 
.Cout(line2[6])
);
  
FA add_6 (
.A(line2[1]), 
.B(line2[0]), 
.Cin(1'b0), 
.S(R[3]), 
.Cout(line3[0])
);

FA add_7 (
.A(line2[3]), 
.B(line2[2]), 
.Cin(line3[0]), 
.S(R[4]), 
.Cout(line3[1])
);

FA add_8 (
.A(line2[5]), 
.B(line2[4]), 
.Cin(line3[1]), 
.S(R[5]), 
.Cout(line3[2])
);

FA add_9 (
.A(P3[3]), 
.B(line2[6]), 
.Cin(line3[2]), 
.S(R[6]), 
.Cout(R[7])
);
    
endmodule
