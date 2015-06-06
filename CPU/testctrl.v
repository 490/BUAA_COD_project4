`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:55:33 11/18/2014
// Design Name:   control
// Module Name:   C:/Users/dell/Desktop/BUAA2/PROJECT/P4-VerilogHDL/CPU/testctrl.v
// Project Name:  CPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: control
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testctrl;

	// Inputs
	reg [5:0] op;
	reg [5:0] func;

	// Outputs
	wire [1:0] aluop;
	wire ifbeq;
	wire memwrite;
	wire [1:0] extop;
	wire regwrite;
	wire memtoreg;
	wire alusrc;
	wire regdst;

	// Instantiate the Unit Under Test (UUT)
	control uut (
		.op(op), 
		.func(func), 
		.aluop(aluop), 
		.ifbeq(ifbeq), 
		.memwrite(memwrite), 
		.extop(extop), 
		.regwrite(regwrite), 
		.memtoreg(memtoreg), 
		.alusrc(alusrc), 
		.regdst(regdst)
	);

	initial begin
		// Initialize Inputs
		op = 6'b000100;
		func = 6'b000000;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

