`timescale 1ns/ 1ps

module cmp_bitslice(
    input A,
    input B,
    input LT_I,
    input EQ_I,
    input GT_I,
    output LT_O,
    output EQ_O,
    output GT_O
    );
 
assign GT_O = ( A & ~B ) | ((~A & ~B)|(A & B)) & GT_I;
assign EQ_O = EQ_I & (( A & B ) | (~A & ~B));
assign LT_O = ( B & ~A ) | ((~A & ~B)|(A & B)) & LT_I;
 
endmodule