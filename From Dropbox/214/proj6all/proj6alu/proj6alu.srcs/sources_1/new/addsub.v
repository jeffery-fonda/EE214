module addsub(
    input [3:0] A,
    input [3:0] B,
    output [3:0] S,
    output wire Carry
    );
    
wire [2:0] Carrys; 
wire [3:0] B1;
 
assign B1[0] = B[0] ^ 1'b1;
assign B1[1] = B[1] ^ 1'b1;
assign B1[2] = B[2] ^ 1'b1;
assign B1[3] = B[3] ^ 1'b1;
 
FA add_0 (
    .A(A[0]), 
    .B(B1[0]), 
    .Cin(1'b1), 
    .S(S[0]), 
    .Cout(Carrys[0])
    );
 
FA add_1 (
    .A(A[1]), 
    .B(B1[1]), 
    .Cin(Carrys[0]), 
    .S(S[1]), 
    .Cout(Carrys[1])
    );
 
FA add_2 (
    .A(A[2]), 
    .B(B1[2]), 
    .Cin(Carrys[1]), 
    .S(S[2]), 
    .Cout(Carrys[2])
    );
 
FA add_3 (
    .A(A[3]), 
    .B(B1[3]), 
    .Cin(Carrys[2]), 
    .S(S[3]), 
    .Cout(Carry)
    );
 
endmodule