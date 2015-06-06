`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:35:13 11/17/2014 
// Design Name: 
// Module Name:    dm 
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
module dm_4k( addr, din, we, clk, dout) ;
	input [11:2] addr ;  // address bus
	input [31:0] din ;  // 32-bit input data
	input we ;  // memory write enable
	input clk ;  // clock
	output [31:0] dout ;
	reg [31:0] dm[1023:0] ;
	assign dout=dm[addr];	
	integer i;
	initial
	begin
		for(i=0;i<1025;i=i+1)
			dm[i]<=32'b0;
	end
	always@(posedge clk)
	begin
		if(we)
			dm[addr]<=din;
	end
endmodule
