`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:30:44 11/18/2014
// Design Name:   PC
// Module Name:   C:/Users/dell/Desktop/BUAA2/PROJECT/P4-VerilogHDL/CPU/testpc.v
// Project Name:  CPU
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

module testpc;

	// Inputs
	reg clk;
	reg reset;
	reg [31:2] npc;

	// Outputs
	wire [31:2] pc;

	// Instantiate the Unit Under Test (UUT)
	PC uut (
		.clk(clk), 
		.reset(reset), 
		.npc(npc), 
		.pc(pc)
	);

	initial begin
		// Initialize Inputs
		#0 clk = 0;
		reset = 0;
		#5 reset=1'b1;
		npc = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
     always #10 clk=~clk;
	  always #10 npc=npc+1;
endmodule

