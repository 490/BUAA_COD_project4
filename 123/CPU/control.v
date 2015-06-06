`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:33:55 11/15/2014 
// Design Name: 
// Module Name:    control 
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
module control(
    input [5:0] op,
    input [5:0] func,
    output [1:0] aluop,
    output ifbeq,
    output memwrite,
    output [1:0] extop,
    output regwrite,
    output memtoreg,
    output alusrc,
    output [1:0] regdst,
	 output j,
	 output jal,
	 output jr,
	 output ifbgtz  //
    );
	wire addu,subu,ori,lw,sw,beq,lui,jal,jr,j,bgtz,sll;
	assign addu=~op[5]&~op[4]&~op[3]&~op[2]&~op[1]&~op[0]&func[5]&~func[4]&~func[3]&~func[2]&~func[1]&func[0];
	assign subu=~op[5]&~op[4]&~op[3]&~op[2]&~op[1]&~op[0]&func[5]&~func[4]&~func[3]&~func[2]&func[1]&func[0];
	assign ori=~op[5]&~op[4]&op[3]&op[2]&~op[1]&op[0];
	assign lw=op[5]&~op[4]&~op[3]&~op[2]&op[1]&op[0];
	assign sw=op[5]&~op[4]&op[3]&~op[2]&op[1]&op[0];
	assign beq=~op[5]&~op[4]&~op[3]&op[2]&~op[1]&~op[0];
	assign lui=~op[5]&~op[4]&op[3]&op[2]&op[1]&op[0];
	assign jal=~op[5]&~op[4]&~op[3]&~op[2]&op[1]&op[0];
	assign jr=~op[5]&~op[4]&~op[3]&~op[2]&~op[1]&~op[0]&~func[5]&~func[4]&func[3]&~func[2]&~func[1]&~func[0];
	assign j=~op[5]&~op[4]&~op[3]&~op[2]&op[1]&~op[0];
	assign sll=~op[5]&~op[4]&~op[3]&~op[2]&~op[1]&~op[0]&~func[5]&~func[4]&~func[3]&~func[2]&~func[1]&~func[0];
	assign bgtz=~op[5]&~op[4]&~op[3]&op[2]&op[1]&op[0];
	assign aluop[1]=ori|lui|sll;
	assign aluop[0]=subu|beq|bgtz|sll;
	assign regdst[0]=addu|subu|sll;
	assign regdst[1]=jal;
	assign alusrc=ori|lw|sw|lui;
	assign memtoreg=lw;
	assign regwrite=addu|subu|ori|lw|lui|jal|sll;
	assign extop[1]=lui;
	assign extop[0]=lw|sw;
	assign memwrite=sw;
	assign ifbeq=beq;
	assign ifbgtz=bgtz;
endmodule
