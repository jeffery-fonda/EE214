module clk_divider(
    input clk,
    input rst,
    input [1:0]sw,
    output led
    );

wire [26:0] din;
wire [26:0] clkdiv;

dff dff_inst0 (
    .clk(clk), 
    .rst(rst),
    .D(din[0]),
    .Q(clkdiv[0])
);

mux instance_name (
    .sw(sw), 
    .clkdiv(clkdiv[26:0]), 
    .led(led)
    );
 
genvar i;
 
generate
for (i = 1; i < 27; i=i+1) 
begin : dff_gen_label
    dff dff_inst (
        .clk(clkdiv[i-1]),
        .rst(rst),
        .D(din[i]),
        .Q(clkdiv[i])
    );
    end
endgenerate;

assign din = ~clkdiv;

endmodule
