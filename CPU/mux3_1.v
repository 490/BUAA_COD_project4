`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:44:05 11/17/2014 
// Design Name: 
// Module Name:    mux3_1 
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
module mux3_1(
    input [31:0] in0,
    input [31:0] in1,
    input [31:0] in2,
    input sel,
    output [31:0] out
    );
	output reg[31:0] out;
	always@(in0,in1,in2,sel)
		case(sel)
			0:out<=in0;
			1:out<=in1;
			10:out<=in2;
			default:out<=in0;
		endcase
	

endmodule
