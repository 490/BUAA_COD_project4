`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:30:48 11/19/2014 
// Design Name: 
// Module Name:    select32_2 
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
module select32_2( 
	input en,
	input [31:0] A, B,	
	output [31:0] out
);
	assign out=(en==0)?A:B;
endmodule
