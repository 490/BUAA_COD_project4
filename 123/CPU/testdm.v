`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:36:32 11/18/2014
// Design Name:   dm_4k
// Module Name:   C:/Users/dell/Desktop/BUAA2/PROJECT/P4-VerilogHDL/CPU/testdm.v
// Project Name:  CPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: dm_4k
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testdm;

	// Inputs
	reg [11:2] addr;
	reg [31:0] din;
	reg we;
	reg clk;
	reg reset;

	// Outputs
	wire [31:0] dout;

	// Instantiate the Unit Under Test (UUT)
	dm_4k uut (
		.addr(addr), 
		.din(din), 
		.we(we), 
		.clk(clk), 
		.dout(dout), 
		.reset(reset)
	);

	initial begin
		// Initialize Inputs
		addr = 10'b00_0000_0001;
		din = 32'b0000_0000_0000_0000_0000_0000_0000_1111;
		we = 1;
		#0 clk = 0;
		reset = 0;
		#5 reset=1'b1;
		// Wait 100 ns for global reset to finish
		//#100;
        
		// Add stimulus here
	end
      always #10 clk=~clk;
endmodule

