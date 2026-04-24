`timescale 1ns / 100ps // Unidade da grade / resolulção temporal
module inversor_tb;
    reg a;  // estimulo a ser aplicado na entrada do inversor
    wire b; // saída do inversor, que será monitorada para verificar se o comportamento é correto
    // Configuração para gerar o arquivo de forma de onda (VCD)
    initial begin
        $dumpfile("sim/inversor_tb.vcd");   //Salvar a forma de onda na pasta sim
        $dumpvars(0, inversor_tb);
    end
    // Instanciação do módulo inversor para ser testado
    inversor uut (
        .a(a),
        .b(b)
    );
    // Bloco inicial para aplicar os estímulos e verificar os resultados
    initial begin
        // caso 1
        a = 0; // Aplica o valor 0 na entrada do inversor
        #10;   // Aguarda 10 unidades de tempo para que a saída se estabilize
        if (b !== 1) $display("O teste 1 falhou"); // Verifica se a saída é 1, caso contrário, exibe mensagem de falha
        else $display("O teste 1 passou"); // Se a saída for correta, exibe mensagem de sucesso

        // caso 2
        a = 1;
        #10;
        if (b !== 0) $display("O teste 2 falhou");
        else $display("O teste 2 passou");

        $finish; // Finaliza a simulação
    end
endmodule