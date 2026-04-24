module atividade1 (
    input A,   //!Entrada A
    input B,   //!Entrada B
    input C,   //!Entrada C
    output fm, //!forma de soma de produtos, fm,
    output fM, //!forma de produtos de soma, fM e
    output fs  //!forma simplificada, fs 
);
    //Usar fluxo de dados (|, &, ~)
    //Forma de soma de produtos, fm 
    assign fm = (~A & ~B & ~C) | (~A & B & ~C) | (A & ~B & ~C) | (A & B & ~C);
    //Forma de produtos de soma, fM
    assign fM = (A | B | ~C) & (A | ~B | ~C) & (~A | B | ~C) & (~A | ~B | ~C);
    
    //Forma simplificada, fs
    assign fs = ~C;
    
endmodule