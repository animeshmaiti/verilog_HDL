`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.08.2023 16:52:56
// Design Name: 
// Module Name: testbench
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


module testbench();
    reg wr,clk,rst;
        reg [7:0] din;
        reg [9:0] addr;
        wire [7:0] dout;
        ram1kx8 r1(din, addr,wr,clk, rst, dout);
        initial
            begin
            clk=0;
            rst=1;
            wr=1;
            addr=32;
            din=0;
            #70 rst=0; din=24; addr=45;
            #50 addr=64;din=42;
            #100 wr=0;add
            data=12;
            addr=20;
            #10;
            we=0;
            addr=10; 
            #10;
            addr=20;
            #10 
            en=0;
            #20
            en=1; 
            $finish;
            end
        always #5 clk = ~clk; 
endmodule