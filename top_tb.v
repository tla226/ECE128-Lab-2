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
module top_tb;
wire [6:0] outt; //output
reg [1:0] i0t;
reg [1:0] i1t;
reg [1:0] i2t;
reg [1:0] i3t;
reg [1:0] st; //input
 
top uut1(i0t,i1t,i2t,i3t,st,outt);

integer i, j;
    initial begin
        i0t = 2'b00;i1t = 2'b01;i2t = 2'b10;i3t = 2'b11;
        st = 2'b00; #10;st = 2'b01;#10; st = 2'b10;#10; st = 2'b11;  

        #10 i0t = 2'b01;#10 st = 2'b00; #10 st = 2'b01;#10 i1t = 2'b11;          
        
        #10; i0t = 2'b10; i1t = 2'b00; i2t = 2'b01; i3t = 2'b11; 
        st = 2'b00; #10;
        st = 2'b01; #10;
        st = 2'b10; #10;
        st = 2'b11; #10;
    #10
    
      $stop;

end
endmodule