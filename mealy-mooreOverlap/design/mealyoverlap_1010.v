`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.08.2023 16:10:19
// Design Name: 
// Module Name: mealyoverlap_1010
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


module mealyoverlap_1010(output reg y, input clk,rst,x);
 reg [1:0]cs,ns;
   parameter s0=2'b00,s1=2'b01, s2=2'b10, s3=2'b11;
   always @ (posedge clk or posedge rst) begin
       if(rst)
           cs<=s0;
       else
           cs<=ns;
       end
   always @ (cs or x) begin
       case(cs)
           s0:begin ns=x?s1:s0; y=0; end
           s1:begin ns=x?cs:s2; y=0; end
           s2:begin ns=x?s3:s0; y=0; end
           s3:begin ns=x?s1:s2; y=x?0:1; end
           default: ns=s0;
       endcase
   end
endmodule
