`timescale 1ns / 1ps

module clk_divider(
   input clk,
 input rst,
 input [1:0] sw,
 output [7:0] led
    );
   //reg [7:0] led;
    wire [26:0] din;
    wire [26:0] clkdiv;
    wire [7:0] d;
    integer c;
    
    dff dff_inst0 (
        .clk(clk),
        .rst(rst),
        .D(din[0]),
        .Q(clkdiv[0])
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

always @ (sw)
begin
case(sw)
2'd0:begin
 c=26;
end

2'd1:begin
 c=25;
end
2'd2:begin
 c=24;
end
2'd3:begin
 c=23;
end
default:begin
 c=26;
end
endcase
end


dff d0 (
.clk(clkdiv[c]),
.rst(rst),
.D(d[0]),
.Q(d[1])
);
dff d1 (
.clk(clkdiv[c]),
.rst(rst),
.D(d[1]),
.Q(d[2])
);

dff d2 (
.clk(clkdiv[c]),
.rst(rst),
.D(d[2]),
.Q(d[3])
);
dff d3 (
.clk(clkdiv[c]),
.rst(rst),
.D(d[3]),
.Q(d[4])
);
dff d4 (
.clk(clkdiv[c]),
.rst(rst),
.D(d[4]),
.Q(d[5])
);

dff d5 (
    .clk(clkdiv[c]),
    .rst(rst),
    .D(d[5]),
    .Q(d[6])
);
 dff d6 (
          .clk(clkdiv[c]),
          .rst(rst),
          .D(d[6]),
          .Q(d[7])
      );
      
   startf d7
   (
    .clk(clkdiv[c]),
    .rst(rst),
    .D(d[7]),
    .Q(d[0])
   );
assign led=d;
 //   assign led = clkdiv[26];
     
endmodule
