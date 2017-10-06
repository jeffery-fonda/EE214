`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/13/2015 07:38:07 AM
// Design Name: 
// Module Name: clkgen
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


module clkgen(
input     clk,  // master clock 
output    refreshClk,  //refresh the display
output    clk_point1hz //counter clock

);

reg [26:0] 	count = 0;  // counter register variable
reg [16:0] 	refresh = 0; // refresh counter register variable


reg      	tmp_clk = 0; // temporary clock register variable
reg 		rclk = 0; // temporary refresh clock register variable


assign clk_point1hz = tmp_clk;// 0.5Hz clock
assign refreshClk = rclk; //refresh clock


BUFG clock_buf_0(  //buffered clock to reduce the clock skew
  .I(clk),
  .O(clk_100mhz)
);

// use two always block to generate the clock. 
// when postive edge of master clock, both always block will be evaluated immediately
// Use non-block assignment in the block

always @(posedge clk_100mhz) begin // use for loop to generate the tmp_clk. tmp_clk*count = master clock
  if (count < 100000) begin //10,000,000 is within the refresh vector range 2^27 
    count <= count + 1; // count up
  end
  else begin
    tmp_clk <= ~tmp_clk; // flip the signal when count reaches 250,000. 
    count <= 0; // reset the counter
  end
end

always @(posedge clk_100mhz) begin // use for loop to generate the rclk. rclk*refresh = master clock
	if (refresh < 10000) begin //100,000 is within the refresh vector range 2^17
		refresh <= refresh + 1; // count up
	end else begin
		refresh <= 0; // reset the refresh counter
		rclk <= ~rclk; // flip the signal when count reaches 10,000.
	end
end

endmodule
