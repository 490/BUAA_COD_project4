


`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:18:46 11/17/2014 
// Design Name: 
// Module Name:    select5_1 
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
module select5(  
		input en,
	  input [4:0] A, B,
	  output [4:0] out
);
  assign out=(en==0)?A:B;
endmodule
