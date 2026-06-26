module mux81a_tb ();
    reg a, b, c, d, e, f, g, h;
    reg [2:0] sel;
    wire y;

    //gerar o arquio de waveform
    initial begin
        $dumpfile("sim/mux81a_tb.vcd"); // Nome do arquivo de waveform
        $dumpvars(0, mux81a_tb); // Dump de todas as variáveis do testbench
    end

    // Instanciação do módulo a ser testado
    mux81a uut (
        .A(a),
        .B(b),
        .C(c),
        .D(d),
        .E(e),
        .F(f),
        .G(g),
        .H(h),
        .S(sel),
        .Y(y)
    );

    //sinal h com período de 10 unidades de tempo
    always #10 h = ~h;

    //sinal g com período de 20 unidades de tempo
    always #20 g = ~g;

    //sinal f com período de 40 unidades de tempo
    always #40 f = ~f;

    //sinal e com período de 80 unidades de tempo
    always #80 e = ~e;

    //sinal d com período de 160 unidades de tempo
    always #160 d = ~d;

    //sinal c com período de 320 unidades de tempo
    always #320 c = ~c;

    //sinal b com período de 640 unidades de tempo
    always #640 b = ~b;

    //sinal a com período de 1280 unidades de tempo
    always #1280 a = ~a;

    //sinal sel com período de 2560 unidades de tempo
    always #2560 sel = sel+1;


    //inicialização dos sinais
    initial begin
        a = 0; b = 0; c = 0; d = 0; e = 0; f = 0; g = 0; h = 0; sel = 0;
        #20480 $finish; // Finaliza a simulação após 20480 unidades de tempo
    end 
endmodule
