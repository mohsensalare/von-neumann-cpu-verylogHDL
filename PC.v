`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:04:11 10/20/2020 
// Design Name: 
// Module Name:    PC 
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
module PC(
    input [11:0] DATA_IN,
    input REST,
    input clk,
    input EN,
    output [11:0] DATA_OUT,
    input LOAD
    );
	 reg [11:0] Q;
	 always @ (posedge clk)
		begin
		if(REST)
			Q<=12'h000;
		else if(LOAD)
			Q<=DATA_IN;
		else if(EN)
			Q<=Q+1;
		end
	  assign DATA_OUT = Q;
endmodule

