module CT(
    output SXT,
    output SYT,
    output SKT,
    output SZT,
    input SXI,
    input SYI,
    input SKI,
    input SWI, // revisar si lleva este 
    input L
);



endmodule   

module Celda_TP(
    input clk, // entrada reloj
    input Xi,// Entrada X inicial de la celda incial 
    input Yi,// Entrada Y inicial de la celda incial 
    input Zi,// Entrada Z inicial de la celda incial 
    input L,  // Entrada palabra L
    output reg X_si,  // Salida X  inicial de la celda incial
    output reg Y_si, // Salida Y inicial de la celda incial
    output reg Z_si, // Salida Z inicial de la celda incial
    output reg I_p  // Salida paridad I_P = 1 si es impar  
);
    assign noXi = !Xi; // Se niega Xi
    assign noYi = !Yi; // Se niega Yi
    assign noZi = !Zi; // Se niega Zi
    assign noL = !L;   // Se niega Li
    
    always @(posedge clk) begin // se inicia en el flanco de reloj
    
    end

endmodule    
/*
assign SXT = (SXI~X & ~SWI & L) |(~SXI & ~SYI & L);
assign SYT = SXI | (SYI & SKI);
assign SKT = ~L;
assign SZT = (SXI& L) | (SKI & ~L ) | (SYI & ~SWI & L);
*/