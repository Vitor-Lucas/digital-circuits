module atividade3_tb;
    reg [31:0] val_in;
    wire [31:0] val_out_32;
    wire [15:0] val_out_16;
    wire [7:0] val_out_8;
    wire [3:0] val_out_4;
    // Configuração do dump para visualização
    initial begin
        $dumpfile("sim/atividade3_tb.vcd");
        $dumpvars(0, atividade3_tb);
    end
    // Instancia o módulo atividade3
    atividade3 uut (
        .val_in(val_in),
        .val_out_32(val_out_32),
        .val_out_16(val_out_16),
        .val_out_8(val_out_8),
        .val_out_4(val_out_4)
    );
    // Bloco inicial para aplicar os testes
    initial begin
        $monitor("Time=%0d | val_in=%d | val_out_32=%d | val_out_16=%d | val_out_8=%d | val_out_4=%d",
                 $time, val_in, val_out_32, val_out_16, val_out_8, val_out_4);
        
        for (val_in = 0; val_in < 50; val_in = val_in + 1) begin
            #10;
        end
        
        $finish;
    end
endmodule