`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:42:01 10/19/2020 
// Design Name: 
// Module Name:    AR 
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
module AR(
    input [11:0] DATA_IN,
    input REST,
    input clk,
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
		end
	  assign DATA_OUT = Q;
endmodule


