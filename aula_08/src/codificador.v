module codificador(
    input [9:0]X,
    output [3:0]Y
);

or or0(Y[0], X[0], X[2], X[4], X[6], X[8]);
or or1(Y[1], X[0], X[3], X[4], X[7], X[8]);
or or2(Y[2], X[1], X[2], X[3], X[4], X[9]);
or or3(Y[3], X[5], X[6], X[7], X[8], X[9]);


endmodule