module demux44a (
	input [3:0]Y,
	input [1:0]S,
	output [3:0]dados_a, dados_b, dados_c, dados_d
);

demux14a demux_a (
	.Y(Y[0]),
	.S(S),
	.A(dados_a[0]),
	.B(dados_b[0]),
	.C(dados_c[0]),
	.D(dados_d[0])
);
demux14a demux_b (
	.Y(Y[1]),
	.S(S),
	.A(dados_a[1]),
	.B(dados_b[1]),
	.C(dados_c[1]),
	.D(dados_d[1])
);
demux14a demux_c (
	.Y(Y[2]),
	.S(S),
	.A(dados_a[2]),
	.B(dados_b[2]),
	.C(dados_c[2]),
	.D(dados_d[2])
);
demux14a demux_d (
	.Y(Y[3]),
	.S(S),
	.A(dados_a[3]),
	.B(dados_b[3]),
	.C(dados_c[3]),
	.D(dados_d[3])
);
endmodule

