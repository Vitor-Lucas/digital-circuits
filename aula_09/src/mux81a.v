module mux81a (
    input A,B,C,D,E,F,G,H,
    input [2:0] S,
    output Y
);

wire y02, y12;

mux41c m0 (
    .A(A),
    .B(B),
    .C(C),
    .D(D),
    .S(S[1:0]),
    .Y(y02)
);

mux41c m1 (
    .A(E),
    .B(F),
    .C(G),
    .D(H),
    .S(S[1:0]),
    .Y(y12)
);

mux21a m2 (
    .A(y02),
    .B(y12),
    .S(S[2]),
    .Y(Y)
);

endmodule