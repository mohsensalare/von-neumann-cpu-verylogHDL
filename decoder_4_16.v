`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:08:00 10/20/2020 
// Design Name: 
// Module Name:    decoder_4_16 
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
module decoder_4_16(
    input [3:0] IR,
    output LOAD,
    output STORE,
    output ADD,
    output AND,
    output JUMP,
    output JUMPZ,
    output COMP,
    output RSHIFT
    );
	 reg [7:0] A;
	always @(IR)
		begin
			case(IR)
					4'b0000  :A<=8'b0000_0001;
					4'b0001  :A<=8'b0000_0010;
					4'b0010  :A<=8'b0000_0100;
					4'b0011  :A<=8'b0000_1000;
					4'b0100  :A<=8'b0001_0000;
					4'b0101  :A<=8'b0010_0000;
					4'b0110  :A<=8'b0100_0000;
		   		4'b0111  :A<=8'b1000_0000;
					default  :A<=8'b0000_0000;
				endcase
		end
	assign LOAD=A[0];
	assign STORE=A[1];
	assign ADD=A[2];
	assign AND=A[3];
	assign JUMP=A[4];
	assign JUMPZ=A[5];
	assign COMP=A[6];
	assign RSHIFT=A[7];
	
endmodule
