`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:28:07 11/19/2014
// Design Name:   mips
// Module Name:   C:/Users/dell/Desktop/BUAA2/PROJECT/P4-VerilogHDL/CPU/test_1.v
// Project Name:  CPU
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

module test_1;

	// Inputs
	reg clk;
	reg reset;
//	wire [31:0]t1;
//	wire [1:0]tregdst;
//	wire [5:0] ta3;
	// Instantiate the Unit Under Test (UUT)
	mips uut (
		.clk(clk), 
		.reset(reset)
	//	.t1(t1)
	//	.tregdst,
	//	.ta3
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

