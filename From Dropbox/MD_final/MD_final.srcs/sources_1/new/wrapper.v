`timescale 1ns / 1ps


module wrapper(
I0, I1, I2, I3, Y0, Y1, Y2, Y3,clk,tData
);
input I3, I2, I1, I0,clk;
output Y0, Y1, Y2, Y3,tData;

wire sdata,D0,D1,D2,D3,sel0,sel1;
 
mux input_mux (
    .I3(I3),
    .I2(I2),
    .I1(I1),
    .I0(I0),
    .S1(sel1),
    .S0(sel0),
    .Y(sdata)
);
     
     
 counter input_counter(
 .clk(clk),
 .Y1(sel1),
 .Y0(sel0)
 
 );
 
 


dmux DMUX(
.En(sdata),
.I0(sel0),
.I1(sel1),
.Y0(D0),
.Y1(D1),
.Y2(D2),
.Y3(D3)


);

   latch output_latch(
   
   .I0(D0),
   .I1(D1),
   .I2(D2),
   .I3(D3),
  
   .O0(Y0),
   .O1(Y1),
   .O2(Y2),
   .O3(Y3),  
   .Sw0(sel0),
   .Sw1(sel1)
   );
   
 assign tData=sdata;
endmodule
