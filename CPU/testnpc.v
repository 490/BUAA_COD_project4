`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:18:16 11/20/2014
// Design Name:   npc
// Module Name:   C:/Users/dell/Desktop/BUAA2/PROJECT/P4-VerilogHDL/CPU/testnpc.v
// Project Name:  CPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: npc
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testnpc;

	// Inputs
	reg zero;
	reg ifbeq;
	reg clk;
	reg j;
	reg jal;
	reg jr;
	reg [31:0] pc;
	reg [25:0] imm26;
	reg [31:0] rd1;

	// Outputs
	wire [31:0] spc;
	wire [31:0] npc;

	// Instantiate the Unit Under Test (UUT)
	npc uut (
		.zero(zero), 
		.ifbeq(ifbeq), 
		.clk(clk), 
		.j(j), 
		.jal(jal), 
		.jr(jr), 
		.pc(pc), 
		.imm26(imm26), 
		.rd1(rd1), 
		.spc(spc), 
		.npc(npc)
	);

	initial begin
		// Initialize Inputs
		zero = 1;
		ifbeq = 1;
		#0 clk = 0;
		j = 0;
		jal = 0;
		jr = 0;
		pc = 0;
		imm26 = 'b00001000100000000000000001;
		rd1 = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here	end
      end
always #10 clk=~clk;

endmodule

