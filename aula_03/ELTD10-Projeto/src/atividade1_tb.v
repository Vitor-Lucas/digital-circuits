`timescale 1ns / 100ps // Unidade da grade / resolulção temporal
module atividade1_tb();
    reg [7:0] val_in;            //registro para a entrada de 8 bits
    wire [7:0] val_out;          //fio para a saída de 8 bits

    initial begin
        $dumpfile("sim/atividade1_tb.vcd"); //gera arquivo de dump para visualização
        $dumpvars(0, atividade1_tb);    //define o escopo para o dump    
    end

    //instanciação do módulo atividade1
    atividade1 uut (
        .val_in(val_in),          //conecta val_in ao módulo
        .val_out(val_out)         //conecta val_out ao módulo
    );

    initial begin
        //testes com diferentes valores de entrada
        val_in = 8'b00000000;     //teste com 0
        #10;                      //espera 10 unidades de tempo

        val_in = 8'b00000001;     //teste com 1
        #10;

        val_in = 8'b00001111;     //teste com 15
        #10;

        val_in = 8'b11111111;     //teste com 255
        #10;

        $finish;                  //finaliza a simulação
    end
endmodule