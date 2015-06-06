`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:18:05 11/19/2014
// Design Name:   CPU_single
// Module Name:   C:/Users/dell/Desktop/BUAA2/PROJECT/P4-VerilogHDL/CPU/tttttttttest.v
// Project Name:  CPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: CPU_single
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tttttttttest;

	// Inputs
	reg Clk;

	// Outputs
	wire [31:0] Inst;
	wire [31:0] Rs_out;
	wire [31:0] Rt_out;
	wire [31:0] B;
	wire [31:0] Pc;
	wire [3:0] ALU_op;
	wire Jump;
	wire Ext_op;
	wire Branch;
	wire RegDst;
	wire MemtoReg;
	wire ALUsrcB;
	wire Less;
	wire Zero;
	wire Overflow;
	wire [31:0] ALU_out;

	// Instantiate the Unit Under Test (UUT)
	CPU_single uut (
		.Clk(Clk), 
		.Inst(Inst), 
		.Rs_out(Rs_out), 
		.Rt_out(Rt_out), 
		.B(B), 
		.Pc(Pc), 
		.ALU_op(ALU_op), 
		.Jump(Jump), 
		.Ext_op(Ext_op), 
		.Branch(Branch), 
		.RegDst(RegDst), 
		.MemtoReg(MemtoReg), 
		.ALUsrcB(ALUsrcB), 
		.Less(Less), 
		.Zero(Zero), 
		.Overflow(Overflow), 
		.ALU_out(ALU_out)
	);

	initial begin
		// Initialize Inputs
		Clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

