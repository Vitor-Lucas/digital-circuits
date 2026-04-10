module atividade2 (
    input [31:0] val_in,    //Valor de entrada de 32-bits
    output [31:0] out_bin,  //Saída representada em binário
    output [31:0] out_dec,  //Saída representada em decimal
    output [31:0] out_oct,  //Saída representada em octal
    output [31:0] out_hex   //Saída representada em hexadecimal
);
    assign out_bin = val_in; //Atribui o valor de entrada diretamente à saída binária
    assign out_dec = val_in; //Atribui o valor de entrada diretamente à saída decimal
    assign out_oct = val_in; //Atribui o valor de entrada diretamente à saída octal
    assign out_hex = val_in; //Atribui o valor de entrada diretamente à saída hexadecimal
endmodule