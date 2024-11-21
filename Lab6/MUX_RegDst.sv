module MUX_RegDst(
    input logic RegDst,
    input logic[4:0] rt, //Instr(20:16) 
    input logic[4:0] rd, //Instr(15:11)
    output logic[4:0] RegDst_out
);

//chooses register to write (A3)
//if regDst = 0 (lw instruction) chooses rt
//else chooses rd (r type instructions)
always @(*) begin
    if(RegDst) begin
        RegDst_out = rd;
    end
    else begin
        RegDst_out = rt;
    end
end


endmodule