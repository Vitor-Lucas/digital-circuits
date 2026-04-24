module inversor (   // Módulo do inversor
    input a,        // Entrada do inversor
    output b        // Saída do inversor
);
    assign b = ~a; // A saída é o complemento da entrada
endmodule

// module inversor (a, b);
//     input a;       // Entrada do inversor
//     output b;      // Saída do inversor
//     assign b = ~a; // A saída é o complemento da entrada
// endmodule