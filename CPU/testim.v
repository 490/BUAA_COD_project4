`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:12:04 11/19/2014
// Design Name:   im_4k
// Module Name:   C:/Users/dell/Desktop/BUAA2/PROJECT/P4-VerilogHDL/CPU/testim.v
// Project Name:  CPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: im_4k
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testim;

	// Inputs
	reg [11:2] addr;

	// Outputs
	wire [31:0] dout;

	// Instantiate the Unit Under Test (UUT)
	im_4k uut (
		.addr(addr), 
		.dout(dout)
	);

	initial begin
		// Initialize Inputs
		addr = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

