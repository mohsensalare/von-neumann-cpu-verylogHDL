`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:12:23 10/19/2020 
// Design Name: 
// Module Name:    DR 
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

module DR(
    input [15:0] DATA_IN,
    input REST,
    input clk,
    output [15:0] DATA_OUT,
    input LOAD
    );
	 reg [15:0] Q;
	 always @ (posedge clk)
		begin
		if(REST)
			Q<=16'h0000;
		else if(LOAD)
			Q<=DATA_IN;
		end
	  assign DATA_OUT = Q;
endmodule

