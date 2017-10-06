`timescale 1ns / 1ps

module sim;
 
// Inputs
reg A;
reg B;
reg C;
// Outputs
wire X;
 
// Instantiate the Unit Under Test (UUT)
main uut (
    .A(A),
    .B(B),
    .C(C),
    .X(X)
);
 
// Declare loop index variable
integer k = 0;
 
initial begin
    // Initialize Inputs
    A = 0;
    B = 0;
    C = 0;
 
    // Wait 100 ns for global reset to finish
    // Add stimulus here
 
    for(k = 0; k < 4; k=k+1)
    begin
        {A,C} = k;
        #20 B = 1;
        #20 B = 0;
        #20 ;
    end
end
 
endmodule