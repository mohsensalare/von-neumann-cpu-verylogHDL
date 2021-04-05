`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:11:05 10/20/2020
// Design Name:   AC
// Module Name:   C:/HDL_Projects/von_neumann/AC_TF.v
// Project Name:  von_neumann
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: AC
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module AC_TF;

	// Inputs
	reg [15:0] DATA_IN;
	reg REST;
	reg clk;
	reg LOAD;

	// Outputs
	wire [15:0] DATA_OUT;

	// Instantiate the Unit Under Test (UUT)
	AC uut (
		.DATA_IN(DATA_IN), 
		.REST(REST), 
		.clk(clk), 
		.DATA_OUT(DATA_OUT), 
		.LOAD(LOAD)
	);
	always 
	begin
	clk = 0;
	#10;
	clk = 1;
	#10;
	end
	initial begin
		// Initialize Inputs
		DATA_IN = 0;
		REST = 1'b1;
		LOAD = 0;

		// Wait 100 ns for global reset to finish
		#20;
       
		DATA_IN = 16'h0001;
		REST = 1'b0;
		LOAD = 1;
		// Add stimulus here
		#20;
		
		DATA_IN = 16'h0003;
		REST = 1'b0;
		LOAD = 1;
		// Add stimulus here
		
	end
      
endmodule

