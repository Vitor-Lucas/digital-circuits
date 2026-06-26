module mux24a_tb;
    reg [3:0] dado_a;
    reg [3:0] dado_b;
    reg S;
    wire [3:0] saida;
    

    // arquivo de saída para o gtkwave    
    initial begin
        $dumpfile("sim/mux24a_tb.vcd");
        $dumpvars(0, mux24a_tb);
    end

    //instancia do mux24a sob teste
    mux24a uut (
        .dado_a(dado_a),
        .dado_b(dado_b),
        .S(S),
        .Y(saida)
    );
    
    //testes aleatórios
    initial begin
        // Teste 1
        dado_a = 4'b0000; 
        dado_b = 4'b1111; 
        S = 0; 
        #10; 
        
        // Teste 2
        S = 1; 
        #10; 
        
        // Teste 3
        dado_a = 4'b1010; 
        dado_b = 4'b0101; 
        S = 0; 
        #10; 
        
        // Teste 4
        S = 1; 
        #10; 
        
        $finish;
    end
endmodule