`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/16/2015 11:50:14 AM
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
    input wire [2:0] opcode,
    input [3:0] A,
    input [3:0] B,
    output reg [3:0] out,
    output reg carryo
    );
    
    wire [3:0] I0;
    wire [3:0] I1;
    wire [3:0] I2;
    wire [3:0] I3;
    wire [3:0] I4;
    wire [3:0] I5;
    wire carries [5:0];
    
    adder inst1(
    .A(A),
    .B(B),
    .S(I0),
    .Carry(carries[0])
    );
    
    adder inst2(
    .A(A),
    .B(4'b0001),
    .S(I1),
    .Carry(carries[1])
    );
 
    addsub inst3(
    .A(A),
    .B(B),
    .S(I2),
    .Carry(carries[2])
    );
 
    assign I3[0] = A[0] ^ B[0];
    assign I3[1] = A[1] ^ B[1];
    assign I3[2] = A[2] ^ B[2];
    assign I3[3] = A[3] ^ B[3];
    assign carries[3] = 1'b0;
    
    assign I4[0] = A[0] | B[0];
    assign I4[1] = A[1] | B[1];
    assign I4[2] = A[2] | B[2];
    assign I4[3] = A[3] | B[3];
    assign carries[3] = 1'b0;
    
    assign I5[0] = A[0] & B[0];
    assign I5[1] = A[1] & B[1];
    assign I5[2] = A[2] & B[2];
    assign I5[3] = A[3] & B[3];
    assign carries[3] = 1'b0;
    
    always @ (opcode)
    begin
    
    if (opcode == 3'b000)
    begin
    assign out = I0;
    assign carryo = carries[0];
    end
    else if (opcode == 3'b001)
    begin
    assign out = I1;
    assign carryo = carries[1];
    end
    else if (opcode == 3'b010)
    begin
    assign out = I2;
    assign carryo = carries[2];
    end
    else if (opcode == 3'b011)
    begin
    assign out = I3;
    assign carryo = carries[3];
    end
    else if (opcode == 3'b100)
    begin
    assign out = I4;
    assign carryo = carries[4];
    end
    else if (opcode == 3'b101)
    begin
    assign out = I5;
    assign carryo = carries[5];
    end
    else
    begin
    assign out = 4'b0000;
    assign carryo = 1'b0;
    end
    
    end
    
endmodule
