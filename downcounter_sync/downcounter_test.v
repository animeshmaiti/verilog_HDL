`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.08.2023 16:26:35
// Design Name: 
// Module Name: testdowncounter
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



module downcounter_test();
wire[3:0]count;
reg clock,reset;
downcounter c0(clock,count,reset);
initial
 begin 
 clock = 0;
 reset =1;
 #20 reset=0;
 #150 $stop;
 end
 always
  #5 clock=~clock;
endmodule
