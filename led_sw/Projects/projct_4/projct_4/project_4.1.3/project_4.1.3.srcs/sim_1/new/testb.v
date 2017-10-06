`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/07/2015 04:40:33 PM
// Design Name: 
// Module Name: testb
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


module testb;

// Inputs
	reg [3:0] I;
	reg Ein;

	// Outputs
	wire [1:0] Y;
	wire GS;
	wire Eout;

	// Instantiate the Unit Under Test (UUT)
	decoder_3_8 uut (
		.I(I), 
		.Ein(Ein), 
		.Y(Y), 
		.GS(GS), 
		.Eout(Eout)
	);
	
	integer k;

	initial begin
		// Initialize Inputs
		I = 0;
		Ein = 1;
	
	 for(k=1; k<=8;k=k*2)
	 #5 I=k; 
		
//		{I, Ein} = 5'b0;
//		#5;
//		{I, Ein} = 5'b10001;
//		#5;
//		{I, Ein} = 5'b01011;		 
//		#5;
//		{I, Ein} = 5'b00011;
//		#5;
//		{I, Ein} = 5'b11111;
//		#5;
//		{I, Ein} = 5'b10011;
//		#5;


		

		// Wait 100 ns for global reset to finish
		//#100;
		
		#20 $finish;
        
		// Add stimulus here

	end
      
endmodule
