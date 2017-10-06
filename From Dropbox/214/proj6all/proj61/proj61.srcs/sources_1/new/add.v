module add(
    input [3:0] A,
    input [3:0] B,
    output [3:0] S,
    output wire [3:0] Carry
    );
 
HA add_0 (
    .A(A[0]), 
    .B(B[0]), 
    .S(S[0]), 
    .Cout(Carry[0])
    );
 
FA add_1 (
    .A(A[1]), 
    .B(B[1]), 
    .Cin(Carry[0]), 
    .S(S[1]), 
    .Cout(Carry[1])
    );
 
FA add_2 (
    .A(A[2]), 
    .B(B[2]), 
    .Cin(Carry[1]), 
    .S(S[2]), 
    .Cout(Carry[2])
    );
 
FA add_3 (
    .A(A[3]), 
    .B(B[3]), 
    .Cin(Carry[2]), 
    .S(S[3]), 
    .Cout(Carry[3])
    );
 
endmodule