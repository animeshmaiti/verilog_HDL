`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.09.2023 16:06:57
// Design Name: 
// Module Name: mooreoverlap_1010
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


module mooreoverlap_1010(output reg y, input clk,rst,x);
reg [2:0]cs,ns;
    parameter s0=3'b000,s1=3'b001, s2=3'b010, s3=3'b011,s4=3'b100;
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
            s3:begin ns=x?s1:s4; y=0; end
            s4:begin ns=x?s3:s0;y=x?0:1;end
            default: ns=s0;
        endcase
    end
endmodule
