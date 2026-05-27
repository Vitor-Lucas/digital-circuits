module decodificador(
    input D,
    input C,
    input B,
    input A,
    output [9:0]Y
);

assign Y[0] = D | C | B | A;
assign Y[1] = D | C | B | ~A;
assign Y[2] = D | C | ~B | A;
assign Y[3] = D | C | ~B | ~A;
assign Y[4] = D | ~C | B | A;
assign Y[5] = D | ~C | B | ~A;
assign Y[6] = D | ~C | ~B | A;
assign Y[7] = D | ~C | ~B | ~A;
assign Y[8] = ~D | C | B | A;
assign Y[9] = ~D | C | B | ~A;


endmodule