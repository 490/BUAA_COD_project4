`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:21:13 11/19/2014
// Design Name:   alu
// Module Name:   C:/Users/dell/Desktop/BUAA2/PROJECT/P4-VerilogHDL/CPU/testalu.v
// Project Name:  CPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: alu
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testalu;

	// Inputs
	reg [31:0] a;
	reg [31:0] b;
	reg [1:0] op;

	// Outputs
	wire zero;
	wire [31:0] aluout;

	// Instantiate the Unit Under Test (UUT)
	alu uut (
		.a(a), 
		.b(b), 
		.op(op), 
		.zero(zero), 
		.aluout(aluout)
	);

	initial begin
		// Initialize Inputs
		a = 1;
		b = 1;
		op = 2'b01;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

