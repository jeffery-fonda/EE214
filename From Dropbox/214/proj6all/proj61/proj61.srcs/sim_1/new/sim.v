`timescale 1ns/ 1ps
 
module sim;


reg [3:0] A;
reg [3:0] B;
wire [3:0] S;
//wire [3:0] Carry;
 wire Carry;
// Instantiate the Unit Under Test (UUT)
adder uut (
.A(A),
.B(B),
    .S(S),
    .Carry(Carry)
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