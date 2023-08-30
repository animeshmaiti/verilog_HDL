`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.08.2023 16:38:20
// Design Name: 
// Module Name: JK_using_SR_tb
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


module JK_using_SR_tb();
    reg clock,reset,j,k;
    wire q,qbar;
    JK_using_SR jk(q,qbar,clock,reset,j,k);
    always
        #10 clock=~clock;
    initial
        begin
            clock=0;
            reset=1;
            {j,k}=0;
            #50 reset=0;
            #70 {j,k}=1;
            #70 {j,k}=2;
            #70 {j,k}=3;
        end      
endmodule