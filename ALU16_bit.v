`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:13:24 10/14/2020 
// Design Name: 
// Module Name:    ALU16_bit 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module ALU16_bit(
    input [15:0] A,
    input [15:0] B,
    input [1:0] FUN,
    output [15:0] Z
    );
		wire[15:0] ADD,AND,NOT,SHR;
		assign ADD=A+B;
		assign AND=A & B;
		assign NOT= ~A;
		assign SHR=A>>1;
		assign Z=(FUN==2'b00)?ADD:(FUN==2'b01)?AND:(FUN==2'b10)?NOT:SHR;

endmodule
