`timescale 1ns / 1ps

module clk_divider(
 input clk,
   input rst,
   input [1:0] sw,
   output led
    );
    reg led;
    wire [26:0] din;
    wire [26:0] clkdiv;
     
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
    always @(sw)
    begin
    case(sw)
    2'd0:begin
    led = clkdiv[26];
    end
    
    2'd1:begin
    led = clkdiv[25];
    end
    
    2'd2:begin
    led = clkdiv[24];
    end
    
    2'd3:begin
    led=clkdiv[23];
    end
    
    default:begin
    led=clkdiv[26];
    end
    endcase
    end
endmodule
