`timescale 1ns/ 1ps
 
module sim;


reg [3:0] A;
reg [3:0] B;
reg sub;
wire [3:0] S;
wire [3:0] Carry;
// Instantiate the Unit Under Test (UUT)
add uut (
.A(A),
.B(B),
.sub(sub),
.S(S),
.Carry(Carry)
);
 
// Declare loop index variable
integer k;
 
// Apply input stimulus
initial
begin
sub = 0;
A = 0;
B = 0;
    for (k=0; k<512; k=k+1)
        #5 {sub, A, B} = k;
 
    #20 $finish;
end
 
endmodule