`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.03.2023 22:35:38
// Design Name: 
// Module Name: Full_subtractor
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


module Full_subtractor(
    input A,
    input B,
    input C,
    output Sub,
    output Borrow
    );
    assign Sub= (A^B)^C;
    assign Borrow=(~A&C)|(~A&B)|(B&C);
endmodule
