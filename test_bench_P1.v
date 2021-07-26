`include "AND_inciso3.v"
`include "AND_inciso2.v"


module Test_bench_P1;
    reg X, Y,Z ,K, M; // Entradas
    wire WS_OR2, WS_OR3,WS_OR4,WS_OR5, Wout_7,Wout_8;  // Salidas
    integer i;

    AND_inciso2 Indtance0 ( WS_OR2,WS_OR4,WS_OR5, X, Y, Z,K,M);
    AND_inciso3 Indtance1 (WS_OR3,Wout_7,Wout_8, X, Y, Z,K,M);
    
   
    
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
    $monitor("A continuacion la tabla de verdad usada:");
    $monitor("X=%0b Y=%0b Z=%0b K=%0b M=%0b ", X,Y,Z,K,M);
    // Crear archivo .vcd para gtkwave
    $dumpfile("Prueba_P1.vcd");
    $dumpvars(0, Test_bench_P1);
end
endmodule


