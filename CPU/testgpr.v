`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:43:46 11/18/2014
// Design Name:   regfile
// Module Name:   C:/Users/dell/Desktop/BUAA2/PROJECT/P4-VerilogHDL/CPU/testgpr.v
// Project Name:  CPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: regfile
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testgpr;

	// Inputs
	reg clk;
	reg reset;
	reg [4:0] a1;
	reg [4:0] a2;
	reg [4:0] a3;
	reg enable;
	reg [31:0] wd;

	// Outputs
	wire [31:0] rd1;
	wire [31:0] rd2;

	// Instantiate the Unit Under Test (UUT)
	regfile uut (
		.clk(clk), 
		.reset(reset), 
		.a1(a1), 
		.a2(a2), 
		.a3(a3), 
	//	.enable(enable), 
		.wd(wd), 
		.rd1(rd1), 
		.rd2(rd2)
	);

	initial begin
		// Initialize Inputs
		#0 clk = 0;
		reset = 0;
		#5 reset=1'b1;
		a1 = 0;
		a2 = 0;
		a3 = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      always #10 clk=~clk;
endmodule

