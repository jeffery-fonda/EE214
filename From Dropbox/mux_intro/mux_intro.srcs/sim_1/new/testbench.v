`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/02/2016 02:23:51 PM
// Design Name: 
// Module Name: testbench
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


module testbench;
reg [1:0] I0;
reg [1:0] I1;
reg [1:0] I2;
reg [1:0] I3;
reg [1:0] Sel;
wire [1:0] Y;

mux_intro uut(
.I0(I0),
.I1(I1),
.I2(I2),
.I3(I3),
.Sel(Sel),
.Y(Y)
);

// Declare loop index variable
integer k;
 
// Apply input stimulus
initial
begin
 
 I0=0;
 I1=0;
 I2=0;
 I3=0;
 Sel=0;   
 
    for (k=0; k<3; k=k+1)
        #20 I0 = k;
        #20 I1=k;
        #20 I2=k;
        #20 I3=k;
        #20 Sel=k;
 
    #20 $finish;
end
endmodule
