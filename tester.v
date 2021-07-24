module tester (X,Y,Z,K,M,clk,S_OR);
    input X,Y,Z,K,M; //Definimos las salidas del módulo flipflop como entradas al tester
    output clk,S_OR;
    reg clk,S_OR;

    //Un bloque always para la señal de reloj, con un periodo de 8 s
    always
    begin
        #4 clk=!clk;
    end

    //Se hace uso de un bloque initial para generar las señales de prueba
    initial
    begin
        clk=0;
        //Indicamos el archivo de resultados
        $dumpfile("resultados.vcd");
        $dumpvars;
        //Genramos la senal de prueba d
        S_OR=0; #9 S_OR=1; #1 S_OR=0; #1 S_OR=1; #2 S_OR=0; #1 S_OR=1; #12 S_OR=0;
        #1 S_OR=1; #2 S_OR=0; #1 S_OR=1; #1 S_OR=0; #1 S_OR=1; #1 S_OR=0; # 7 S_OR=1;
        #8 $finish; // Terminamos la simulación
    end
endmodule