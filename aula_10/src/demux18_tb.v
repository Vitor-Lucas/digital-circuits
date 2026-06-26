module demux18_tb;
    reg Y;
    reg [2:0] S;
    wire A, B, C, D, E, F, G, H;

    //arquivo .vcd
    initial begin
        $dumpfile("sim/demux18_tb.vcd");
        $dumpvars(0, demux18_tb);
    end

    //instancia do modulo a ser testado
    demux18a dut (
        .Y(Y),
        .S(S),
        .A(A), .B(B), .C(C), .D(D),
        .E(E), .F(F), .G(G), .H(H)
    );

    //testes
    initial begin
        // Test case 1: Y = 1, S = 000
        Y = 1; S = 3'b000; #10;
        $display("Y=1, S=000 -> A=%b B=%b C=%b D=%b E=%b F=%b G=%b H=%b", A, B, C, D, E, F, G, H);

        // Test case 2: Y = 1, S = 001
        S = 3'b001; #10;
        $display("Y=1, S=001 -> A=%b B=%b C=%b D=%b E=%b F=%b G=%b H=%b", A, B, C, D, E, F, G, H);

        // Test case 3: Y = 1, S = 010
        S = 3'b010; #10;
        $display("Y=1, S=010 -> A=%b B=%b C=%b D=%b E=%b F=%b G=%b H=%b", A, B, C, D, E, F, G, H);

        // Test case 4: Y = 1, S = 011
        S = 3'b011; #10;
        $display("Y=1, S=011 -> A=%b B=%b C=%b D=%b E=%b F=%b G=%b H=%b", A, B, C, D, E, F, G, H);

        // Test case 5: Y = 1, S = 100
        S = 3'b100; #10;
        $display("Y=1, S=100 -> A=%b B=%b C=%b D=%b E=%b F=%b G=%b H=%b", A, B, C, D, E, F, G, H);

        // Test case 6: Y = 1, S = 101
        S = 3'b101; #10;
        $display("Y=1, S=101 -> A=%b B=%b C=%b D=%b E=%b F=%b G=%b H=%b", A, B, C, D, E, F, G, H);

        // Test case 7: Y = 1, S = 110
        S = 3'b110; #10;
        $display("Y=1, S=110 -> A=%b B=%b C=%b D=%b E=%b F=%b G=%b H=%b", A, B, C, D, E, F, G, H);

        // Test case 8: Y = 1, S = 111
        S = 3'b111; #10;
        $display("Y=1, S=111 -> A=%b B=%b C=%b D=%b E=%b F=%b G=%b H=%b", A, B, C, D, E, F, G, H);

        $finish;
    end
endmodule

