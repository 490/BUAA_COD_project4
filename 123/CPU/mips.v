`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:25:39 11/17/2014 
// Design Name: 
// Module Name:    mips 
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
module mips(
  input clk,
  input reset
  //output [1:0]tregdst,
 // output [5:0]ta3
);
  wire [31:0] imout, rd1,imm32,rd2,wd,b,aluout,dmout,spc,pc,npc;
  wire [1:0] aluop,extop,regdst;
  wire j,jal,jr,ifbeq, memtoreg, alusrc,regwrite,memwrite,zero,bgtz,dayuling;
  wire [5:0] op,funct;
  wire [4:0] rs, rt, rd, a1,a2,a3;
  wire [15:0] imm16;
  
 // assign tregdst=regdst;
 // assign ta3=op;
  
  PC Pc(.clk(clk),.reset(reset),.npc(npc),.pc(pc));
	
  im_4k im(.addr(pc[11:2]),.dout(imout));

  dm_4k dm(.addr(aluout[11:2]),.din(rd2),.we(memwrite),.clk(clk),.dout(dmout));
  
  control ctrl(.op(imout[31:26]),.func(imout[5:0]),.aluop(aluop[1:0]),.ifbeq(ifbeq),.memwrite(memwrite),.extop(extop[1:0]),.regwrite(regwrite),.memtoreg(memtoreg),.alusrc(alusrc),.regdst(regdst[1:0]),.j(j),.jal(jal),.jr(jr),.ifbgtz(bgtz));
  
  select5 sel1(.en(regdst[1:0]),.A(imout[20:16]),.B(imout[15:11]),.C(5'b11111),.out(a3));
  
  select32_3 sel3(.en({jal,memtoreg}),.A(aluout),.B(dmout),.C(spc),.out(wd));
  
  regfile gpr(.clk(clk),.a1(imout[25:21]),.a2(imout[20:16]),.a3(a3),.enable(regwrite),.wd(wd),.rd1(rd1),.rd2(rd2));
      
  ext extend(.extop(extop[1:0]),.imm16(imout[15:0]),.imm32(imm32));

  select32_2 sel2(.en(alusrc),.A(rd2),.B(imm32),.out(b));
   
  alu ALU(.a(rd1),.b(b),.s(imout[10:6]),.op(aluop[1:0]),.zero(zero),.aluout(aluout),.dayuling(dayuling)); 

  npc nextpc(.zero(zero),.ifbeq(ifbeq),.j(j),.jal(jal),.jr(jr),.pc(pc),.imm26(imout[25:0]),.rd1(rd1),.spc(spc),.npc(npc),.ifbgtz(bgtz),.dayuling(dayuling));
  
endmodule  
