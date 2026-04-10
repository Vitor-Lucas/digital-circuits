module atividade3 (
     input [31:0] val_in,     //Entrada de 32-bits
    output [31:0] val_out_32, //Saida de 32-bits
    output [15:0] val_out_16, //Saída de 16-bits
     output [7:0] val_out_8,  //Saída de 8-bits
     output [3:0] val_out_4   //Saída de 4-bits
);
    assign val_out_32 = val_in; //Atribui o valor de entrada diretamente à saída de 32-bits
    assign val_out_16 = val_in[15:0]; //Atribui os 16 bits menos significativos à saída de 16-bits
    assign val_out_8 = val_in[7:0]; //Atribui os 8 bits menos significativos à saída de 8-bits
    assign val_out_4 = val_in[3:0]; //Atribui os 4 bits menos significativos à saída de 4-bits
endmodule