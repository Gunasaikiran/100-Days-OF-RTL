`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.03.2023 23:11:46
// Design Name: 
// Module Name: encoder
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


module encoder(
    input [7:0] in,
    input e,
    output[2:0] out
    );
    reg [2:0] out;
    always @(*)
    begin
      if(e==1)
      begin
       case (in)
       8'b00000001: out=3'd0;
       8'b00000010: out=3'd1;
       8'b00000100: out=3'd2;
       8'b00001000: out=3'd3;
       8'b00010000: out=3'd4;
       8'b00100000: out=3'd5;
       8'b01000000: out=3'd6;
       8'b10000000: out=3'd7;
       default:out=3'd0;
       endcase
      end
      else
      out=3'b000;
    end
endmodule
