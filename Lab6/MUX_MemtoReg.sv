module MUX_MemtoReg(
    input logic MemtoReg,
    input logic[31:0] ALUResult,
    input logic[31:0] RD, //from data memory
    output logic[31:0] MemtoReg_out
);

always @(*) begin
    if(MemtoReg) begin
        MemtoReg_out = RD;
    end
    else begin
        MemtoReg_out = ALUResult;
    end
end


endmodule