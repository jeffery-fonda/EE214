`timescale 1ns/ 1ps
 
module sim;


reg [3:0] A;
reg [3:0] B;
wire [7:0] R;
//wire [3:0] Carry;
// Instantiate the Unit Under Test (UUT)
out uut (
.A(A),
.B(B),
    .R(R)
);
 
// Declare loop index variable
integer k;
 
// Apply input stimulus
initial
begin
    A = 0;
 B = 0;
    for (k=0; k<256; k=k+1)
        #5 {A,B} = k;
 
    #20 $finish;
end
 
endmodule