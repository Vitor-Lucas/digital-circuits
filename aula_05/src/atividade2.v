module atividade2 (
    input A,   //!Entrada A
    input B,   //!Entrada B
    input C,   //!Entrada C
    output fm, //!forma de soma de produtos, fm,
    output fM, //!forma de produtos de soma, fM e
    output fs  //!forma simplificada, fs 
);
    //fios internos
    wire not_A, not_B, not_C; //fios comuns
    wire Xm, Ym, Zm, Wm;  //fios para a forma fm
    wire XM, YM, ZM, WM;  //fios para a forma fM

    not not1(not_A, A);
    not not2(not_B, B);
    not not3(not_C, C);

    //Forma de soma de produtos, fm

    and and1(Xm, not_A, not_B, not_C);
    and and2(Ym, not_A, B, not_C);
    and and3(Zm, A, not_B, not_C);
    and and4(Wm, A, B, not_C);

    or or1(fm, Xm, Ym, Zm, Wm);

    //Forma de produtos de soma, fM

    or or2(XM, A, B, not_C);
    or or3(YM, A, not_B, not_C);
    or or4(ZM, not_A, B, not_C);
    or or5(WM, not_A, not_B, not_C);

    and and5(fM, XM, YM, ZM, WM);
    
    //Forma simplificada, fs

    not not4(fs, C);


endmodule