`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:22:01 11/17/2014 
// Design Name: 
// Module Name:    im 
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
module im_4k(addr,dout);
	input [11:2] addr;
	output [31:0] dout;
	reg [31:0] im[1023:0];
	initial
	begin
		$readmemh( "code.txt", im);
	end
	assign dout =im[addr];
endmodule
