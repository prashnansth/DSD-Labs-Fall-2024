module sword (input logic sw, reset, clk, output logic v);
	
	parameter st0 = 1'b0;
	parameter st1 = 1'b1;
	
	wire currentState;
	reg nextState;
	
	d_ff d (
		.d(nextState),
		.clk(clk),
		.q(currentState)
	
	);
	
	always @(*) begin
		case(currentState) 
		
			st0: begin
				if (reset) begin
					nextState = st0;
				end
				else begin
					if (sw) begin
						nextState = st1;
					end
					else begin
						nextState = st0;
					end
				end
			end
			
			st1: begin
				if(reset) begin
					nextState = st0;
				end
				else begin
					nextState = st1;
				end
			end
			
			default: begin
				nextState = st0;
			end
			
		endcase
	end

	assign v = (currentState == st1);
	
endmodule