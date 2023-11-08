`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.07.2023 16:11:10
// Design Name: 
// Module Name: Full_4_BitAdder
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


module Adder_4bit(
    a, b, cin, s, cout
    );
    input [3:0]a,b;
    output [3:0]s;
    output cout;
    input cin;
    wire c0, c1, c2;
    FullAdder FA0(.a(a[0]),.b(b[0]),.cin(cin),.sum(s[0]),.carry(c0));
    FullAdder FA1(.a(a[1]),.b(b[1]),.cin(c0),.sum(s[1]),.carry(c1));
    FullAdder FA2(.a(a[2]),.b(b[2]),.cin(c1),.sum(s[2]),.carry(c2));
    FullAdder FA3(.a(a[3]),.b(b[3]),.cin(c2),.sum(s[3]),.carry(cout));
endmodule
