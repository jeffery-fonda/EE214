`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/18/2016 11:55:10 AM
// Design Name: 
// Module Name: test
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

module test;

	// Inputs
	reg [3:0] I;
	reg [1:0] S;

	// Outputs
	wire [3:0] Y;

	// Instantiate the Unit Under Test (UUT)
	wrapper uut (
		.I(I), 
		.S(S), 
		.Y(Y)
	);

integer k;

	initial begin
		// Initialize Inputs
		
		I = 4'b1011;
		S = 0;

		for (k=0; k<4; k=k+1)
        #5 S = k;
		  
 
    #20 $finish;

	end
      
endmodule