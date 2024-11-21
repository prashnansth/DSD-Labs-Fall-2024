module data_memory(
input logic clk, rst,
input logic[31:0] A, //address
input logic[31:0] WD, //input data
input logic WE, //enable input
output logic[31:0] RD,
output logic[31:0] prode 
);


	reg [31:0] mem [0:255]; //256 x 32 memory file

	always @(*) begin
		prode = mem[A];
		if(!WE) begin 
			 RD = mem[A];
		end 
	end 
	
	
		
	always @(posedge clk) begin
		if(!rst) begin
			//initializes all data
			for(int i = 0; i < 256; i++) begin
				 mem[i] <= i;
			end        
		end
		 if(WE) begin
			  mem[A] <= WD;
		 end
	end

	
endmodule