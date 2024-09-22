`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/19/2024 01:19:05 PM
// Design Name: 
// Module Name: multiplexer_tb
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

`timescale 1ns/1ps
module Lab1_Q3_tb;
wire y; //output 
reg i0,i1,i2,i3,s; //input
 
// Instantiate original module (named DUT {device under test}) 
Lab1_Q3 uut (i0,i1,i2,i3,s,y);

initial begin 
    #10 i0=2'b11;i1=2'b00;i2=2'b00;i3=2'b00;   s=2'b00;
	#10 i0=2'b00;i1=2'b11;i2=2'b00;i3=2'b00;   s=2'b01;
	#10 i0=2'b00;i1=2'b00;i2=2'b11;i3=2'b00;   s=2'b10;
	#10 i0=2'b00;i1=2'b00;i2=2'b00;i3=2'b11;   s=2'b11;

	#10 $stop;
	
    end 
endmodule
