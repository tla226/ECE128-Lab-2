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
module BCD_tb;
wire [6:0] out; //output
reg [3:0] num; //input
 
// Instantiate original module (named DUT {device under test})
Lab2 uut (num, out);
integer i;
initial begin
    
    for(i=0; i<7; i = i+1)
    begin
        #10 num = i; 
    end 

#10 $stop;

end
endmodule