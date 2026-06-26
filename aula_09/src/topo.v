module topo (
    input [8:0] sw, // Chaves
    output [6:0] hex0
);
    wire [3:0] m0;
    mux24a mux0 (
        .dado_a(sw[3:0]),
        .dado_b(sw[7:4]),
        .S(sw[8]),
        .saida(m0)
    );
    bcd_para_7seg bcd2sevenseg0 (
        .a(m0[3]),
        .b(m0[2]),
        .c(m0[1]),
        .d(m0[0]),
        .G(hex0[6]),
        .F(hex0[5]),
        .E(hex0[4]),
        .D(hex0[3]),
        .C(hex0[2]),
        .B(hex0[1]),
        .A(hex0[0])
    );
endmodule

