`include "main_inciso2.v"
`include "tester.v"

module testbench;
    wire clk,d,q,qn;
    funcion_Final_Inciso2 ff1(F_Final,X,Y,Z,K,M);
    tester tst1(X,Y,Z,K,M,clk,S_OR);
  
endmodule