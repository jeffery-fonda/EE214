`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   02:43:58 10/09/2013
// Design Name:   mux
// Module Name:   C:/EE214/project4.2step1/test.v
// Project Name:  project4.2step1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mux
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test;

	// Inputs
	reg I0;
	reg I1;
	reg I2;
	reg I3;
	reg [1:0] Sel;

	// Outputs
	wire Y;

	// Instantiate the Unit Under Test (UUT)
	mux uut (
		.I0(I0), 
		.I1(I1), 
		.I2(I2), 
		.I3(I3), 
		.Sel(Sel), 
		.Y(Y)
	);

integer k;

	initial begin
		// Initialize Inputs
		
		I0 = 0;
		I1 = 0;
		I2 = 0;
		I3 = 0; 
		Sel = 0;

		for (k=0; k<2; k=k+1)
        #5 I0 = k;
		  for (k=2; k<3; k=k+1)
        #5 I1 = k;
		  for (k=3; k<5; k=k+1)
        #5 I2 = k;
		  for (k=5; k<9; k=k+1)
        #5 I3 = k;
		  for (k=0; k<3; k=k+1)
        #5 Sel = k;
		  
 
    #20 $finish;

	end
      
endmodule

