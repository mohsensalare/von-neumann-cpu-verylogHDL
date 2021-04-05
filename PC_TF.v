`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:47:30 10/30/2020
// Design Name:   PC
// Module Name:   C:/HDL_Projects/von_neumann/PC_TF.v
// Project Name:  von_neumann
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: PC
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module PC_TF;

	// Inputs
	reg [11:0] DATA_IN;
	reg REST;
	reg clk;
	reg EN;
	reg LOAD;

	// Outputs
	wire [11:0] DATA_OUT;

	// Instantiate the Unit Under Test (UUT)
	PC uut (
		.DATA_IN(DATA_IN), 
		.REST(REST), 
		.clk(clk), 
		.EN(EN), 
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
		EN = 0;
		LOAD = 0;
		// Wait 100 ns for global reset to finish
		#20;
		DATA_IN = 12'h006;
		REST = 0;
		EN = 0;
		LOAD = 1;
		// Wait 100 ns for global reset to finish
		#20;
		DATA_IN = 0;
		REST = 0;
		EN = 1;
		LOAD = 0;
		// Wait 100 ns for global reset to finish
		#20;
        
		// Add stimulus here

	end
      
endmodule

