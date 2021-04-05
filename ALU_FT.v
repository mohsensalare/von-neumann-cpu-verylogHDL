`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:22:29 10/19/2020
// Design Name:   ALU16_bit
// Module Name:   C:/HDL_Projects/von_neumann/ALU_FT.v
// Project Name:  von_neumann
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALU16_bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ALU_FT;

	// Inputs
	reg [15:0] A;
	reg [15:0] B;
	reg [1:0] FUN;

	// Outputs
	wire [15:0] Z;

	// Instantiate the Unit Under Test (UUT)
	ALU16_bit uut (
		.A(A), 
		.B(B), 
		.FUN(FUN), 
		.Z(Z)
	);
	
	initial begin
		// Initialize Inputs
		A = 16'B0000_0000_0000_1011;
		B = 16'B0000_0010_0110_1001;
		FUN =2'B00;

		// Wait 100 ns for global reset to finish
		#100;
      A = 16'B0000_0000_0000_1011;
		B = 16'B0000_0010_0110_1001;
		FUN =2'B01;

		// Wait 100 ns for global reset to finish
		#100;
		A = 16'B0000_0000_0000_1011;
		B = 16'B0000_0010_0110_1001;
		FUN = 2'B10;

		// Wait 100 ns for global reset to finish
		#100;
		A = 16'B0000_0000_0000_1011;
		B = 16'B0000_0010_0110_1001;
		FUN = 2'B11;

		// Wait 100 ns for global reset to finish
		#100;
		// Add stimulus here

	end
      
endmodule

