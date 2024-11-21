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
		
		default: begin
			for(int i = 0; i < 32; i = i + 1) begin
				ALUResult[i] = 1; //error code of all ones
			end
		end
		
    endcase
  end

endmodule
