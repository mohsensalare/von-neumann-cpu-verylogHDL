`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:41:47 10/30/2020
// Design Name:   IR
// Module Name:   C:/HDL_Projects/von_neumann/IR_TF.v
// Project Name:  von_neumann
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: IR
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module IR_TF;

	// Inputs
	reg [3:0] DATA_IN;
	reg REST;
	reg clk;
	reg LOAD;

	// Outputs
	wire [3:0] DATA_OUT;

	// Instantiate the Unit Under Test (UUT)
	IR uut (
		.DATA_IN(DATA_IN), 
		.REST(REST), 
		.clk(clk), 
		.DATA_OUT(DATA_OUT), 
		.LOAD(LOAD)
		);
	always
	begin
	clk = 1;
	#10;
	clk = 0;
	#10;
	end
	initial begin
		// Initialize Inputs
		DATA_IN = 0;
		REST = 1;
		LOAD = 0;
		// Wait 100 ns for global reset to finish
		#20;
      DATA_IN = 12'h005;
		REST = 0;
		LOAD = 1;
        
		// Add stimulus here

	end
      
endmodule

