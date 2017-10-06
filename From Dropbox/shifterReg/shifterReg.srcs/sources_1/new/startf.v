`timescale 1ns / 1ps

module startf(
 input D,
  input clk,
  input rst,
  output Q
    );



    reg Q;
   
   always @ (posedge(clk), posedge(rst))
   begin
       if (rst == 1)
           Q <= 1'b1;
       else
               Q <= D;
   end
      
endmodule
