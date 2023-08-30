`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.08.2023 16:27:38
// Design Name: 
// Module Name: JK_using_SR
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


module JK_using_SR(q,qbar,clock,reset,j,k);
    inout q,qbar;
    input clock,reset,j,k;
    wire w0,w1;
    and a1(w0,j,qbar);
    and a2(w1,k,q);
    SRFF sr(q,qbar,clock,reset,j,k); 
endmodule
