`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:20:10 11/17/2014 
// Design Name: 
// Module Name:    select32 
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
module select32_3( 
	input [1:0]en,
	input [31:0] A, B,C,	
	output reg [31:0] out
);
	always@(*)
	begin
		case(en[1:0])
			2'b00:out<=A;
			2'b01:out<=B;
			2'b10:out<=C;
			2'b11:out<=A;
		endcase
	end
endmodule
