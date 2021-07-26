`include "AND_inciso3.v"
`include "AND_inciso2.v"



module Test_bench1;

//used upper case for signals to avoid confusion
    /*reg X, Y,Z ,K, M; // Entradas
    wire out_7,S_OR;  // Salidas
    integer i;*/
    m1 Indtance0 (out_7, X, Y, Z,K,M);
    m_1 Indtance1 (S_OR, X, Y, Z,K,M);
    //TABLA Indtance2 ();
       reg X, Y,Z ,K, M; // Entradas
    wire out_7,S_OR;  // Salidas
    integer i;
    
initial begin

    // Estímulo
    // Para iniciar en 00000
    X <= 0;Y <= 0;Z <= 0;K <= 0;M <= 0;

    for(i = 0; i < 32; i = i + 1) 
        begin
            {X,Y,Z,K,M} = i; 
            #10; 
        end   
end
   
initial begin
    // $monitor("A=%0b B=%0b C=%0b D=%0b E=%0b F=%0b Fmin=%0b", X,Y,Z,K,M, out_7);
    // Crear archivo .vcd para gtkwave
        $dumpfile("Prueba_P2.vcd");
        $dumpvars(0, Test_bench1);
end
endmodule


