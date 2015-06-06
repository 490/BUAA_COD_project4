`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:24:34 11/22/2014 
// Design Name: 
// Module Name:    pc_32 
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
module pc_32(
	input clk,
	input reset,
	input [31:0] npc,
	output [31:0] pc
	
	);
	reg [31:0] pc;
	initial
	begin
		pc=32'b0000_0000_0000_0000_0011_0000_0000_0000;
	end
	always@(posedge clk or posedge reset)
	begin
		if(reset)
			pc=32'b0000_0000_0000_0000_0011_0000_0000_0000;
	else
		pc=npc;
	end
endmodule