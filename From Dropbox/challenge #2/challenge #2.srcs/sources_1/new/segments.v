`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/23/2016 05:40:33 PM
// Design Name: 
// Module Name: segments
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


module segments(
    
    input [7:0] sw,
    output [6:0] seg,
    output [3:0] an,
    //output [3:0] master,
    //input btnC,
    input clk    
    );
    
    
    reg [6:0] seg;
    reg [3:0] master;
    //assign an[3:1] = 1;
    reg [3:0] an;    
    
    wire sel;
    
    counter timer(
        .clk(clk),
        .Y(sel)
        );

               
    always @(sel, sw)
    begin
    if (~sel)begin
        an[0] = 0;
        an[1] = 1;
        an[2] = 1;
        an[3] = 1;
        master = sw[3:0];
        end
    else begin
        an[0] = 1;
        an[1] = 0;
        an[2] = 1;
        an[3] = 1;
        master = sw[7:4];      
        end
    end          

    
    always @(master)
    begin    
    case (master)
        
        4'd0:begin
            seg[5:0] = 0;
            seg[6] = 1;
            end           
        
        4'd1:begin
          //seg = 7'd1;
          seg[2:1] = 0;
          seg[0] = 1;
          seg[3] = 1;
          seg[4] = 1;
          seg[5] = 1;
          seg[6]  =1;
          
          end
        
        4'd2:begin
           //seg = 7'd2;
             seg[1:0] = 0;            
             seg[4:3] = 0;             
             seg[6] = 0;
             seg[2] = 1;
             seg[5] = 1;
             end
             
        4'd3:begin
            //seg = 7'd3;
            seg[3:0] = 0;
            seg[4] = 1;
            seg[5] = 1;
            seg[6] = 0;
            //seg[5:4 ] 1
            end            

        4'd4:begin
            //seg = 7'd4;
            seg[2] = 0;
            seg[1]= 0;
            seg[6] = 0;
            seg[5] = 0;
            seg[3] = 1;
            seg[4] = 1;
            seg[0] =1;
            end
            
        4'd5:begin
            seg[0] = 0;
            seg[2] = 0;
            seg[3] = 0;
            seg[5] = 0;
            seg[6] = 0;
            seg[1] = 1;
            seg[4] = 1;
            end
        4'd6:begin
            seg[0] = 0;
            seg[1] = 1;
            seg[2] = 0; 
            seg[3] = 0;
            seg[4] = 0;
            seg[5] = 0;
            seg[6] = 0;
            end
        4'd7:begin
            seg[0] = 0;
            seg[1] = 0;
            seg[2] = 0; 
            seg[3] = 1;
            seg[4] = 1;
            seg[5] = 1;
            seg[6] = 1;
            end           
                       
        4'd8:begin
            seg[6:0] = 0;
        end
        
        4'd9:begin
        seg[0] = 0;
        seg[1] = 0;
        seg[2] = 0; 
        seg[3] = 0;
        seg[4] = 1;
        seg[5] = 0;
        seg[6] = 0;
        
        end
            
    4'd10:begin
        seg[0] = 0;
        seg[1] = 0;
        seg[2] = 0; 
        seg[3] = 1;
        seg[4] = 0;
        seg[5] = 0;
        seg[6] = 0;        
        end                                      
    4'd11:begin
        seg[0] = 1;
        seg[1] = 1;
        seg[2] = 0; 
        seg[3] = 0;
        seg[4] = 0;
        seg[5] = 0;
        seg[6] = 0;        
        end                   

4'd12:begin
        seg[0] = 0;
        seg[1] = 1;
        seg[2] = 1; 
        seg[3] = 0;
        seg[4] = 0;
        seg[5] = 0;
        seg[6] = 0;        
        end
        
        
        4'd13:begin
        seg[0] = 0;
        seg[1] = 1;
        seg[2] = 0; 
        seg[3] = 0;
        seg[4] = 0;
        seg[5] = 1;
        seg[6] = 0;        
        end   
        
        4'd14:begin
        seg[0] = 0;
        seg[1] = 1;
        seg[2] = 1; 
        seg[3] = 0;
        seg[4] = 0;
        seg[5] = 0;
        seg[6] = 0;        
        end         

4'd15:begin
        seg[0] = 0;
        seg[1] = 1;
        seg[2] = 1; 
        seg[3] = 1;
        seg[4] = 0;
        seg[5] = 0;
        seg[6] = 0;        
        end             
        
            endcase
            end       
endmodule
