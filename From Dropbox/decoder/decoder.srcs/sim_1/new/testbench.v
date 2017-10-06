`timescale 1ns / 1ps

module testbench;
reg [2:0] I;

wire [7:0] Y;

decoding uut(
.I(I),

.Y(Y)
);

// Declare loop index variable
integer k;
 
// Apply input stimulus
initial
begin
 
 I=0;
    
 
    for (k=0; k<8; k=k+1)
        #20 I = k;
      
 
    #20 $finish;
end
endmodule
