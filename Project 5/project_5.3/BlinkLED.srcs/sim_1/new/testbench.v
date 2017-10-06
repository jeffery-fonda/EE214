`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:34:01 10/24/2013
// Design Name:   clk_divider
// Module Name:   C:/Users/Jared/SkyDrive/Documents/EE 214/Labs/Project 5/5_3/Blink_LED/testbench.v
// Project Name:  Blink_LED
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: clk_divider
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testbench;

	// Inputs
	reg clk;
	reg rst;

	// Outputs
	wire led;

	// Instantiate the Unit Under Test (UUT)
	clk_divider uut (
		.clk(clk), 
		.rst(rst), 
		.led(led)
	);

	always
        #5 clk = ~clk;
 
    initial begin
        // Initialize Inputs
        clk = 0;
        rst = 1;
         
        #10 rst = 0;
 
        // Wait 100 ns for global reset to finish
        #100;
         
    end
      
endmodule
