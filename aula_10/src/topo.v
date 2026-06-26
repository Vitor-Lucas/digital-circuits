module topo (
	input [5:0] sw,
	output [6:0] hex0,
	output [6:0] hex1,
	output [6:0] hex2,
	output [6:0] hex3 
	);

wire [3:0] demux_bcd0; 
wire [3:0] demux_bcd1; 
wire [3:0] demux_bcd2; 
wire [3:0] demux_bcd3;

demux44a demux (
	.Y(sw[3:0]),
	.S(sw[5:4]),
	.dados_a(demux_bcd0),
	.dados_b(demux_bcd1),
	.dados_c(demux_bcd2),
	.dados_d(demux_bcd3)
);

bcd_para_7seg bcd0 (
	.a(demux_bcd0[3]),
	.b(demux_bcd0[2]),
	.c(demux_bcd0[1]),
	.d(demux_bcd0[0]),
	.G(hex0[6]),
	.F(hex0[5]),
	.E(hex0[4]),
	.D(hex0[3]),
	.C(hex0[2]),
	.B(hex0[1]),
	.A(hex0[0])
);

bcd_para_7seg bcd1 (
	.a(demux_bcd1[3]),
	.b(demux_bcd1[2]),
	.c(demux_bcd1[1]),
	.d(demux_bcd1[0]),
	.G(hex1[6]),
	.F(hex1[5]),
	.E(hex1[4]),
	.D(hex1[3]),
	.C(hex1[2]),
	.B(hex1[1]),
	.A(hex1[0])
);

bcd_para_7seg bcd2 (
	.a(demux_bcd2[3]),
	.b(demux_bcd2[2]),
	.c(demux_bcd2[1]),
	.d(demux_bcd2[0]),
	.G(hex2[6]),
	.F(hex2[5]),
	.E(hex2[4]),
	.D(hex2[3]),
	.C(hex2[2]),
	.B(hex2[1]),
	.A(hex2[0])
);

bcd_para_7seg bcd3 (
	.a(demux_bcd3[3]),
	.b(demux_bcd3[2]),
	.c(demux_bcd3[1]),
	.d(demux_bcd3[0]),
	.G(hex3[6]),
	.F(hex3[5]),
	.E(hex3[4]),
	.D(hex3[3]),
	.C(hex3[2]),
	.B(hex3[1]),
	.A(hex3[0])
);

endmodule

