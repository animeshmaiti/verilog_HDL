`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.08.2023 16:40:39
// Design Name: 
// Module Name: updowncounter
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


module updown_counter(clock,count,reset,ud);
 output reg[3:0]count;
 input clock,reset,ud;
 always @ (posedge clock) begin
  if (reset)
   count<=4'b0;
   else begin
    if(ud)
     count<=count+1;
  else 
    count<=count-1;
    end
 end
endmodule
