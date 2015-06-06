`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:10:41 11/18/2014
// Design Name:   mips
// Module Name:   C:/Users/dell/Desktop/BUAA2/PROJECT/P4-VerilogHDL/CPU/test.v
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

module test;

	// Inputs
	reg clk;
	reg reset;

	// Outputs
	wire [31:0] Inst;
	wire [31:0] Rs_out;
	wire [31:0] Rt_out;
	wire [31:0] B;
	wire [31:0] pc;
	wire [3:0] aluop;
	wire j;
	wire extop;
	wire ifbeq;
	wire regdst;
	wire memtoreg;
	wire alusrc;
	wire zero;
	wire [31:0] ALU_out;

	// Instantiate the Unit Under Test (UUT)
	mips uut (
		.clk(clk), 
		.reset(reset), 
		.Inst(Inst), 
		.Rs_out(Rs_out), 
		.Rt_out(Rt_out), 
		.B(B), 
		.pc(pc), 
		.aluop(aluop), 
		.j(j), 
		.extop(extop), 
		.ifbeq(ifbeq), 
		.regdst(regdst), 
		.memtoreg(memtoreg), 
		.alusrc(alusrc), 
		.zero(zero), 
		.ALU_out(ALU_out)
	);

	initial begin
		// Initialize Inputs
		#0 clk = 0;
		reset = 0;
		#5 reset=1'b1;
		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
     always #10 clk=~clk;
endmodule

