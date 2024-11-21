module sign_extend(
input logic[15:0] Imm,
output logic[31:0] SignImm
);

always @(*) begin
    SignImm[31:0] = { {16{Imm[15]}}, Imm[15:0] };
end 

endmodule