`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:46:13 11/18/2014
// Design Name:   im_4k
// Module Name:   C:/Users/dell/Desktop/BUAA2/PROJECT/P4-VerilogHDL/CPU/text.v
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

module text;

	// Inputs
	reg clk;
	reg reset;
	reg [11:2] addr;
	reg enable;

	// Outputs
	wire [31:0] dout;

	// Instantiate the Unit Under Test (UUT)
	im_4k uut (
		.clk(clk), 
		.reset(reset), 
		.addr(addr), 
		.enable(enable), 
		.dout(dout)
	);

	initial begin
		// Initialize Inputs
		#0 clk = 0;
		reset = 0;
		#5 reset=1'b1;
		addr = 0;
		enable = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      always #10 clk=~clk;
endmodule

