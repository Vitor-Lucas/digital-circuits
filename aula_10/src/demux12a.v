module demux12a (
	input Y,
	input S,
	output A,
	output B
);

	assign A = Y & ~S;
	assign B = Y & S;
endmodule