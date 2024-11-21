module register_file(input logic clk, rst,
                       input logic[4:0] A1, A2, A3, //addresses
                       input logic[31:0] WD3, //data from data memory
                       input logic WE3, //writes to register file if ==1
                       output logic[31:0] RD1, //output 1
                       output logic[31:0] RD2, //output 2
                       output logic[31:0] prode //prode to check the result in register file
                      );

  //32 x 32 register array
  reg [31:0] registers [0:31];


  assign prode = registers[1];
  

  always @(posedge clk)
  begin
    if(!rst)
    begin
      for(int i = 0; i < 32; i++)
      begin
        registers[i] <= i;
      end
    end
    else
    begin
		RD1 <= registers[A1];
		RD2 <= registers[A2];
      if(WE3)
      begin
        registers[A3] <= WD3;
      end
    end
  end

endmodule