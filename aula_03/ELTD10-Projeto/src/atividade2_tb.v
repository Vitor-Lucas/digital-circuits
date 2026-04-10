module atividade2_tb;
    reg [31:0] val_in;    //Valor de entrada de 32-bits
    wire [31:0] out_bin;  //Saída representada em binário
    wire [31:0] out_dec;  //Saída representada em decimal
    wire [31:0] out_oct;  //Saída representada em octal
    wire [31:0] out_hex;  //Saída representada em hexadecimal
    // Configuração do dump para visualização
    initial begin
        $dumpfile("sim/atividade2_tb.vcd"); //gera arquivo de dump para visualização
        $dumpvars(0, atividade2_tb);    //define o escopo para o dump    
    end
    // Instancia o módulo atividade2
    atividade2 uut (
        .val_in(val_in),
        .out_bin(out_bin),
        .out_dec(out_dec),
        .out_oct(out_oct),
        .out_hex(out_hex)
    );
    // Bloco inicial para aplicar os testes
    initial begin
        // Teste 1: Atribuir um valor específico e verificar as saídas
        val_in = 32'h12345678; // Valor de teste
        #10; // Aguarda um tempo para as saídas se estabilizarem
        // Exibe os resultados
        $display("Valor de Entrada: %h", val_in);
        $display("Saída Binária: %b", out_bin);
        $display("Saída Decimal: %d", out_dec);
        $display("Saída Octal: %o", out_oct);
        $display("Saída Hexadecimal: %h", out_hex);
        // Teste 2: Atribuir outro valor e verificar as saídas
        val_in = 32'hFFFFFFFF; // Valor de teste
        #10; // Aguarda um tempo para as saídas se estabilizarem
        // Exibe os resultados
        $display("Valor de Entrada: %h", val_in);
        $display("Saída Binária: %b", out_bin);
        $display("Saída Decimal: %d", out_dec);
        $display("Saída Octal: %o", out_oct);
        $display("Saída Hexadecimal: %h", out_hex);
        // Finaliza a simulação
        $finish;
    end
endmodule