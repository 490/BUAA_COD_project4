`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:25:25 11/22/2014 
// Design Name: 
// Module Name:    npc_32 
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
module npc_32(
    input zero,
    input ifbeq,
    input ifj,
	 input ifjal,
	 input ifjr,
    input [31:0] pc,
    input [25:0] imm26,
	 input [31:0] rd1,
	 output reg [31:0] spc,
	 output reg [31:0]npc
    );
	always@(*)
	begin
		spc=pc+4;
		if(ifjal)
			begin
				npc<={pc[31:28],imm26,2'b00};//?
			end
		else	if(ifjr)
					npc<=rd1;
		else	if(ifbeq&&zero)
					npc<=pc+4+{14'b0,imm26[15:0],2'b00};
		else	if(ifj)
					npc<={pc[31:28],imm26,2'b00};
		else
			npc<=pc+4;
	end
endmodule
