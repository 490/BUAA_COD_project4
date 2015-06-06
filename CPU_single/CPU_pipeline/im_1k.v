`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:26:46 11/22/2014 
// Design Name: 
// Module Name:    im_1k 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module im_1k(addr,dout);
	input [11:2] addr;
	output [31:0] dout;
	reg [31:0] im[255:0];
	initial
	begin
		$readmemh( "code.txt", im);
	end
	assign dout =im[addr];
endmodule

