`timescale 1ns / 1ps

module testbench;
reg A,B,C;
wire X;
CombCirc uut(
.A(A),
.B(B),
.C(C),
.X(X)
);

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
        #5 B = 1;
        #5 B = 0;
        #5 ;
    end
end
endmodule
