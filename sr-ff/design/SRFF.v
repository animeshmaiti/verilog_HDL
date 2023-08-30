`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.08.2023 15:40:32
// Design Name: 
// Module Name: SRFF
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


module SRFF(q,qbar,clock,reset,s,r);
    output reg q,qbar;
    input clock,reset,s,r;
    always @ (posedge clock) begin
    if(reset)
        begin
            q<=1'b0;
            qbar<=~q;
        end
    else begin
            case({s,r})
                2'b00: begin
                    q<=q;
                    qbar<=~q;
                end
                2'b01: begin
                    q<=0;
                    qbar<=1;
                end
                2'b10: begin
                    q<=1;
                    qbar<=0;
                end
                2'b11: begin
                    q<=1'bx;
                    qbar<=1'bx;
                end
            endcase
         end
    end
endmodule
