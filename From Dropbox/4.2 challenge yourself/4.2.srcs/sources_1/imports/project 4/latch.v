module latch (
    //input [3:0] I,
    //input [1:0] S,
    //output reg [3:0] O
    input I0, I1, I2, I3, S0, S1,
    output reg O0, O1, O2, O3
);
        
    always @ (I0,I1,I2,I3,S0,S1) 
    
    begin
    if (S0 == 0 && S1 == 0)begin
        O0 = I0;
        end
    
    else if (S0 == 1 && S1 == 0)begin
        O1 = I1;
        end
    else if (S0 == 0 && S1==1)begin
        O2 = I2;
        end            
    else begin
        O3 = I3;
        end
    end              
        
    
    
//    case (S)
//    2'b00:
//        O[0] = I[0];
//    2'b01:
//        O[1] = I[1];
//    2'b10:
//        O[2] = I[2];
//    2'b11:
//        O[3] = I[3];
//    endcase
    
endmodule