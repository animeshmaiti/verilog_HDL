// `timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.08.2023 16:45:06
// Design Name: 
// Module Name: testupdown
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


module updown_test();
wire[3:0]count;
reg clock,reset,updown;
updown_counter c0(clock,count,reset,updown);
initial
 begin 
 clock = 0;
 reset =1;
 updown = 0;
 #20 reset=0;
 #160 $stop;
 end
 always
  #5 clock=~clock;
 always
  #80 updown =~updown;
endmodule
