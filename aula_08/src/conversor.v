module conversor (
	input H, G, F, E, //Entradas
	output D, C, B, A //Saídas
);

assign D = H & G;
assign C = (~H & G & E) | (H & ~G);
assign B = (~H & G & ~E) | (~G & F) | (H & ~G);
assign A = (~H & ~G & ~F & E) | (~H & G & ~E) | (G & F) | (H & G & E) |(H & F);

endmodule
