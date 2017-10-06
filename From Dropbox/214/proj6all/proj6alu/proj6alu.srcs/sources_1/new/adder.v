module adder(
    input [3:0] A,
    input [3:0] B,
    output [3:0] S,
    output Carry
    );
 
wire [4:0] Result;
assign Result = A + B;
 
assign S = Result[3:0];
assign Carry = Result[4];
 
endmodule