module latch (
input  I0,I1,I2,I3,
input Sw0,Sw1,
output reg  O0,O1,O2,O3
);

reg  O0,O1,O2,O3;
always @ (I0,I1,I2,I3,Sw0,Sw1) 
case (Sw0&&Sw1)
(Sw0==0&&Sw1==0):begin
O0= I0;
O1=0;
O2=0;
O3=0;
end
(Sw0==1&&Sw1==0):begin
O0= 0;
O1=I1;
O2=0;
O3=0;
end
(Sw0==0&&Sw1==1):begin
O0= 0;
O1=0;
O2=I2;
O3=0;
end
(Sw0==1&&Sw1==1):begin
O0=0;
O1=0;
O2=0;
O3=I3;
end
endcase
endmodule