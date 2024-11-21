

/*
I type instructions
15-0: imm
20-16: rt
25-21: rs
31-26: op
    26: MemtoReg
    29-27: ALUControl
    30: ALUSrc
    31: RegDst
*/


module top_i_type(
input logic clk, rst,
input logic[1:0] sw, //address for instruction memory; 0 = default, 1 = lw, 2 = sw
output logic[31:0] probe_register_file, //outputs data memory at address specified in instruction
output logic[31:0] probe_data_memory, //outputs contents of register that has been written to

output logic[4:0] WriteReg,
output logic[31:0] result,
output logic[31:0] ALUResult,
output logic[31:0] SignImm,
output logic[31:0] SrcA,
output logic[31:0] SrcB,
output logic[31:0] WriteData,
output logic[31:0] ReadData
);

//default instruction
logic[31:0] inst_0 = 32'b0; 

//lw r1, r0, 5
logic[31:0] inst_1 = 32'b010101_00000_00001_0000_0000_0000_0101; 

//sw r6, r0, 2
logic[31:0] inst_2 = 32'b010100_00000_00110_0000_0000_0000_0010;

logic[31:0] inst_ex; //instruction to be executed
assign inst_ex = (sw==1)? inst_1:(sw==2)? inst_2: inst_0;

/*
wire[4:0] WriteReg;
wire[31:0] result; 
wire[31:0] ALUResult;
wire[31:0] SignImm;
wire[31:0] SrcA;
wire[31:0] SrcB;
wire[31:0] WriteData;
wire[31:0] ReadData;
*/

MUX_RegDst mux1(
    .RegDst(inst_ex[31]),
    .rt(inst_ex[20:16]),
    .rd(inst_ex[15:11]),
    .RegDst_out(WriteReg)
);



MUX_MemtoReg mux2(
    .MemtoReg(inst_ex[26]),
    .ALUResult(ALUResult),
    .RD(ReadData),
    .MemtoReg_out(result)
);


MUX_ALUSrc mux3(
    .ALUSrc(inst_ex[30]),
    .SignImm(SignImm),
    .RD2(WriteData),
    .ALUSrc_out(SrcB)
);


register_file rf(
    .clk(clk),
    .rst(rst),
    .A1(inst_ex[25:21]), 
    .A2(inst_ex[20:16]),
    .A3(WriteReg),
    .WD3(result),
    .WE3(inst_ex[26]),     
    .RD1(SrcA),
    .RD2(WriteData),
    .prode(probe_register_file) 
);

data_memory mem(
    .clk(clk),.rst(rst),
    .A(ALUResult),
    .WD(WriteData),
    .WE(!inst_ex[26]),
    .RD(ReadData),
    .prode(probe_data_memory)
);

sign_extend se(
    .Imm(inst_ex[15:0]),
    .SignImm(SignImm)
);

ALU alu(
    .SrcA(SrcA),
    .SrcB(SrcB),
    .ALUControl(inst_ex[29:27]),
    .ALUResult(ALUResult)
);


endmodule

