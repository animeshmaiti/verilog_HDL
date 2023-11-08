`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.08.2023 16:28:12
// Design Name: 
// Module Name: mealynonoverlap_tb
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

module mealynonoverlap_tb();
    wire y;
    reg clk,rst,x;
    mealynonoverlap_1010 m1(y,clk,rst,x);
    initial
        begin
            clk=0;
            rst=1;
            x=0;
            #20 rst=0; x=1;
            #200 $stop;
        end
    always #5 clk=~clk;
    always #10 x=~x;
endmodule