`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
module clk_divider(
    input clk,
    input rst,
	input [2:0] sw,
    output reg speed
    );
integer j;
integer z;
wire [27:0] din;
wire [27:0] clkdiv;
integer k;
 
dff dff_inst0 (
    .clk(clk),
    .rst(rst),
    .D(din[0]),
    .Q(clkdiv[0])
);

 
genvar i;
generate
for (i = 1; i < 28; i=i+1)
begin : dff_gen_label
    dff dff_inst (
        .clk(clkdiv[i-1]),
        .rst(rst),
        .D(din[i]),
        .Q(clkdiv[i])
    );
    end
	 assign din = ~clkdiv;
	 
	 always @(sw)
      case (sw)
         3'b000: speed = clkdiv[27];
         3'b001: speed = clkdiv[26];
         3'b010: speed = clkdiv[25];
         3'b011: speed = clkdiv[24];
			3'b100: speed = clkdiv[23];
			3'b101: speed = clkdiv[22];
			3'b110: speed = clkdiv[21];
			3'b111: speed = clkdiv[1];
      endcase
	 
endgenerate; 

endmodule
