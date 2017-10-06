`timescale 1ns/ 1ps
 
module sim;

reg [2:0] opcode;
reg [3:0] A;
reg [3:0] B;
wire [3:0] out;
//wire [3:0] Carry;
 wire carryo;
// Instantiate the Unit Under Test (UUT)
top uut (
.opcode(opcode),
.A(A),
.B(B),
    .out(out),
    .carryo(carryo)
);
 
// Declare loop index variable
integer k;
 
// Apply input stimulus
initial
begin
opcode = 0;
A = 0;
B = 0;
    for (k=0; k<1536; k=k+1)
        #1 {opcode,A,B} = k;
 
    #1 $finish;
end
 
endmodule