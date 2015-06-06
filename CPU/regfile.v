`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:23:40 11/17/2014 
// Design Name: 
// Module Name:    regfile 
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
module regfile(
    input clk,
    input [4:0] a1,
    input [4:0] a2,
    input [4:0] a3,
    input enable,
    input [31:0] wd,
    output [31:0] rd1,
    output [31:0] rd2
    );
	reg [31:0] register [31:0];
	integer i;
	initial
	begin
		for(i=0;i<33;i=i+1)
			register[i]<=32'b0;
	end
	always@(posedge clk)
	begin
		if(enable)
			register[a3]<=wd;
	end
	assign rd1=register[a1];
	assign rd2=register[a2];
endmodule
