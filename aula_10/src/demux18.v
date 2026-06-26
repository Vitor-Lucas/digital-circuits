module demux18a(
    input Y,
    input [2:0]S,
    output A, B, C, D, E, F, G, H
);

// fios internos
wire sa, sb;

// assign A = ~S[2] & ~S[1] & ~S[0] & Y;
// assign B = ~S[2] & ~S[1] & S[0] & Y;
// assign C = ~S[2] & S[1] & ~S[0] & Y;
// assign D = ~S[2] & S[1] & S[0] & Y;
// assign E = S[2] & ~S[1] & ~S[0] & Y;
// assign F = S[2] & ~S[1] & S[0] & Y;
// assign G = S[2] & S[1] & ~S[0] & Y;
// assign H = S[2] & S[1] & S[0] & Y;

// módulos
demux12a demux1 (
    .Y(Y),
    .S(S[2]),
    .A(sa),
    .B(sb)
);

demux14c demux2 (
    .Y(sa),
    .S(S[1:0]),
    .A(A),
    .B(B),
    .C(C),
    .D(D)
);

demux14c demux3 (
    .Y(sb),
    .S(S[1:0]),
    .A(E),
    .B(F),
    .C(G),
    .D(H)
);

endmodule