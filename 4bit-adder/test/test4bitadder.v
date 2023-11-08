`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.07.2023 16:43:38
// Design Name: 
// Module Name: test4bitadder
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


module test4bitadder();
    reg [3:0]a,b;
    reg cin;
    wire [3:0]s;
    wire cout;
    Adder_4bit f1(a,b,cin,s,cout);
initial
    begin
        a=0;b=0;cin=0;
        #10 a=4'b0000;b=4'b0000;cin=1;
        #10 a=4'b0000;b=4'b0001;cin=0;
        #10 a=4'b0000;b=4'b0001;cin=1;
        #10 a=4'b0001;b=4'b0000;cin=0;
        #10 a=4'b0001;b=4'b0000;cin=1;
        #10 a=4'b0001;b=4'b0001;cin=0;
        #10 a=4'b0001;b=4'b0001;cin=1;
    end
endmodule
