`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.08.2023 16:22:09
// Design Name: 
// Module Name: async_down
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


module async_down(
    output reg[3:0] count,
    input clock,reset
    );
    
       always@(negedge clock )
        count[0] = ~count[0];
        always@(posedge count[0])
         count[1]=~count[1];
        always@(posedge count[1])
         count[2] =~count[2];
        always@(posedge count[2])
         count[3] =~count[3];
         always@(posedge reset) begin
               if(reset)
                count<=4'b0000;
                else
                 count<=count;
                end
endmodule 
