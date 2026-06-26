module mux24a(
    input [3:0] dado_a, 
    input [3:0] dado_b,
    input S,
    output [3:0] Y
);

    mux21a m0 (
        .A(dado_a[0]),
        .B(dado_b[0]),
        .S(S),
        .Y(Y[0])
    );

    mux21a m1 (
        .A(dado_a[1]),
        .B(dado_b[1]),
        .S(S),
        .Y(Y[1])
    );

    mux21a m2 (
        .A(dado_a[2]),
        .B(dado_b[2]),
        .S(S),
        .Y(Y[2])
    );

    mux21a m3 (
        .A(dado_a[3]),
        .B(dado_b[3]),
        .S(S),
        .Y(Y[3])
    );

endmodule