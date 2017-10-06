module add(
    input [3:0] A,
    input [3:0] B,
    input sub,
    output [3:0] S,
    output wire [3:0] Carry
    );
 
wire [3:0] B1;
 
assign B1[0] = B[0] ^ sub;
assign B1[1] = B[1] ^ sub;
assign B1[2] = B[2] ^ sub;
assign B1[3] = B[3] ^ sub;
 
FA add_0 (
    .A(A[0]), 
    .B(B1[0]), 
    .Cin(sub), 
    .S(S[0]), 
    .Cout(Carry[0])
    );
 
FA add_1 (
    .A(A[1]), 
    .B(B1[1]), 
    .Cin(Carry[0]), 
    .S(S[1]), 
    .Cout(Carry[1])
    );
 
FA add_2 (
    .A(A[2]), 
    .B(B1[2]), 
    .Cin(Carry[1]), 
    .S(S[2]), 
    .Cout(Carry[2])
    );
 
FA add_3 (
    .A(A[3]), 
    .B(B1[3]), 
    .Cin(Carry[2]), 
    .S(S[3]), 
    .Cout(Carry[3])
    );
 
endmodule