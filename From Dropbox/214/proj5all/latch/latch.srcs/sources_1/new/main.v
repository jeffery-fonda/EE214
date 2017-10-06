`timescale 1ns / 1ps

module main(
    input D,
    input G,
    output Q,
    output Qn
    );
 
wire R, R2, inv;
wire Q_int, Qn_int;
 
assign #1 inv = ~D;
assign #1 R2 = ~(D & G);
assign #1 R = ~(inv & G);
assign #1 Q_int = ~(R2 & Qn_int);
assign #1 Qn_int = ~(R & Q_int);
assign Q = Q_int;
assign Qn = Qn_int;
 
endmodule