`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:00:06 10/09/2013
// Design Name:   decoder_3_8
// Module Name:   C:/EE214/project4.1step4/testb.v
// Project Name:  project4.1step4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: decoder_3_8
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testb;

	// Inputs
	reg [3:0] I;
	reg D;
	reg R;
	reg F;
	reg En;

	// Outputs
	wire [3:0] Y;

	// Instantiate the Unit Under Test (UUT)
	decoder_3_8 uut (
		.I(I), 
		.D(D), 
		.R(R), 
		.F(F), 
		.En(En), 
		.Y(Y)
	);
//integer k;
	initial begin
		// Initialize Inputs
		I = 4'b1111;
		D = 0;
		R = 0;
		F = 0;
		En = 0;

///////////for (k=0;k<4;k=k+1)
#5
I = 0;		
D = 0;
#5
I = 0;		
D = 1;
#5
I = 1;		
D = 1;
#5
I = 1;		
D = 0;
#5
R = 0;
F = 0;
#5
R = 0;
F = 1;
#5
R = 1;
F = 1;
#5
R = 1;
F = 0;





//
//begin if (k=0)
//begin 
// R = 0;
// D = 0;
// end
// 
// begin if (k=1)
//begin 
// R = 0;
// D = 1;
// end
// 
// begin if (k=2)
//begin 
// R = 1;
// D = 0;
// end

//      {En,I, D, R, F} = 8'b00000001;
//		#5;
//		{En,I, D, R, F} = 8'b10000110;
//		#5;
//		{En,I, D, R, F} = 8'b10000011;
//		#5;
//		{En,I, D, R, F} = 8'b11000100;
//		#5;
//		{En,I, D, R, F} = 8'b10100100;
//		#5;
//		{En,I, D, R, F} = 8'b11111111;
//		#5;
//		
//				

		
		

		// Wait 100 ns for global reset to finish
		#20 $finish;

        
		// Add stimulus here

	end 
      
endmodule

