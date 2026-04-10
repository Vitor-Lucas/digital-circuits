module atividade1 (
    input [7:0] val_in,          //entrada de 8 bits
    output [7:0] val_out         //saída de 8 bits
);
    assign val_out = val_in + 1; //soma 1 na entrada
endmodule