module demux14c (
    input Y,
    input [1:0] S,
    output A, B, C, D
);
    wire nS1Y, S1Y;
   demux12a demux1 (
        .Y(Y),
        .S(S[1]),
        .A(nS1Y),
        .B(S1Y)
    );
    demux12a demux2 (
        .Y(nS1Y),
        .S(S[0]),
        .A(A),
        .B(B)
    );
    demux12a demux3 (
        .Y(S1Y),
        .S(S[0]),
        .A(C),
        .B(D)
    );
endmodule
