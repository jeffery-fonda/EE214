`timescale 1ns / 1ps

module testbench;

wire Q,Qn;
reg S,R;

sr_latch uut(
.Q(Q),
.Qn(Qn),

.S(S),
.R(R)


);

initial begin
   S = 1;
R = 1;

    #100 S = 0;
#100 S = 1;
#100 R = 0;
#100 R = 1;
#100 S = 0;
     R = 0;
#100 S = 1;
     R = 1;
#100 S = 0;
     R = 0;
#100 ;

end

endmodule
