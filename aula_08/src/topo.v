module topo (
    input [3:0] sw, //chaves de entrada
    output [6:0] hex0 //display de 7 segmentos de saída
);
    
// Fios internos para conectar os módulos
wire D, C, B, A;


// Instância do conversor
conversor conv (
    .H(sw[3]),
    .G(sw[2]),
    .F(sw[1]),
    .E(sw[0]),
    .D(D),
    .C(C),
    .B(B),
    .A(A)
);

// Instância do decodificador
bcd_para_7seg dec (
    .d(A), //ligação invertida para o decodificador
    .c(B), //para respeitar a ordem de significância dos bits
    .b(C),
    .a(D),
    .A(hex0[0]),
    .B(hex0[1]),
    .C(hex0[2]),
    .D(hex0[3]),
    .E(hex0[4]),
    .F(hex0[5]),
    .G(hex0[6])
);
endmodule



