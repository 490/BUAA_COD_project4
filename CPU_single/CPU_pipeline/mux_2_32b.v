`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:32:05 11/22/2014 
// Design Name: 
// Module Name:    mux_2_32b 
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
module mux_2_32b(
	input en,
	input [31:0] A, B,	
	output [31:0] out
);
	assign out=(en==0)?A:B;
endmodule

