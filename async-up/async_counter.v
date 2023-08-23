`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.08.2023 15:23:37
// Design Name: 
// Module Name: async_counter
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


module async_counter(
    output reg[3:0] count,
    input clock,reset
    );
        always @(posedge clock)
        count[0] = ~count[0];
        always@(negedge count[0])
         count[1]=~count[1];
        always@(negedge count[1])
         count[2] =~count[2];
        always@(negedge count[2])
         count[3] =~count[3];
        always@(posedge reset) begin
        if(reset)
        count<=4'b1110;
        else
        count<=count;
        end 
endmodule  
