/*`include "main_inciso2.v"
`include "tester.v"

module testbench;
    wire clk,d,q,qn;
    funcion_Final_Inciso2 ff1(F_Final,X,Y,Z,K,M);
    tester tst1(X,Y,Z,K,M,clk,S_OR);
  
endmodule*/

`include "AND_prueba.v"
module m1;
reg X,Y,Z;
wire S_1;
m1 Indtance0 (S_1, X, Y, Z);
initial begin
    X = 0; Y = 0; Z=0; 
 #1 X = 0; Y = 1; Z=1; 
 #1 X = 0; Y = 1; Z=0; 
 #1 X = 0; Y = 0; Z=0; 
  
end
initial begin
    $monitor ("%t |X = %d| Y = %d| Z = %d| S_1 = %d", $time, X, Y, Z, S_1);
    $dumpfile("dump.vcd");
    $dumpvars();
end
endmodule