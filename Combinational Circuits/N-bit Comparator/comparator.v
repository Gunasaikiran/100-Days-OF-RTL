`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.03.2023 22:54:23
// Design Name: 
// Module Name: comparator
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


module comparator(
     a,
     b,
     gt,
     lt,
     eq
    );
    input a;
    input b;
    output reg gt;
    output reg lt;
    output reg eq;
    parameter word=16;
    wire [word-1:0]a,b;
    always @(*)
    begin
      gt=0;lt=0;eq=0;
      if(a>b) gt=1;
      else if(a<b) lt=1;
      else eq=1;
    end
endmodule
