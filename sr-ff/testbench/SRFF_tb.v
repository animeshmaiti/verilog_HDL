`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.08.2023 16:00:51
// Design Name: 
// Module Name: SRFF_tb
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


module SRFF_tb();
    reg clock,reset,s,r;
    wire q,qbar;
    SRFF sr(q,qbar,clock,reset,s,r);
    always
        #10 clock=~clock;
    initial
        begin
            clock=0;
            reset=1;
            {s,r}=0;
            #50 reset=0;
            #70 {s,r}=1;
            #70 {s,r}=2;
            #70 {s,r}=3;
        end      
endmodule
