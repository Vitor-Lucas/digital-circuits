module codificador_tb ();

reg [9:0]X;
wire [3:0]Y; 

//dump do sinal
initial begin
    $dumpfile("sim/codificador_tb.vcd"); 
    $dumpvars(0,codificador_tb);
end   

//instancia do codificador
codificador codificador1 (X,Y);

//tabela verdade
initial begin
    X=10'b0000000000; #10
    X=10'b0000000001; #10
    X=10'b0000000010; #10
    X=10'b0000000100; #10
    X=10'b0000001000; #10
    X=10'b0000010000; #10
    X=10'b0000100000; #10
    X=10'b0001000000; #10
    X=10'b0010000000; #10
    X=10'b0100000000; #10
    X=10'b1000000000; #10
    $finish;
end   
endmodule