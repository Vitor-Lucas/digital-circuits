module demux44a_tb ();
reg [3:0]Y;
reg [1:0]S;
wire [3:0]dados_a, dados_b, dados_c, dados_d;

// arquivo de formas de onda .vcd
initial begin
    $dumpfile("sim/demux44a_tb.vcd");
    $dumpvars(0, demux44a_tb); 
end

//modulo a ser testado
demux44a demux (
    .Y(Y),
    .S(S),
    .dados_a(dados_a),
    .dados_b(dados_b),
    .dados_c(dados_c),
    .dados_d(dados_d)
);

//testes
initial begin
    // teste 1
    Y = 4'b1111; S = 2'b00; #10;
    // teste 2
    Y = 4'b1111; S = 2'b01; #10;
    // teste 3
    Y = 4'b1111; S = 2'b10; #10;
    // teste 4
    Y = 4'b1111; S = 2'b11; #10;
    $finish;
end
endmodule