`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/13/2024 01:45:38 PM
// Design Name: 
// Module Name: Lab2
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

module top(
    input [1:0] i0t,
    input [1:0] i1t,
    input [1:0] i2t,
    input [1:0] i3t,
    input [1:0] st,
    output [6:0] outt
);

    wire [1:0] yt;
    wire [3:0] ytt;
    
    assign ytt={2'b00,yt};
   
    Lab1_Q3 uut2(i0t,i1t,i2t,i3t,st,yt);
    Lab2 uut1(ytt,outt);
endmodule




module Lab2(
    input [3:0] num,
    output reg [6:0] out
    );
    
    always @(num)
    begin
        case (num)
            4'b0000: out = 7'b1000000; // 0
            4'b0001: out = 7'b1111001; // 1
            4'b0010: out = 7'b0100100; // 2
            4'b0011: out = 7'b0110000; // 3
            4'b0100: out = 7'b0011001; // 4
            4'b0101: out = 7'b0010010; // 5
            4'b0110: out = 7'b0000010; // 6
            default: out = 1'bx;
            endcase
         end
         
         
         
endmodule


// 4-to-1 mux (2 bit wide)
module Lab1_Q3(
    input [1:0] i0,
    input [1:0] i1,
    input [1:0] i2,
    input [1:0] i3,
    input [1:0] s,
    output reg [1:0] y
    );
    
    always @(i0 or i1 or i2 or i3 or s)
    begin
        case (s)
            2'b00: y = i0;
            2'b01: y = i1;
            2'b10: y = i2;
            2'b11: y = i3;
            default: y=1'bx;
            endcase
          
    end
endmodule

