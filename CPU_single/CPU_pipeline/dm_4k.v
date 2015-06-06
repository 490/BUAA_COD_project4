`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:32:26 11/22/2014 
// Design Name: 
// Module Name:    dm_4k 
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
module dm_4k( addr, din, dm_we, clk, dout) ;
	input [11:2] addr ;  
	input [31:0] din ; 
	input dm_we ; 
	input clk ; 
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
		if(dm_we)
			dm[addr]<=din;
	end
endmodule

