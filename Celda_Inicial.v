module Celda_I(
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
    X_si = noXi & noZi & L;
    Y_si = Xi | (Yi & Zi);
    Z_si = noL;
    I_p = (Xi & L) | (Yi & noZi & L) | (Zi & noL);
    end

endmodule    
/*



 SZI = (X_i&L) | (Y_i&~K_i&L) | (K_i&~L);
*/