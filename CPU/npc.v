`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:32:59 11/17/2014 
// Design Name: 
// Module Name:    npc 
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
module npc(
    input zero,
    input ifbeq,
    input j,
	 input jal,
	 input jr,
    input [31:0] pc,
    input [25:0] imm26,
	 input [31:0] rd1,
	 output reg [31:0] spc,
	 output reg [31:0]npc
    );
	always@(*)
	begin
		spc=pc+4;
		if(jal)
			begin
				npc<={pc[31:28],imm26,2'b00};//?
			end
		else	if(jr)
					npc<=rd1;
		else	if(ifbeq&&zero)
					//npc<=pc+4+{{14{imm26[15]}},imm26[15:0],2'b00};
					//npc<=pc+4+{16'b0,imm26[15:2],2'b0};
					npc<=pc+4+{14'b0,imm26[15:0],2'b00};
		else	if(j)
					npc<={pc[31:28],imm26,2'b00};
		else
			npc<=pc+4;
	end
endmodule
