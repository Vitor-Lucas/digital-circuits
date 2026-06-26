module demux14a (
	input Y,
	input [1:0] S,
	output A,
	output B,
	output C,
	output D
);
	assign A = Y & ~S[1] & ~S[0];
	assign B = Y & ~S[1] &  S[0];
	assign C = Y &  S[1] & ~S[0];
	assign D = Y &  S[1] &  S[0];
	
endmodule