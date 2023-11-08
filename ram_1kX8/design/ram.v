`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.08.2023 16:33:16
// Design Name: 
// Module Name: ram
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


module ram(
    data,addr,we,clk,en,dout
    );
    input [7:0] data;
     input [9:0] addr;
     input we;
     input clk, en;
     output reg[7:0] dout;
     reg[7:0] ram [1023:0];
     always@(posedge clk)begin
     if(en)
      if(we)
       ram[addr]=data;
     else
      dout=ram[addr];
     else
      dout=8'bz;
      end
endmodule