`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.11.2023 13:19:11
// Design Name: 
// Module Name: tb_4bit_SIPO_Shift_Register
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


module tb_3bit_SISO_Shift_Register();
  reg clk;
  reg clear;
  reg si;
  wire [2:0] po; // Adjust the width to 3 bits
  
  SISO_3_Bit_Shift_Register S1(clk, clear, si, po); // Update the module name
  
  initial begin
    clk = 0;
    clear = 0;
    si = 0;
    #5 clear = 1'b1;
    #5 clear = 1'b0;
    #10 si = 1'b1;
    #10 si = 1'b0;
    #10 si = 1'b0;
    #10 si = 1'b1;
    #10 si = 1'b0;
    #10 si = 1'bx;
  end

  always #5 clk = ~clk;

  initial #150 $stop;
endmodule

