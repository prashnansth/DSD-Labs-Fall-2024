module ALU(
    input logic[31:0] SrcA,
    input logic[31:0] SrcB,
    input logic[2:0] ALUControl,
    output logic[31:0] ALUResult
  );

  always@(*)
  begin
    case(ALUControl)

      3'b010:
      begin
        ALUResult = SrcA + SrcB;
      end

      3'b110:
      begin
        ALUResult = SrcA - SrcB;
      end
    endcase
  end

endmodule
