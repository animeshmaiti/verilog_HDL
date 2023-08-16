// `timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.08.2023 16:03:59
// Design Name: 
// Module Name: testupcounter
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


module upcounter_test();
wire[3:0]count;
reg clock,reset;
upcounter c0(clock,count,reset);
initial
 begin 
 clock = 0;
 reset =1;
 #20 reset=0;
 #160 $stop;
 end
 always
  #5 clock=~clock;
endmodule
