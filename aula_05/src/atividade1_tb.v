module atividade1_tb;
    reg A, B, C; // Entradas
    wire fm, fM, fs; // Saídas

    //dumpfile
    initial begin
        $dumpfile("sim/atividade1_tb.vcd");
        $dumpvars(0, atividade1_tb);
    end
    
    // Instancia o módulo a ser testado
    atividade1 uut (
        .A(A),
        .B(B),
        .C(C),
        .fm(fm),
        .fM(fM),
        .fs(fs)
    );

    initial begin
        // Teste 1: A=0, B=0, C=0
        A = 0; B = 0; C = 0;
        #10; // Espera 10 unidades de tempo

        // Teste 2: A=0, B=0, C=1
        A = 0; B = 0; C = 1;
        #10;

        // Teste 3: A=0, B=1, C=0
        A = 0; B = 1; C = 0;
        #10;

        // Teste 4: A=0, B=1, C=1
        A = 0; B = 1; C = 1;
        #10;

        // Teste 5: A=1, B=0, C=0
        A = 1; B = 0; C = 0;
        #10;

        // Teste 6: A=1, B=0, C=1
        A = 1; B = 0; C = 1;
        #10;

        // Teste 7: A=1, B=1, C=0
        A = 1; B = 1; C = 0;
        #10;

        // Teste 8: A=1, B=1, C=1
        A = 1; B = 1; C = 1;
        #10;

        $finish; // Finaliza a simulação
    end     
endmodule