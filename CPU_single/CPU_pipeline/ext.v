`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:29:50 11/22/2014 
// Design Name: 
// Module Name:    ext 
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
module ext(
    input [1:0] extop,
    input [15:0] imm16,
    output [31:0] imm32
    );
	assign imm32= (extop[1] && ~extop[0])?{imm16,16'b0}:{16'b0,imm16};
endmodule