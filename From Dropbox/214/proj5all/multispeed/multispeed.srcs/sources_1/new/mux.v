`timescale 1ns / 1ps

module mux(
    input [1:0] sw,
    input [26:0] clkdiv,
    output reg led
    );
 
always @ (sw,led,clkdiv)
 
begin 
	case (sw) 
 
      2'b00:
       led = clkdiv[26];
                                
      2'b01:
       led = clkdiv[25];
                                
      2'b10:
       led = clkdiv[24];
                                
      2'b11:
       led = clkdiv[23];

	default:
       led = clkdiv[26];

endcase 
 
end


endmodule