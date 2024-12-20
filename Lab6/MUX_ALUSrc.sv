module MUX_ALUSrc(
    input logic ALUSrc,
    input logic[31:0] SignImm,
    input logic[31:0] RD2, //from register file
    output logic[31:0] ALUSrc_out
);

always @(*) begin
    if(!ALUSrc) begin
        ALUSrc_out = RD2;
    end
    else begin
        ALUSrc_out = SignImm;
    end
end


endmodule