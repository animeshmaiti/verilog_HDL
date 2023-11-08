`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.09.2023 16:29:26
// Design Name: 
// Module Name: moore_test_overlap
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


module moore_test_overlap();
    wire y;
        reg clock,reset,x;
        mooreoverlap_1010 m1(y,clock,reset,x);
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
