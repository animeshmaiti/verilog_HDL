`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 
// Design Name: SISO_3_Bit_Shift_Register
// Module Name: 
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


module SISO_3_Bit_Shift_Register(clk, clear, si, po);
  input clk, si, clear;
  output [2:0] po;
  reg [2:0] tmp;
  
  always @(posedge clk)
  begin
    if (clear)
      tmp <= 3'b000;
    else
      tmp <= {tmp[1:0], si};
      
    po = tmp;
  end
endmodule