module mux41c (
    input A, input B, input C, input D,
    input [1:0]S, output Y
);
    wire Y0, Y1;
    mux21a mux0 (
        .A(A),
        .B(B),
        .S(S[0]),
        .Y(Y0)
    );
    mux21a mux1 (
        .A(C),
        .B(D),
        .S(S[0]),
        .Y(Y1)
    );
    mux21a mux2 (
        .A(Y0),
        .B(Y1),
        .S(S[1]),
        .Y(Y)
    );
endmodule
