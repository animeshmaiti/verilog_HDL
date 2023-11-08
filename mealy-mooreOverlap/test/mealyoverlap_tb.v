`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.08.2023 16:16:01
// Design Name: 
// Module Name: mealyoverlap_tb
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

module mealyoverlap_tb();
    wire y;
    reg clock,reset,x;
    mealyoverlap_1010 m1(y,clock,reset,x);
    initial
        begin
            clock=0;
            reset=1;
            x=0;
            #20 reset=0; x=1;
            #200 $stop;
        end
    always #5 clock=~clock;
    always #10 x=~x;
endmodule
