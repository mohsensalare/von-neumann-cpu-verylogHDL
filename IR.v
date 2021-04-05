`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:53:37 10/19/2020 
// Design Name: 
// Module Name:    IR 
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
module IR(
    input [3:0] DATA_IN,
    input REST,
    input clk,
    output [3:0] DATA_OUT,
    input LOAD
    );
	 reg [3:0] Q;
	 always @ (posedge clk)
		begin
		if(REST)
			Q<=4'B0000;
		else if(LOAD)
			Q<=DATA_IN;
		end
	  assign DATA_OUT = Q;
endmodule

