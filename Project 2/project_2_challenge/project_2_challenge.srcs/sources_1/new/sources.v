`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/02/2016 11:15:12 AM
// Design Name: 
// Module Name: sources
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module sources(
    input [3:0]sw,
    output led
    );
    
assign led = ( sw[0] & ~sw[1] & ~sw[2] & ~sw[3])|(~sw[0] &  sw[1] & ~sw[2] & ~sw[3])|
             (~sw[0] & ~sw[1] &  sw[2] & ~sw[3])|(~sw[0] & ~sw[1] & ~sw[2] &  sw[3])|
             (~sw[0] &  sw[1] &  sw[2] &  sw[3])|( sw[0] & ~sw[1] &  sw[2] &  sw[3])|
             ( sw[0] &  sw[1] & ~sw[2] &  sw[3])|( sw[0] &  sw[1] &  sw[2] & ~sw[3]);    
 
endmodule

  /*A B C D  | Light
    ---------|-------
    0 0 0 0  |   0      _ _ _ 
    0 0 0 1  |   1   => A.B.C.D
    0 0 1 1  |   0      _ _   _
    0 0 1 0  |   1   => A.B.C.D
    0 1 1 0  |   0      _
    0 1 1 1  |   1   => A.B.C.D
    0 1 0 1  |   0      _   _ _
    0 1 0 0  |   1   => A.B.C.D
    1 1 0 0  |   0          _
    1 1 0 1  |   1   => A.B.C.D
    1 1 1 1  |   0            _  
    1 1 1 0  |   1   => A.B.C.D
    1 0 1 0  |   0        _
    1 0 1 1  |   1   => A.B.C.D
    1 0 0 1  |   0        _ _ _
    1 0 0 0  |   1   => A.B.C.D
    
    A, B, C and D are the switches. The truth table above is encoded to have between 
    each lines only one input changed. The initial state is "all switches are off, 
    the light is off". The equation of the light is the logical OR of all states when 
    light is 1. There are 8 states: when only one switch is ON and when only one switch is OFF.
    */