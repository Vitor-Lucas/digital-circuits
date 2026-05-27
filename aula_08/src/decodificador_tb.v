module decodificador_tb ();

reg D, C, B, A; //entradas
wire [9:0]Y; //saídas

//dump do sinal
initial begin
    $dumpfile("sim/decodificador_tb.vcd");
    $dumpvars(0,decodificador_tb);
end

//instancia do decodificador
decodificador decodificador1 (D, C, B, A, Y);

//tabela verdade
initial begin
    D=0; C=0; B=0; A=0; #10
    D=0; C=0; B=0; A=1; #10
    D=0; C=0; B=1; A=0; #10
    D=0; C=0; B=1; A=1; #10
    D=0; C=1; B=0; A=0; #10
    D=0; C=1; B=0; A=1; #10
    D=0; C=1; B=1; A=0; #10
    D=0; C=1; B=1; A=1; #10
    D=1; C=0; B=0; A=0; #10
    D=1; C=0; B=0; A=1; #10
    D=1; C=0; B=1; A=0; #10
    D=1; C=0; B=1; A=1; #10
    D=1; C=1; B=0; A=0; #10
    D=1; C=1; B=0; A=1; #10
    D=1; C=1; B=1; A=0; #10
    D=1; C=1; B=1; A=1; #10
    $finish; 
end
    
endmodule