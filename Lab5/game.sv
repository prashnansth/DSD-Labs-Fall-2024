module game(input logic clk, n, s, e, w, reset, output logic s6, win, s5, d, s4, s3, sw, s2, s1, s0, v);
	
	
	sword swo(
		.sw(sw),
		.reset(reset),
		.clk(clk),
		.v(v)
	);
	
	room r(
		.clk(clk), 
		.n(n),
		.s(s),
		.e(e),
		.w(w),
		.v(v),
		.reset(reset),
		.s6(s6),
		.s5(s5),
		.s4(s4),
		.s3(s3),
		.s2(s2),
		.s1(s1),
		.s0(s0),
		.win(win),
		.sw(sw),
		.d(d)
	);

	

endmodule