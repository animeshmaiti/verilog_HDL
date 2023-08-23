`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.08.2023 16:16:49
// Design Name: 
// Module Name: testbench
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


module testbench();
reg clock,reset;
 wire[3:0] counter;
 async_counter c1(counter,clock,reset);
 always
  #5 clock=~clock;
  initial
   begin 
    clock=0;
    reset=1;
    #10 reset=0;
    #40 reset=1;
    #10 reset =0;
    end
endmodule
