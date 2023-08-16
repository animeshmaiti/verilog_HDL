`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 
// Design Name: 
// Module Name: down_counter
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




module downcounter(clock,count,reset);
 output reg[3:0]count;
 input clock,reset;
 always @ (posedge clock) begin
  if (reset)
   count<=4'b0;
  else 
    count<=count-1;
end
endmodule
