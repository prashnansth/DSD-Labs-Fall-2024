


module room (input logic clk, n, s, e, w, v, reset, output logic s6, win, s5, d, s4, s3, sw, s2, s1, s0);

	//state encodings
	parameter st0 = 7'b0000001; //cave of cacophony
	parameter st1 = 7'b0000010; //twisty tunnel
	parameter st2 = 7'b0000100; //rapid river
	parameter st3 = 7'b0001000; //sword stash
	parameter st4 = 7'b0010000; //dragons den
	parameter st5 = 7'b0100000; //victory vault
	parameter st6 = 7'b1000000; //grevious graveyard
	
	wire [6:0] currentState;
	reg [6:0] nextState;
	
	//stores s0 to s6 in dff d0 to d6
	d_ff d0 (
		.d(nextState[0]),
		.clk(clk),
		.q(currentState[0])
	
	);
	
	d_ff d1 (
		.d(nextState[1]),
		.clk(clk),
		.q(currentState[1])
	
	);

	d_ff d2 (
		.d(nextState[2]),
		.clk(clk),
		.q(currentState[2])
	
	);

	d_ff d3 (
		.d(nextState[3]),
		.clk(clk),
		.q(currentState[3])
	
	);

	d_ff d4 (
		.d(nextState[4]),
		.clk(clk),
		.q(currentState[4])
	
	);

	d_ff d5 (
		.d(nextState[5]),
		.clk(clk),
		.q(currentState[5])
	
	);

	d_ff d6 (
		.d(nextState[6]),
		.clk(clk),
		.q(currentState[6])
	
	);	
	
	//next state logic
	always @(*) begin
		case(currentState)
		
			st0: begin
			
				if(~reset & e) begin
					nextState = st1;
				end 
				
				else if(reset) begin
					nextState = st0;
				end
				
				else begin
					nextState = st0;
				end
			
			end
			
			st1: begin
			
				if(~reset & w) begin
					nextState = st0;
				end 
				
				if(~reset & s) begin
					nextState = st2;
				end 
				
				else if(reset) begin
					nextState = st0;
				end
				
				else begin
					nextState = st0;
				end
			
			end
			
			st2: begin
				if(reset) begin
					nextState = st0;
				end
				else begin
					if(w) begin
						nextState = st3;
					end
					else if(s & e) begin
						nextState = st4;
					end
					else if(n) begin
						nextState = st5;
					end
				end
			end
			
			st3: begin
				if(reset) begin 
					nextState = st0; 
				end else begin
					if(e) begin
						nextState = st2;
					end else begin
						nextState = st3;
					end
				end
			end
			
			st4: begin
				if(reset) begin
					nextState = st0;
				end else begin
					if(v) begin
						nextState = st5;
					end else begin
						nextState = st6;
					end
				end
			end
			
			st5: begin
				if(reset) begin
					nextState = st0;
				end else begin
					nextState = st5;
				end
			end
			
			st6: begin
				if(reset) begin
					nextState = st0;
				end else begin
					nextState = st6;
				end
			end
			
			default: begin
				nextState = st0;
			end
		endcase
	end
	
	//output logic
	assign s0 = (currentState == st0);
	assign s1 = (currentState == st1);
	assign s2 = (currentState == st2);
	assign s3 = (currentState == st3);
	assign s4 = (currentState == st4);
	assign s5 = (currentState == st5);
	assign s6 = (currentState == st6);
	
	assign win = (currentState == st5);
	assign d = (currentState == st6);
	assign sw = (currentState == st3);

	
	
endmodule
