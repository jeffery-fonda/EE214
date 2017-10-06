`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/03/2016 02:26:56 PM
// Design Name: 
// Module Name: num1
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


module num1(
input [7:0] sw,
input clk,
output [6:0] seg,
output [3:0] an
    );
    
reg [3:0] SwitchSel;
reg [3:0] an;       
wire clockSel;   
reg [6:0] seg;


 counter screenSwitching(
        .clk(clk),
        .Y(clockSel)
        );
    always @(clockSel, sw)
    begin
    if (~clockSel)begin
        an[0] = 0;
        an[1] = 1;
        an[2] = 1;
        an[3] = 1;     
        SwitchSel = sw[3:0];
        end
   
    else begin
        an[0] = 1;
        an[1] = 0; 
        an[2] = 1;
        an[3] = 1;   
        SwitchSel = sw[7:4];      
        end
    end   


always @ (SwitchSel)
begin
case(SwitchSel)
4'd0:begin
seg[5:0]=0;
seg[6]=1;

end

4'd1:begin
seg[2:1]=0;
seg[0]=1;
seg[3]=1;
seg[4]=1;
seg[5]=1;
seg[6]=1;
end

4'd2:begin
seg[0]=0;
seg[1]=0;
seg[2]=1;
seg[3]=0;
seg[4]=0;
seg[5]=1;
seg[6]=0;
end

4'd3:begin
seg[0]=0;
seg[1]=0;
seg[2]=0;
seg[3]=0;
seg[4]=1;
seg[5]=1;
seg[6]=0;
end

4'd4:begin
seg[0]=1;
seg[1]=0;
seg[2]=0;
seg[3]=1;
seg[4]=1;
seg[5]=0;
seg[6]=0;
end

4'd5:begin
seg[0]=0;
seg[1]=1;
seg[2]=0;
seg[3]=0;
seg[4]=1;
seg[5]=0;
seg[6]=0;
end

4'd6:begin
seg[0]=1;
seg[1]=1;
seg[2]=0;
seg[3]=0;
seg[4]=0;
seg[5]=0;
seg[6]=0;
end

4'd7:begin
seg[0]=0;
seg[1]=0;
seg[2]=0;
seg[3]=1;
seg[4]=1;
seg[5]=1;
seg[6]=1;
end

4'd8:begin
seg[6:0]=0;
end

4'd9:begin
seg[0]=0;
seg[1]=0;
seg[2]=0;
seg[3]=1;
seg[4]=1;
seg[5]=0;
seg[6]=0;
end

4'd10:begin
seg[0]=0;
seg[1]=0;
seg[2]=0;
seg[3]=1;
seg[4]=0;
seg[5]=0;
seg[6]=0;
end
4'd11:begin
seg[0]=1;
seg[1]=1;
seg[2]=0;
seg[3]=0;
seg[4]=0;
seg[5]=0;
seg[6]=0;
end

4'd12:begin
seg[0]=0;
seg[1]=1;
seg[2]=1;
seg[3]=0;
seg[4]=0;
seg[5]=0;
seg[6]=1;
end

4'd13:begin
seg[0]=1;
seg[1]=0;
seg[2]=0;
seg[3]=0;
seg[4]=0;
seg[5]=1;
seg[6]=0;
end

4'd14:begin
seg[0]=0;
seg[1]=1;
seg[2]=1;
seg[3]=0;
seg[4]=0;
seg[5]=0;
seg[6]=0;
end

4'd15:begin
seg[0]=0;
seg[1]=1;
seg[2]=1;
seg[3]=1;
seg[4]=0;
seg[5]=0;
seg[6]=0;
end

default:begin
seg[6]=1;
seg[5:0]=0;
end
endcase
end
endmodule
