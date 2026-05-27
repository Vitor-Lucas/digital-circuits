module topo (
	input [6:0] sw, //chaves da placa de desenvolvimento
	output [6:0] hex0 //display 0 da placa de desenvolvimento
);
//fios para conectar os bits dos switches às entradas do bcd_para_7seg
wire wa, wb, wc, wd; 
//instância do módulo bcd_para_7seg
bcd_para_7seg bcd_to_7seg (
	.a(wa), //terminal a do bcd_para_7seg conectado ao fio wa
	.b(wb), //terminal b do bcd_para_7seg conectado ao fio wb
	.c(wc), //terminal c do bcd_para_7seg conectado ao fio wc
	.d(wd), //terminal d do bcd_para_7seg conectado ao fio wd	
	.G(hex0[6]), //terminal G do hex0 conectado à saída hex0
	.F(hex0[5]), //terminal F do hex0 conectado à saída hex0
	.E(hex0[4]), //terminal E do hex0 conectado à saída hex0
	.D(hex0[3]), //terminal D do hex0 conectado à saída hex0
	.C(hex0[2]), //terminal C do hex0 conectado à saída hex0
	.B(hex0[1]), //terminal B do hex0 conectado à saída hex0
	.A(hex0[0]) //terminal A do hex0 conectado à saída hex0
);
//instância do módulo somador_3b
somador_3b somador (
	.a(sw[2:0]), //entrada a do somador conectada aos 3 bits menos significativos dos switches
	.b(sw[5:3]), //entrada b do somador conectada aos 3 bits mais significativos dos switches
	.co(wa), //carry out do somador conectado ao terminal a do bcd_para_7seg
	.ci(sw[6]), //carry in do somador conectado ao bit mais significativo dos switches
	.s({wb,wc,wd}) //saída do somador conectada aos fios wb, wc e wd, que por sua vez estão conectados às entradas do bcd_para_7seg
);
endmodule
  


