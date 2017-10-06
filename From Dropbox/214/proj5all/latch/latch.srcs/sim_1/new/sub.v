`timescale 1ns/ 1ps
 
module sub;
 
// Inputs
reg D;
reg G;
// Outputs
wire Q;
wire Qn;
 
// Instantiate the Unit Under Test (UUT)
main uut (
    .D(D),
    .G(G),
    .Q(Q),
    .Qn(Qn)
);
 
// Declare loop index variable
initial begin
    // Initialize Inputs
    D = 1;
    G = 1;
     
    // Add stimulus here
    #20 D = 0;
    #20 D = 1;
    #20 G = 0;
    #20 G = 1;
    #20 D = 0;
         G = 0;
    #20 D = 1;
         G = 1;
    #20 D = 0;
         G = 0;
    #20 ;
end
 
endmodule