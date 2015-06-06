`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:24:53 11/22/2014
// Design Name:   mips
// Module Name:   C:/Users/dell/Desktop/BUAA2/PROJECT/P5-VerilogHDL-pipeline_CPU-V1/CPU_pipeline/CPU_pipeline/test_mips.v
// Project Name:  CPU_pipeline
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mips
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_mips;

	// Inputs
	reg clk;
	reg reset;

	// Instantiate the Unit Under Test (UUT)
	mips uut (
		.clk(clk), 
		.reset(reset)
	);

	initial begin
		// Initialize Inputs
		#0 clk = 0;
		#0 reset = 1;
		#5 reset=~reset;
		// Wait 100 ns for global reset to finish
		//#100;
        
		// Add stimulus here

	end
      always #10 clk=~clk;
endmodule

