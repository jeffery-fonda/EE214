`timescale 1ns/ 1ps
 
module sim;


reg [3:0] A;
reg [3:0] B;
    wire LT_O;
    wire EQ_O;
    wire GT_O;
 
// Instantiate the Unit Under Test (UUT)
cmp uut (
    .A(A),
.B(B),
    .LT_O(LT_O),
    .EQ_O(EQ_O),
    .GT_O(GT_O)
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